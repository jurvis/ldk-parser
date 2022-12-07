
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias Result_TxCreationKeysDecodeErrorZ = Bindings.Result_TxCreationKeysDecodeErrorZ

			extension Bindings {

				/// A CResult_TxCreationKeysDecodeErrorZ represents the result of a fallible operation,
				/// containing a crate::lightning::ln::chan_utils::TxCreationKeys on success and a crate::lightning::ln::msgs::DecodeError on failure.
				/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
				public class Result_TxCreationKeysDecodeErrorZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCResult_TxCreationKeysDecodeErrorZ?

					public init(cType: LDKCResult_TxCreationKeysDecodeErrorZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(cType: LDKCResult_TxCreationKeysDecodeErrorZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Creates a new CResult_TxCreationKeysDecodeErrorZ in the success state.
					public init(o: TxCreationKeys) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_TxCreationKeysDecodeErrorZ_ok(o.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_TxCreationKeysDecodeErrorZ(cType: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a new CResult_TxCreationKeysDecodeErrorZ in the error state.
					public init(e: DecodeError) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_TxCreationKeysDecodeErrorZ_err(e.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_TxCreationKeysDecodeErrorZ(cType: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Frees any resources used by the CResult_TxCreationKeysDecodeErrorZ.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_TxCreationKeysDecodeErrorZ_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a new CResult_TxCreationKeysDecodeErrorZ which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Result_TxCreationKeysDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKCResult_TxCreationKeysDecodeErrorZ>) in
			CResult_TxCreationKeysDecodeErrorZ_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_TxCreationKeysDecodeErrorZ(cType: nativeCallResult)

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

					public func getValue() -> TxCreationKeys? {
						if self.cType?.result_ok == true {
							return TxCreationKeys(cType: self.cType!.contents.result.pointee)
						}
						return nil
					}

					internal func dangle() -> Result_TxCreationKeysDecodeErrorZ {
        				self.dangling = true
						return self
					}

										

				}

			}
		