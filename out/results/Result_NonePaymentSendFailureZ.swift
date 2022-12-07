
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias Result_NonePaymentSendFailureZ = Bindings.Result_NonePaymentSendFailureZ

			extension Bindings {

				/// A CResult_NonePaymentSendFailureZ represents the result of a fallible operation,
				/// containing a () on success and a crate::lightning::ln::channelmanager::PaymentSendFailure on failure.
				/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
				public class Result_NonePaymentSendFailureZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCResult_NonePaymentSendFailureZ?

					public init(pointer: LDKCResult_NonePaymentSendFailureZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKCResult_NonePaymentSendFailureZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Creates a new CResult_NonePaymentSendFailureZ in the success state.
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_NonePaymentSendFailureZ_ok()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_NonePaymentSendFailureZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a new CResult_NonePaymentSendFailureZ in the error state.
					public init(e: PaymentSendFailure) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_NonePaymentSendFailureZ_err(e.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_NonePaymentSendFailureZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Frees any resources used by the CResult_NonePaymentSendFailureZ.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_NonePaymentSendFailureZ_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a new CResult_NonePaymentSendFailureZ which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Result_NonePaymentSendFailureZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKCResult_NonePaymentSendFailureZ>) in
			CResult_NonePaymentSendFailureZ_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_NonePaymentSendFailureZ(pointer: nativeCallResult)

						return returnValue
					}
		

					public func isOk() -> Bool {
						return self.cType?.result_ok == true
					}

					public func getError() -> PaymentSendFailure? {
						if self.cType?.result_ok == false {
							return PaymentSendFailure(pointer: self.cType!.contents.err.pointee)
						}
						return nil
					}

					public func getValue() -> Void? {
						if self.cType?.result_ok == true {
							return self.cType!.contents.result.pointee
						}
						return nil
					}

					internal func dangle() -> Result_NonePaymentSendFailureZ {
        				self.dangling = true
						return self
					}

										

				}

			}
		