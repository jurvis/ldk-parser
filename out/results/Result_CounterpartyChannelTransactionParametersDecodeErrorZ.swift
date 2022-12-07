
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias Result_CounterpartyChannelTransactionParametersDecodeErrorZ = Bindings.Result_CounterpartyChannelTransactionParametersDecodeErrorZ

			extension Bindings {

				/// A CResult_CounterpartyChannelTransactionParametersDecodeErrorZ represents the result of a fallible operation,
				/// containing a crate::lightning::ln::chan_utils::CounterpartyChannelTransactionParameters on success and a crate::lightning::ln::msgs::DecodeError on failure.
				/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
				public class Result_CounterpartyChannelTransactionParametersDecodeErrorZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCResult_CounterpartyChannelTransactionParametersDecodeErrorZ?

					public init(pointer: LDKCResult_CounterpartyChannelTransactionParametersDecodeErrorZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKCResult_CounterpartyChannelTransactionParametersDecodeErrorZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Creates a new CResult_CounterpartyChannelTransactionParametersDecodeErrorZ in the success state.
					public init(o: CounterpartyChannelTransactionParameters) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_CounterpartyChannelTransactionParametersDecodeErrorZ_ok(o.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_CounterpartyChannelTransactionParametersDecodeErrorZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a new CResult_CounterpartyChannelTransactionParametersDecodeErrorZ in the error state.
					public init(e: DecodeError) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_CounterpartyChannelTransactionParametersDecodeErrorZ_err(e.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_CounterpartyChannelTransactionParametersDecodeErrorZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Frees any resources used by the CResult_CounterpartyChannelTransactionParametersDecodeErrorZ.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_CounterpartyChannelTransactionParametersDecodeErrorZ_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a new CResult_CounterpartyChannelTransactionParametersDecodeErrorZ which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Result_CounterpartyChannelTransactionParametersDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKCResult_CounterpartyChannelTransactionParametersDecodeErrorZ>) in
			CResult_CounterpartyChannelTransactionParametersDecodeErrorZ_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_CounterpartyChannelTransactionParametersDecodeErrorZ(pointer: nativeCallResult)

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

					public func getValue() -> CounterpartyChannelTransactionParameters? {
						if self.cType?.result_ok == true {
							return CounterpartyChannelTransactionParameters(pointer: self.cType!.contents.result.pointee)
						}
						return nil
					}

					internal func dangle() -> Result_CounterpartyChannelTransactionParametersDecodeErrorZ {
        				self.dangling = true
						return self
					}

										

				}

			}
		