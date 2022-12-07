
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias BindingsType = Bindings.BindingsType

			extension Bindings {

				/// Defines a type identifier for sending messages over the wire.
				/// 
				/// Messages implementing this trait specify a type and must be [`Writeable`].
				open class BindingsType: NativeTraitWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKType?

					public init(pointer: LDKType) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKType, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					public init() {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter

						let thisArg = Bindings.instanceToPointer(instance: self)

						

						
						func typeIdLambda(this_arg: UnsafeRawPointer?) -> UInt16 {
							let instance: BindingsType = Bindings.pointerToInstance(pointer: this_arg!, sourceMarker: "BindingsType::typeIdLambda")

							// Swift callback variable prep
											

							// Swift callback call
							let swiftCallbackResult = instance.typeId()

							// cleanup
							

							// return value (do some wrapping)
							let returnValue = swiftCallbackResult

							return returnValue
						}
		
						func debugStrLambda(this_arg: UnsafeRawPointer?) -> LDKStr {
							let instance: BindingsType = Bindings.pointerToInstance(pointer: this_arg!, sourceMarker: "BindingsType::debugStrLambda")

							// Swift callback variable prep
											

							// Swift callback call
							let swiftCallbackResult = instance.debugStr()

							// cleanup
							

							// return value (do some wrapping)
							let returnValue = swiftCallbackResult.cType!

							return returnValue
						}
		
						func writeLambda(this_arg: UnsafeRawPointer?) -> LDKCVec_u8Z {
							let instance: BindingsType = Bindings.pointerToInstance(pointer: this_arg!, sourceMarker: "BindingsType::writeLambda")

							// Swift callback variable prep
											

							// Swift callback call
							let swiftCallbackResult = instance.write()

							// cleanup
							

							// return value (do some wrapping)
							let returnValue = swiftCallbackResult.cType!

							return returnValue
						}
		
						func freeLambda(this_arg: UnsafeMutableRawPointer?) -> Void {
							let instance: BindingsType = Bindings.pointerToInstance(pointer: this_arg!, sourceMarker: "BindingsType::freeLambda")

							// Swift callback variable prep
											

							// Swift callback call
							let swiftCallbackResult = instance.free()

							// cleanup
							

							// return value (do some wrapping)
							let returnValue = swiftCallbackResult

							return returnValue
						}
		

						self.cType = LDKType(							
							this_arg: thisArg,
							type_id: typeIdLambda,
							debug_str: debugStrLambda,
							write: writeLambda,
							cloned: nil,
							free: freeLambda
						)

						super.init(conflictAvoidingVariableName: 0)
					}

					
					/// Returns the type identifying the message payload.
					open func typeId() -> UInt16 {
						Bindings.print("Error: BindingsType::typeId MUST be overridden! Offending class: (String(describing: self)). Aborting.", severity: .ERROR)
						abort()
					}
		
					/// Return a human-readable "debug" string describing this object
					open func debugStr() -> String {
						Bindings.print("Error: BindingsType::debugStr MUST be overridden! Offending class: (String(describing: self)). Aborting.", severity: .ERROR)
						abort()
					}
		
					/// Serialize the object into a byte array
					open func write() -> [UInt8] {
						Bindings.print("Error: BindingsType::write MUST be overridden! Offending class: (String(describing: self)). Aborting.", severity: .ERROR)
						abort()
					}
		
					/// Frees any resources associated with this object given its this_arg pointer.
					/// Does not need to free the outer struct containing function pointers and may be NULL is no resources need to be freed.
					open func free() -> Void {
						Bindings.print("Error: BindingsType::free MUST be overridden! Offending class: (String(describing: self)). Aborting.", severity: .ERROR)
						abort()
					}
		

					
					/// Creates a copy of a Type
					internal func clone() -> BindingsType {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKType>) in
			Type_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = NativelyImplementedBindingsType(pointer: nativeCallResult, anchor: self)

						return returnValue
					}
		
					/// Calls the free function if one is set
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = Type_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		

					

					internal func dangle() -> BindingsType {
        				self.dangling = true
						return self
					}

					deinit {
						if !self.dangling {
							Bindings.print("Freeing BindingsType \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing BindingsType \(self.instanceNumber) due to dangle.")
						}
					}
				}

				public class NativelyImplementedBindingsType: BindingsType {
					
					/// Returns the type identifying the message payload.
					public func typeId() -> UInt16 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = self.cType!.type_id(self.cType!.this_arg)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Return a human-readable "debug" string describing this object
					public func debugStr() -> String {
						// native call variable prep
						

						// native method call
						let nativeCallResult = self.cType!.debug_str(self.cType!.this_arg)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Str(pointer: nativeCallResult)

						return returnValue
					}
		
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
		