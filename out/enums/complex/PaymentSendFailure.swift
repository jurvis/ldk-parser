
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias PaymentSendFailure = Bindings.PaymentSendFailure

			extension Bindings {

				/// If a payment fails to send, it can be in one of several states. This enum is returned as the
				/// Err() type describing which state the payment is in, see the description of individual enum
				/// states for more.
				public class PaymentSendFailure: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKPaymentSendFailure?

					public init(pointer: LDKPaymentSendFailure) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKPaymentSendFailure, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					public enum PaymentSendFailureType {
						
						/// A parameter which was passed to send_payment was invalid, preventing us from attempting to
						/// send the payment at all. No channel state has been changed or messages sent to peers, and
						/// once you've changed the parameter at error, you can freely retry the payment in full.
						case ParameterError
			
						/// A parameter in a single path which was passed to send_payment was invalid, preventing us
						/// from attempting to send the payment at all. No channel state has been changed or messages
						/// sent to peers, and once you've changed the parameter at error, you can freely retry the
						/// payment in full.
						/// 
						/// The results here are ordered the same as the paths in the route object which was passed to
						/// send_payment.
						case PathParameterError
			
						/// All paths which were attempted failed to send, with no channel state change taking place.
						/// You can freely retry the payment in full (though you probably want to do so over different
						/// paths than the ones selected).
						case AllFailedRetrySafe
			
						/// Some paths which were attempted failed to send, though possibly not all. At least some
						/// paths have irrevocably committed to the HTLC and retrying the payment in full would result
						/// in over-/re-payment.
						/// 
						/// The results here are ordered the same as the paths in the route object which was passed to
						/// send_payment, and any `Err`s which are not [`APIError::MonitorUpdateInProgress`] can be
						/// safely retried via [`ChannelManager::retry_payment`].
						/// 
						/// Any entries which contain `Err(APIError::MonitorUpdateInprogress)` or `Ok(())` MUST NOT be
						/// retried as they will result in over-/re-payment. These HTLCs all either successfully sent
						/// (in the case of `Ok(())`) or will send once a [`MonitorEvent::Completed`] is provided for
						/// the next-hop channel with the latest update_id.
						case PartialFailure
			
					}

					public func getValueType() -> PaymentSendFailureType? {
						switch self.cType!.tag {
							case LDKPaymentSendFailure_ParameterError:
								return .ParameterError
			
							case LDKPaymentSendFailure_PathParameterError:
								return .PathParameterError
			
							case LDKPaymentSendFailure_AllFailedRetrySafe:
								return .AllFailedRetrySafe
			
							case LDKPaymentSendFailure_PartialFailure:
								return .PartialFailure
			
							default:
								return nil
						}
		
					}

					
					/// Frees any resources used by the PaymentSendFailure
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = PaymentSendFailure_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a copy of the PaymentSendFailure
					internal func clone() -> PaymentSendFailure {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKPaymentSendFailure>) in
			PaymentSendFailure_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = PaymentSendFailure(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Utility method to constructs a new ParameterError-variant PaymentSendFailure
					public init(a: APIError) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = PaymentSendFailure_parameter_error(a.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = PaymentSendFailure(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new PathParameterError-variant PaymentSendFailure
					public init(a: [Result_NoneAPIErrorZ]) {
						// native call variable prep
						
						let aVector = Vec_CResult_NoneAPIErrorZZ(array: a)
				

						// native method call
						let nativeCallResult = PaymentSendFailure_path_parameter_error(aVector.cType!)

						// cleanup
						
						aVector.noOpRetain()
				

						// return value (do some wrapping)
						let returnValue = PaymentSendFailure(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new AllFailedRetrySafe-variant PaymentSendFailure
					public init(a: [APIError]) {
						// native call variable prep
						
						let aVector = Vec_APIErrorZ(array: a)
				

						// native method call
						let nativeCallResult = PaymentSendFailure_all_failed_retry_safe(aVector.cType!)

						// cleanup
						
						aVector.noOpRetain()
				

						// return value (do some wrapping)
						let returnValue = PaymentSendFailure(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new PartialFailure-variant PaymentSendFailure
					public init(results: [Result_NoneAPIErrorZ], failedPathsRetry: RouteParameters, paymentId: [UInt8]) {
						// native call variable prep
						
						let resultsVector = Vec_CResult_NoneAPIErrorZZ(array: results)
				

						// native method call
						let nativeCallResult = PaymentSendFailure_partial_failure(resultsVector.cType!, failedPathsRetry.cType!, paymentId.cType!)

						// cleanup
						
						resultsVector.noOpRetain()
				

						// return value (do some wrapping)
						let returnValue = PaymentSendFailure(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		

					
					public func getValueAsParameterError() -> APIError? {
						if self.cType?.tag != LDKPaymentSendFailure_ParameterError {
							return nil
						}

						return APIError(pointer: self.cType!.parameter_error)
					}
			
					public func getValueAsPathParameterError() -> [Result_NoneAPIErrorZ]? {
						if self.cType?.tag != LDKPaymentSendFailure_PathParameterError {
							return nil
						}

						return Vec_CResult_NoneAPIErrorZZ(pointer: self.cType!.path_parameter_error).getValue()
					}
			
					public func getValueAsAllFailedRetrySafe() -> [APIError]? {
						if self.cType?.tag != LDKPaymentSendFailure_AllFailedRetrySafe {
							return nil
						}

						return Vec_APIErrorZ(pointer: self.cType!.all_failed_retry_safe).getValue()
					}
			
					public func getValueAsPartialFailure() -> PartialFailure? {
						if self.cType?.tag != LDKPaymentSendFailure_PartialFailure {
							return nil
						}

						return PaymentSendFailure_LDKPartialFailure_Body(pointer: self.cType!.partial_failure)
					}
			

					internal func dangle() -> PaymentSendFailure {
        				self.dangling = true
						return self
					}

					
					internal func danglingClone() -> PaymentSendFailure {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing PaymentSendFailure \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing PaymentSendFailure \(self.instanceNumber) due to dangle.")
						}
					}
			

					
					

					/// 
					public class PartialFailure: NativeTypeWrapper {

						
						private static var instanceCounter: UInt = 0
						internal let instanceNumber: UInt

						internal var cType: LDKPaymentSendFailure_LDKPartialFailure_Body?

						fileprivate init(pointer: LDKPaymentSendFailure_LDKPartialFailure_Body) {
							Self.instanceCounter += 1
							self.instanceNumber = Self.instanceCounter
							self.cType = pointer
							super.init(conflictAvoidingVariableName: 0)
						}

						fileprivate init(pointer: LDKPaymentSendFailure_LDKPartialFailure_Body, anchor: NativeTypeWrapper) {
							Self.instanceCounter += 1
							self.instanceNumber = Self.instanceCounter
							self.cType = pointer
							super.init(conflictAvoidingVariableName: 0)
							self.dangling = true
							try! self.addAnchor(anchor: anchor)
						}
		

						

						
						/// The errors themselves, in the same order as the route hops.
						public func getResults() -> [Result_NoneAPIErrorZ] {
							// return value (do some wrapping)
							let returnValue = Vec_CResult_NoneAPIErrorZZ(pointer: self.cType!.results).getValue()

							return returnValue;
						}
		
						/// If some paths failed without irrevocably committing to the new HTLC(s), this will
						/// contain a [`RouteParameters`] object which can be used to calculate a new route that
						/// will pay all remaining unpaid balance.
						/// 
						/// Note that this (or a relevant inner pointer) may be NULL or all-0s to represent None
						public func getFailedPathsRetry() -> RouteParameters {
							// return value (do some wrapping)
							let returnValue = RouteParameters(pointer: self.cType!.failed_paths_retry)

							return returnValue;
						}
		
						/// The payment id for the payment, which is now at least partially pending.
						public func getPaymentId() -> [UInt8] {
							// return value (do some wrapping)
							let returnValue = ThirtyTwoBytes(pointer: self.cType!.payment_id)

							return returnValue;
						}
		

						internal func dangle() -> PartialFailure {
							self.dangling = true
							return self
						}

											

					}

					
		

				}

			}
		