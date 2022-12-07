
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias Sign = Bindings.Sign

			extension Bindings {

				/// A cloneable signer.
				/// 
				/// Although we require signers to be cloneable, it may be useful for developers to be able to use
				/// signers in an un-sized way, for example as `dyn BaseSign`. Therefore we separate the Clone trait,
				/// which implies Sized, into this derived trait.
				open class Sign: NativeTraitWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKSign?

					public init(pointer: LDKSign) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKSign, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					public init(BaseSign: BaseSign) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter

						let thisArg = Bindings.instanceToPointer(instance: self)

						

						
						func writeLambda(this_arg: UnsafeRawPointer?) -> LDKCVec_u8Z {
							let instance: Sign = Bindings.pointerToInstance(pointer: this_arg!, sourceMarker: "Sign::writeLambda")

							// Swift callback variable prep
											

							// Swift callback call
							let swiftCallbackResult = instance.write()

							// cleanup
							

							// return value (do some wrapping)
							let returnValue = swiftCallbackResult.cType!

							return returnValue
						}
		
						func freeLambda(this_arg: UnsafeMutableRawPointer?) -> Void {
							let instance: Sign = Bindings.pointerToInstance(pointer: this_arg!, sourceMarker: "Sign::freeLambda")

							// Swift callback variable prep
											

							// Swift callback call
							let swiftCallbackResult = instance.free()

							// cleanup
							

							// return value (do some wrapping)
							let returnValue = swiftCallbackResult

							return returnValue
						}
		

						self.cType = LDKSign(							
							this_arg: thisArg,
							BaseSign: BaseSign.activate().cType!,
							write: writeLambda,
							cloned: nil,
							free: freeLambda
						)

						super.init(conflictAvoidingVariableName: 0)
					}

					
					/// Serialize the object into a byte array
					open func write() -> [UInt8] {
						Bindings.print("Error: Sign::write MUST be overridden! Offending class: (String(describing: self)). Aborting.", severity: .ERROR)
						abort()
					}
		
					/// Frees any resources associated with this object given its this_arg pointer.
					/// Does not need to free the outer struct containing function pointers and may be NULL is no resources need to be freed.
					open func free() -> Void {
						Bindings.print("Error: Sign::free MUST be overridden! Offending class: (String(describing: self)). Aborting.", severity: .ERROR)
						abort()
					}
		

					
					/// Creates a copy of a Sign
					internal func clone() -> Sign {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKSign>) in
			Sign_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = NativelyImplementedSign(pointer: nativeCallResult, anchor: self)

						return returnValue
					}
		
					/// Calls the free function if one is set
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = Sign_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		

					
					/// Implementation of BaseSign for this object.
					public func getBaseSign() -> BaseSign {
						// return value (do some wrapping)
						let returnValue = NativelyImplementedBaseSign(pointer: self.cType!.BaseSign, anchor: self)

						return returnValue;
					}
		

					internal func dangle() -> Sign {
        				self.dangling = true
						return self
					}

					deinit {
						if !self.dangling {
							Bindings.print("Freeing Sign \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing Sign \(self.instanceNumber) due to dangle.")
						}
					}
				}

				public class NativelyImplementedSign: Sign {
					
					/// Serialize the object into a byte array
					public func write() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = self.cType!.write(self.cType!.this_arg)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Vec_u8Z(pointer: nativeCallResult).getValue()

						return returnValue
					}
		
					/// Frees any resources associated with this object given its this_arg pointer.
					/// Does not need to free the outer struct containing function pointers and may be NULL is no resources need to be freed.
					public func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = self.cType!.free(self.cType!.this_arg)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
				}

			}
		