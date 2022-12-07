
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias LightningError = Bindings.LightningError

			extension Bindings {
		

				/// An Err type for failure to process messages.
				public class LightningError: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKLightningError?

					public init(pointer: LDKLightningError) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKLightningError, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the LightningError, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = LightningError_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// A human-readable message describing the error
					public func getErr() -> String {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKLightningError>) in
			LightningError_get_err(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Str(pointer: nativeCallResult)

						return returnValue
					}
		
					/// A human-readable message describing the error
					public func setErr(val: String) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKLightningError>) in
			LightningError_set_err(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The action which should be taken against the offending peer.
					public func getAction() -> ErrorAction {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKLightningError>) in
			LightningError_get_action(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ErrorAction(pointer: nativeCallResult)

						return returnValue
					}
		
					/// The action which should be taken against the offending peer.
					public func setAction(val: ErrorAction) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKLightningError>) in
			LightningError_set_action(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Constructs a new LightningError given each field
					public init(errArg: String, actionArg: ErrorAction) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = LightningError_new(errArg.cType!, actionArg.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = LightningError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a copy of the LightningError
					internal func clone() -> LightningError {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKLightningError>) in
			LightningError_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = LightningError(pointer: nativeCallResult)

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
		

					internal func dangle() -> LightningError {
						self.dangling = true
						return self
					}

					
					internal func danglingClone() -> LightningError {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing LightningError \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing LightningError \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		