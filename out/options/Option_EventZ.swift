
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			internal typealias Option_EventZ = Bindings.Option_EventZ

			extension Bindings {

				/// An enum which can either contain a crate::lightning::util::events::Event or not
				internal class Option_EventZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCOption_EventZ?

					public init(pointer: LDKCOption_EventZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKCOption_EventZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					public init(some: Event?) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter

						if let value = value {
							self.cType = COption_EventZ_some(some.cType!)
						} else {
							self.cType = COption_EventZ_none()
						}

						super.init(conflictAvoidingVariableName: 0)
					}

					
					/// Frees any resources associated with the crate::lightning::util::events::Event, if we are in the Some state
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = COption_EventZ_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a new COption_EventZ which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Option_EventZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKCOption_EventZ>) in
			COption_EventZ_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Option_EventZ(pointer: nativeCallResult)

						return returnValue
					}
		

					public func getValue() -> Event? {
						if self.cType!.tag == LDKCOption_EventZ_None {
							return nil
						}
						if self.cType!.tag == LDKCOption_EventZ_Some {
							return Event(pointer: self.cType!.some)
						}
						assert(false, "invalid option enum value")
						return nil
					}

					internal func dangle() -> Option_EventZ {
        				self.dangling = true
						return self
					}

					
					internal func danglingClone() -> Option_EventZ {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing Option_EventZ \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing Option_EventZ \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

			}
		