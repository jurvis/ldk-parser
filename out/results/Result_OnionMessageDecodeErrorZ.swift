
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias Result_OnionMessageDecodeErrorZ = Bindings.Result_OnionMessageDecodeErrorZ

			extension Bindings {

				/// A CResult_OnionMessageDecodeErrorZ represents the result of a fallible operation,
				/// containing a crate::lightning::ln::msgs::OnionMessage on success and a crate::lightning::ln::msgs::DecodeError on failure.
				/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
				public class Result_OnionMessageDecodeErrorZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCResult_OnionMessageDecodeErrorZ?

					public init(cType: LDKCResult_OnionMessageDecodeErrorZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(cType: LDKCResult_OnionMessageDecodeErrorZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Creates a new CResult_OnionMessageDecodeErrorZ in the success state.
					public init(o: OnionMessage) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_OnionMessageDecodeErrorZ_ok(o.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_OnionMessageDecodeErrorZ(cType: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a new CResult_OnionMessageDecodeErrorZ in the error state.
					public init(e: DecodeError) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_OnionMessageDecodeErrorZ_err(e.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_OnionMessageDecodeErrorZ(cType: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Frees any resources used by the CResult_OnionMessageDecodeErrorZ.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_OnionMessageDecodeErrorZ_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a new CResult_OnionMessageDecodeErrorZ which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Result_OnionMessageDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKCResult_OnionMessageDecodeErrorZ>) in
			CResult_OnionMessageDecodeErrorZ_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_OnionMessageDecodeErrorZ(cType: nativeCallResult)

						return returnValue
					}
		

					public func isOk() -> Bool {
						return self.cType?.result_ok == true
					}

					public func getError() -> DecodeError? {
						if self.cType?.result_ok == false {
							return DecodeError(cType: self.cType!.contents.err.pointee)
						}
						return nil
					}

					public func getValue() -> OnionMessage? {
						if self.cType?.result_ok == true {
							return OnionMessage(cType: self.cType!.contents.result.pointee)
						}
						return nil
					}

					internal func dangle() -> Result_OnionMessageDecodeErrorZ {
        				self.dangling = true
						return self
					}

										

				}

			}
		