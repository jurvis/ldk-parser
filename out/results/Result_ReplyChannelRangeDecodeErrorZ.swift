
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias Result_ReplyChannelRangeDecodeErrorZ = Bindings.Result_ReplyChannelRangeDecodeErrorZ

			extension Bindings {

				/// A CResult_ReplyChannelRangeDecodeErrorZ represents the result of a fallible operation,
				/// containing a crate::lightning::ln::msgs::ReplyChannelRange on success and a crate::lightning::ln::msgs::DecodeError on failure.
				/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
				public class Result_ReplyChannelRangeDecodeErrorZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCResult_ReplyChannelRangeDecodeErrorZ?

					public init(pointer: LDKCResult_ReplyChannelRangeDecodeErrorZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKCResult_ReplyChannelRangeDecodeErrorZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Creates a new CResult_ReplyChannelRangeDecodeErrorZ in the success state.
					public init(o: ReplyChannelRange) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_ReplyChannelRangeDecodeErrorZ_ok(o.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_ReplyChannelRangeDecodeErrorZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a new CResult_ReplyChannelRangeDecodeErrorZ in the error state.
					public init(e: DecodeError) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_ReplyChannelRangeDecodeErrorZ_err(e.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_ReplyChannelRangeDecodeErrorZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Frees any resources used by the CResult_ReplyChannelRangeDecodeErrorZ.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_ReplyChannelRangeDecodeErrorZ_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a new CResult_ReplyChannelRangeDecodeErrorZ which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Result_ReplyChannelRangeDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKCResult_ReplyChannelRangeDecodeErrorZ>) in
			CResult_ReplyChannelRangeDecodeErrorZ_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_ReplyChannelRangeDecodeErrorZ(pointer: nativeCallResult)

						return returnValue
					}
		

					public func isOk() -> Bool {
						return self.cType?.result_ok == true
					}

					public func getError() -> DecodeError? {
						if self.cType?.result_ok == false {
							return DecodeError(pointer: self.cType!.contents.err.pointee)
						}
						return nil
					}

					public func getValue() -> ReplyChannelRange? {
						if self.cType?.result_ok == true {
							return ReplyChannelRange(pointer: self.cType!.contents.result.pointee)
						}
						return nil
					}

					internal func dangle() -> Result_ReplyChannelRangeDecodeErrorZ {
        				self.dangling = true
						return self
					}

										

				}

			}
		