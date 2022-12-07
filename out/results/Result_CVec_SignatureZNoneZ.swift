
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias Result_CVec_SignatureZNoneZ = Bindings.Result_CVec_SignatureZNoneZ

			extension Bindings {

				/// A CResult_CVec_SignatureZNoneZ represents the result of a fallible operation,
				/// containing a crate::c_types::derived::CVec_SignatureZ on success and a () on failure.
				/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
				public class Result_CVec_SignatureZNoneZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCResult_CVec_SignatureZNoneZ?

					public init(pointer: LDKCResult_CVec_SignatureZNoneZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKCResult_CVec_SignatureZNoneZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Creates a new CResult_CVec_SignatureZNoneZ in the success state.
					public init(o: [[UInt8]]) {
						// native call variable prep
						
						let oVector = Vec_SignatureZ(array: o)
				

						// native method call
						let nativeCallResult = CResult_CVec_SignatureZNoneZ_ok(oVector.cType!)

						// cleanup
						
						oVector.noOpRetain()
				

						// return value (do some wrapping)
						let returnValue = Result_CVec_SignatureZNoneZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a new CResult_CVec_SignatureZNoneZ in the error state.
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_CVec_SignatureZNoneZ_err()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_CVec_SignatureZNoneZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Frees any resources used by the CResult_CVec_SignatureZNoneZ.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_CVec_SignatureZNoneZ_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a new CResult_CVec_SignatureZNoneZ which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Result_CVec_SignatureZNoneZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKCResult_CVec_SignatureZNoneZ>) in
			CResult_CVec_SignatureZNoneZ_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_CVec_SignatureZNoneZ(pointer: nativeCallResult)

						return returnValue
					}
		

					public func isOk() -> Bool {
						return self.cType?.result_ok == true
					}

					public func getError() -> Void? {
						if self.cType?.result_ok == false {
							return self.cType!.contents.err.pointee
						}
						return nil
					}

					public func getValue() -> [[UInt8]]? {
						if self.cType?.result_ok == true {
							return Vec_SignatureZ(pointer: self.cType!.contents.result.pointee).getValue()
						}
						return nil
					}

					internal func dangle() -> Result_CVec_SignatureZNoneZ {
        				self.dangling = true
						return self
					}

										

				}

			}
		