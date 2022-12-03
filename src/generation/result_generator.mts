import {RustResult, RustType} from '../rust_types.mjs';
import {BaseTypeGenerator} from './base_type_generator.mjs';

export default class ResultGenerator extends BaseTypeGenerator<RustResult> {

	generateFileContents(type: RustResult): string {
		const swiftTypeName = this.swiftTypeName(type);

		let fieldAccessors = '';
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
				
				${this.renderDocComment(type.documentation, 4)}
				public class ${swiftTypeName}: NativeTypeWrapper {
			
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt
			
					internal var cType: ${type.name}?
					
					public init(pointer: ${type.name}){
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cOpaqueStruct = pointer
						super.init(conflictAvoidingVariableName: 0)
					}
			
					public init(pointer: ${type.name}, anchor: NativeTypeWrapper){
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cOpaqueStruct = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
					
					${generatedMethods}
					
					${fieldAccessors}
					
					internal func dangle() -> ${swiftTypeName} {
        				self.dangling = true
						return self
					}

					deinit {
						if !self.dangling {
							Bindings.print("Freeing ${swiftTypeName} \\(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing ${swiftTypeName} \\(self.instanceNumber) due to dangle.")
						}
					}
					
				}
				
			}
		`;
	}

	outputDirectorySuffix(): string {
		return 'results';
	}

}