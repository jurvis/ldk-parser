
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias OnionMessageProvider = Bindings.OnionMessageProvider

			extension Bindings {

				/// A trait indicating an object may generate onion messages to send
				open class OnionMessageProvider: NativeTraitWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKOnionMessageProvider?

					public init(pointer: LDKOnionMessageProvider) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKOnionMessageProvider, anchor: NativeTypeWrapper) {
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

						

						
						func nextOnionMessageForPeerLambda(this_arg: UnsafeRawPointer?, peer_node_id: LDKPublicKey) -> LDKOnionMessage {
							let instance: OnionMessageProvider = Bindings.pointerToInstance(pointer: this_arg!, sourceMarker: "OnionMessageProvider::nextOnionMessageForPeerLambda")

							// Swift callback variable prep
											

							// Swift callback call
							let swiftCallbackResult = instance.nextOnionMessageForPeer(peerNodeId: PublicKey(pointer: peer_node_id).getValue())

							// cleanup
							

							// return value (do some wrapping)
							let returnValue = swiftCallbackResult.cType!

							return returnValue
						}
		
						func freeLambda(this_arg: UnsafeMutableRawPointer?) -> Void {
							let instance: OnionMessageProvider = Bindings.pointerToInstance(pointer: this_arg!, sourceMarker: "OnionMessageProvider::freeLambda")

							// Swift callback variable prep
											

							// Swift callback call
							let swiftCallbackResult = instance.free()

							// cleanup
							

							// return value (do some wrapping)
							let returnValue = swiftCallbackResult

							return returnValue
						}
		

						self.cType = LDKOnionMessageProvider(							
							this_arg: thisArg,
							next_onion_message_for_peer: nextOnionMessageForPeerLambda,
							free: freeLambda
						)

						super.init(conflictAvoidingVariableName: 0)
					}

					
					/// Gets the next pending onion message for the peer with the given node id.
					/// 
					/// Note that the return value (or a relevant inner pointer) may be NULL or all-0s to represent None
					open func nextOnionMessageForPeer(peerNodeId: [UInt8]) -> OnionMessage {
						Bindings.print("Error: OnionMessageProvider::nextOnionMessageForPeer MUST be overridden! Offending class: (String(describing: self)). Aborting.", severity: .ERROR)
						abort()
					}
		
					/// Frees any resources associated with this object given its this_arg pointer.
					/// Does not need to free the outer struct containing function pointers and may be NULL is no resources need to be freed.
					open func free() -> Void {
						Bindings.print("Error: OnionMessageProvider::free MUST be overridden! Offending class: (String(describing: self)). Aborting.", severity: .ERROR)
						abort()
					}
		

					
					/// Calls the free function if one is set
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = OnionMessageProvider_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		

					

					internal func dangle() -> OnionMessageProvider {
        				self.dangling = true
						return self
					}

					deinit {
						if !self.dangling {
							Bindings.print("Freeing OnionMessageProvider \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing OnionMessageProvider \(self.instanceNumber) due to dangle.")
						}
					}
				}

				public class NativelyImplementedOnionMessageProvider: OnionMessageProvider {
					
					/// Gets the next pending onion message for the peer with the given node id.
					/// 
					/// Note that the return value (or a relevant inner pointer) may be NULL or all-0s to represent None
					public func nextOnionMessageForPeer(peerNodeId: [UInt8]) -> OnionMessage {
						// native call variable prep
						

						// native method call
						let nativeCallResult = self.cType!.next_onion_message_for_peer(self.cType!.this_arg, peerNodeId.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = OnionMessage(pointer: nativeCallResult)

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
		