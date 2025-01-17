
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			/// Onion messages can be sent and received to blinded routes, which serve to hide the identity of
			/// the recipient.
			public typealias BlindedRoute = Bindings.BlindedRoute

			extension Bindings {
		

				/// Onion messages can be sent and received to blinded routes, which serve to hide the identity of
				/// the recipient.
				public class BlindedRoute: NativeTypeWrapper {

					let initialCFreeability: Bool

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKBlindedRoute?

					internal init(cType: LDKBlindedRoute) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						self.initialCFreeability = self.cType!.is_owned
						super.init(conflictAvoidingVariableName: 0)
					}

					internal init(cType: LDKBlindedRoute, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						self.initialCFreeability = self.cType!.is_owned
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the BlindedRoute, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = BlindedRoute_free(self.cType!)

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = nativeCallResult
						

						return returnValue
					}
		
					/// Create a blinded route to be forwarded along `node_pks`. The last node pubkey in `node_pks`
					/// will be the destination node.
					/// 
					/// Errors if less than two hops are provided or if `node_pk`(s) are invalid.
					public class func new(nodePks: [[UInt8]], keysManager: KeysInterface) -> Result_BlindedRouteNoneZ {
						// native call variable prep
						
						let nodePksVector = Vec_PublicKeyZ(array: nodePks).dangle()
				

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: keysManager.activate().cType!) { (keysManagerPointer: UnsafePointer<LDKKeysInterface>) in
				BlindedRoute_new(nodePksVector.cType!, keysManagerPointer)
						}
				

						// cleanup
						
						// nodePksVector.noOpRetain()
				

						
						// return value (do some wrapping)
						let returnValue = Result_BlindedRouteNoneZ(cType: nativeCallResult)
						

						return returnValue
					}
		
					/// Serialize the BlindedRoute object into a byte array which can be read by BlindedRoute_read
					public func write() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKBlindedRoute>) in
				BlindedRoute_write(objPointer)
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = Vec_u8Z(cType: nativeCallResult, anchor: self).dangle(false).getValue()
						

						return returnValue
					}
		
					/// Read a BlindedRoute from a byte array, created by BlindedRoute_write
					public class func read(ser: [UInt8]) -> Result_BlindedRouteDecodeErrorZ {
						// native call variable prep
						
						let serPrimitiveWrapper = u8slice(value: ser)
				

						// native method call
						let nativeCallResult = BlindedRoute_read(serPrimitiveWrapper.cType!)

						// cleanup
						
						// for elided types, we need this
						serPrimitiveWrapper.noOpRetain()
				

						
						// return value (do some wrapping)
						let returnValue = Result_BlindedRouteDecodeErrorZ(cType: nativeCallResult)
						

						return returnValue
					}
		

					
					/// Indicates that this is the only struct which contains the same pointer.
					/// Rust functions which take ownership of an object provided via an argument require
					/// this to be true and invalidate the object pointed to by inner.
					public func isOwned() -> Bool {
						// return value (do some wrapping)
						let returnValue = self.cType!.is_owned

						return returnValue;
					}
		

					internal func dangle(_ shouldDangle: Bool = true) -> BlindedRoute {
						self.dangling = shouldDangle
						return self
					}

					
					internal func setCFreeability(freeable: Bool) -> BlindedRoute {
						self.cType!.is_owned = freeable
						return self
					}

					internal func dynamicDangle() -> BlindedRoute {
						self.dangling = self.cType!.is_owned
						return self
					}
			
					deinit {
						if Bindings.suspendFreedom {
							return
						}

						if !self.dangling {
							Bindings.print("Freeing BlindedRoute \(self.instanceNumber).")
							
							self.free()
						} else {
							Bindings.print("Not freeing BlindedRoute \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		