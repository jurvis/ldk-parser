import {RustStruct, RustType} from '../rust_types.mjs';
import {BaseTypeGenerator} from './base_type_generator.mjs';

export default class StructGenerator extends BaseTypeGenerator {

	generateFileContents(type: RustType): string {
		if (!(type instanceof RustStruct)) {
			throw new Error('type must be a RustStruct!');
		}

		const swiftTypeName = this.swiftTypeName(type);

		let generatedMethods = '';

		for (const currentMethod of type.methods) {
			generatedMethods += this.generateMethod(currentMethod, type);
		}

		return `
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif
			
			public typealias ${swiftTypeName} = Bindings.${swiftTypeName}
			
			extension Bindings {
			
				public class ${swiftTypeName}: NativeTypeWrapper {
			
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt
			
					internal var cType: ${type.name}?
					
					${generatedMethods}
					
					internal func dangle() -> ${swiftTypeName} {
        				self.dangling = true
						return self
					}

					deinit {
						if !self.dangling {
							Bindings.print("Freeing ${swiftTypeName} \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing ${swiftTypeName} \(self.instanceNumber) due to dangle.")
						}
					}
					
				}
				
			}
		`;
	}

	outputDirectorySuffix(): string {
		return 'structs';
	}

}