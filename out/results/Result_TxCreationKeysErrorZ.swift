
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			/// A CResult_TxCreationKeysErrorZ represents the result of a fallible operation,
			/// containing a crate::lightning::ln::chan_utils::TxCreationKeys on success and a crate::c_types::Secp256k1Error on failure.
			/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
			public typealias Result_TxCreationKeysErrorZ = Bindings.Result_TxCreationKeysErrorZ

			extension Bindings {

				/// A CResult_TxCreationKeysErrorZ represents the result of a fallible operation,
				/// containing a crate::lightning::ln::chan_utils::TxCreationKeys on success and a crate::c_types::Secp256k1Error on failure.
				/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
				public class Result_TxCreationKeysErrorZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCResult_TxCreationKeysErrorZ?

					internal init(cType: LDKCResult_TxCreationKeysErrorZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						
						super.init(conflictAvoidingVariableName: 0)
					}

					internal init(cType: LDKCResult_TxCreationKeysErrorZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Creates a new CResult_TxCreationKeysErrorZ in the success state.
					public class func initWithOk(o: TxCreationKeys) -> Result_TxCreationKeysErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_TxCreationKeysErrorZ_ok(o.dynamicallyDangledClone().cType!)

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = Result_TxCreationKeysErrorZ(cType: nativeCallResult)
						

						return returnValue
					}
		
					/// Creates a new CResult_TxCreationKeysErrorZ in the error state.
					public class func initWithErr(e: Secp256k1Error) -> Result_TxCreationKeysErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_TxCreationKeysErrorZ_err(e.getCValue())

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = Result_TxCreationKeysErrorZ(cType: nativeCallResult)
						

						return returnValue
					}
		
					/// Frees any resources used by the CResult_TxCreationKeysErrorZ.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_TxCreationKeysErrorZ_free(self.cType!)

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = nativeCallResult
						

						return returnValue
					}
		
					/// Creates a new CResult_TxCreationKeysErrorZ which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Result_TxCreationKeysErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKCResult_TxCreationKeysErrorZ>) in
				CResult_TxCreationKeysErrorZ_clone(origPointer)
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = Result_TxCreationKeysErrorZ(cType: nativeCallResult)
						

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
					

					
					public func getValue() -> TxCreationKeys? {
						if self.cType?.result_ok == true {
							return TxCreationKeys(cType: self.cType!.contents.result.pointee, anchor: self)
						}
						return nil
					}
					

					internal func dangle(_ shouldDangle: Bool = true) -> Result_TxCreationKeysErrorZ {
        				self.dangling = shouldDangle
						return self
					}

					
					internal func danglingClone() -> Result_TxCreationKeysErrorZ {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if Bindings.suspendFreedom {
							return
						}

						if !self.dangling {
							Bindings.print("Freeing Result_TxCreationKeysErrorZ \(self.instanceNumber).")
							
							self.free()
						} else {
							Bindings.print("Not freeing Result_TxCreationKeysErrorZ \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

			}
		