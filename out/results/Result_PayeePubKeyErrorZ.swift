
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias Result_PayeePubKeyErrorZ = Bindings.Result_PayeePubKeyErrorZ

			extension Bindings {

				/// A CResult_PayeePubKeyErrorZ represents the result of a fallible operation,
				/// containing a crate::lightning_invoice::PayeePubKey on success and a crate::c_types::Secp256k1Error on failure.
				/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
				public class Result_PayeePubKeyErrorZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCResult_PayeePubKeyErrorZ?

					public init(pointer: LDKCResult_PayeePubKeyErrorZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKCResult_PayeePubKeyErrorZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Creates a new CResult_PayeePubKeyErrorZ in the success state.
					public init(o: PayeePubKey) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_PayeePubKeyErrorZ_ok(o.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_PayeePubKeyErrorZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a new CResult_PayeePubKeyErrorZ in the error state.
					public init(e: Secp256k1Error) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_PayeePubKeyErrorZ_err(e.getCValue())

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_PayeePubKeyErrorZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Frees any resources used by the CResult_PayeePubKeyErrorZ.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_PayeePubKeyErrorZ_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a new CResult_PayeePubKeyErrorZ which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Result_PayeePubKeyErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKCResult_PayeePubKeyErrorZ>) in
			CResult_PayeePubKeyErrorZ_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_PayeePubKeyErrorZ(pointer: nativeCallResult)

						return returnValue
					}
		

					public func isOk() -> Bool {
						return self.cType?.result_ok == true
					}

					public func getError() -> Secp256k1Error? {
						if self.cType?.result_ok == false {
							return Secp256k1Error(value: self.cType!.contents.err.pointee)
						}
						return nil
					}

					public func getValue() -> PayeePubKey? {
						if self.cType?.result_ok == true {
							return PayeePubKey(pointer: self.cType!.contents.result.pointee)
						}
						return nil
					}

					internal func dangle() -> Result_PayeePubKeyErrorZ {
        				self.dangling = true
						return self
					}

										

				}

			}
		