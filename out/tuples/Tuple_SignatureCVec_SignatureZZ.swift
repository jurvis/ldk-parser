
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			internal typealias Tuple_SignatureCVec_SignatureZZ = Bindings.Tuple_SignatureCVec_SignatureZZ

			extension Bindings {

				/// A tuple of 2 elements. See the individual fields for the types contained.
				internal class Tuple_SignatureCVec_SignatureZZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKC2Tuple_SignatureCVec_SignatureZZ?

					public init(pointer: LDKC2Tuple_SignatureCVec_SignatureZZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKC2Tuple_SignatureCVec_SignatureZZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					internal convenience init(tuple: ([UInt8], [[UInt8]])) {
						self.init(a: tuple.0, b: tuple.1)
					}

					
					/// Creates a new tuple which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Tuple_SignatureCVec_SignatureZZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKC2Tuple_SignatureCVec_SignatureZZ>) in
			C2Tuple_SignatureCVec_SignatureZZ_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Tuple_SignatureCVec_SignatureZZ(pointer: nativeCallResult).getValue()

						return returnValue
					}
		
					/// Creates a new C2Tuple_SignatureCVec_SignatureZZ from the contained elements.
					public init(a: [UInt8], b: [[UInt8]]) {
						// native call variable prep
						
						let bVector = Vec_SignatureZ(array: b)
				

						// native method call
						let nativeCallResult = C2Tuple_SignatureCVec_SignatureZZ_new(a.cType!, bVector.cType!)

						// cleanup
						
						bVector.noOpRetain()
				

						// return value (do some wrapping)
						let returnValue = Tuple_SignatureCVec_SignatureZZ(pointer: nativeCallResult).getValue()

						self.cType = nativeCallResult
					}
		
					/// Frees any resources used by the C2Tuple_SignatureCVec_SignatureZZ.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = C2Tuple_SignatureCVec_SignatureZZ_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		

					public func getValue() -> ([UInt8], [[UInt8]]) {
						return (self.getA(), self.getB())
					}

					
					/// The element at position 0
					public func getA() -> [UInt8] {
						// return value (do some wrapping)
						let returnValue = Signature(pointer: self.cType!.a)

						return returnValue;
					}
		
					/// The element at position 1
					public func getB() -> [[UInt8]] {
						// return value (do some wrapping)
						let returnValue = Vec_SignatureZ(pointer: self.cType!.b).getValue()

						return returnValue;
					}
		

					internal func dangle() -> Tuple_SignatureCVec_SignatureZZ {
						self.dangling = true
						return self
					}

					
					internal func danglingClone() -> Tuple_SignatureCVec_SignatureZZ {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing Tuple_SignatureCVec_SignatureZZ \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing Tuple_SignatureCVec_SignatureZZ \(self.instanceNumber) due to dangle.")
						}
					}
			

				}
			}
		