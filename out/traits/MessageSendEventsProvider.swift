
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			/// A trait indicating an object may generate message send events
			public typealias MessageSendEventsProvider = Bindings.MessageSendEventsProvider

			extension Bindings {

				/// A trait indicating an object may generate message send events
				open class MessageSendEventsProvider: NativeTraitWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKMessageSendEventsProvider?

					public init(cType: LDKMessageSendEventsProvider) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(cType: LDKMessageSendEventsProvider, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					public init() {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						super.init(conflictAvoidingVariableName: 0)

						let thisArg = Bindings.instanceToPointer(instance: self)

						

						
						func getAndClearPendingMsgEventsLambda(this_arg: UnsafeRawPointer?) -> LDKCVec_MessageSendEventZ {
							let instance: MessageSendEventsProvider = Bindings.pointerToInstance(pointer: this_arg!, sourceMarker: "MessageSendEventsProvider::getAndClearPendingMsgEventsLambda")

							// Swift callback variable prep
											

							// Swift callback call
							let swiftCallbackResult = instance.getAndClearPendingMsgEvents()

							// cleanup
							

							// return value (do some wrapping)
							let returnValue = Vec_MessageSendEventZ(array: swiftCallbackResult).dangle().cType!

							return returnValue
						}
		
						func freeLambda(this_arg: UnsafeMutableRawPointer?) -> Void {
							let instance: MessageSendEventsProvider = Bindings.pointerToInstance(pointer: this_arg!, sourceMarker: "MessageSendEventsProvider::freeLambda")

							// Swift callback variable prep
											

							// Swift callback call
							let swiftCallbackResult = instance.free()

							// cleanup
							

							// return value (do some wrapping)
							let returnValue = swiftCallbackResult

							return returnValue
						}
		

						self.cType = LDKMessageSendEventsProvider(							
							this_arg: thisArg,
							get_and_clear_pending_msg_events: getAndClearPendingMsgEventsLambda,
							free: freeLambda
						)
					}

					
					/// Gets the list of pending events which were generated by previous actions, clearing the list
					/// in the process.
					open func getAndClearPendingMsgEvents() -> [MessageSendEvent] {
						
						Bindings.print("Error: MessageSendEventsProvider::getAndClearPendingMsgEvents MUST be overridden! Offending class: \(String(describing: self)). Aborting.", severity: .ERROR)
						abort()
					}
		
					/// Frees any resources associated with this object given its this_arg pointer.
					/// Does not need to free the outer struct containing function pointers and may be NULL is no resources need to be freed.
					internal func free() -> Void {
						
				// TODO: figure out something smarter
				return; // the semicolon is necessary because Swift is whitespace-agnostic
			
						Bindings.print("Error: MessageSendEventsProvider::free MUST be overridden! Offending class: \(String(describing: self)). Aborting.", severity: .ERROR)
						abort()
					}
		

					

					

					internal func dangle() -> MessageSendEventsProvider {
        				self.dangling = true
						return self
					}

					deinit {
						if Bindings.suspendFreedom {
							return
						}

						if !self.dangling {
							Bindings.print("Freeing MessageSendEventsProvider \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing MessageSendEventsProvider \(self.instanceNumber) due to dangle.")
						}
					}
				}

				internal class NativelyImplementedMessageSendEventsProvider: MessageSendEventsProvider {
					
					/// Gets the list of pending events which were generated by previous actions, clearing the list
					/// in the process.
					public override func getAndClearPendingMsgEvents() -> [MessageSendEvent] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = self.cType!.get_and_clear_pending_msg_events(self.cType!.this_arg)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Vec_MessageSendEventZ(cType: nativeCallResult).getValue()

						return returnValue
					}
		
					/// Frees any resources associated with this object given its this_arg pointer.
					/// Does not need to free the outer struct containing function pointers and may be NULL is no resources need to be freed.
					public override func free() {
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
		