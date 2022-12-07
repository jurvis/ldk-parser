
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias Result_NodeFeaturesDecodeErrorZ = Bindings.Result_NodeFeaturesDecodeErrorZ

			extension Bindings {

				/// A CResult_NodeFeaturesDecodeErrorZ represents the result of a fallible operation,
				/// containing a crate::lightning::ln::features::NodeFeatures on success and a crate::lightning::ln::msgs::DecodeError on failure.
				/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
				public class Result_NodeFeaturesDecodeErrorZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCResult_NodeFeaturesDecodeErrorZ?

					public init(cType: LDKCResult_NodeFeaturesDecodeErrorZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(cType: LDKCResult_NodeFeaturesDecodeErrorZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Creates a new CResult_NodeFeaturesDecodeErrorZ in the success state.
					public init(o: NodeFeatures) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_NodeFeaturesDecodeErrorZ_ok(o.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_NodeFeaturesDecodeErrorZ(cType: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a new CResult_NodeFeaturesDecodeErrorZ in the error state.
					public init(e: DecodeError) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_NodeFeaturesDecodeErrorZ_err(e.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_NodeFeaturesDecodeErrorZ(cType: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Frees any resources used by the CResult_NodeFeaturesDecodeErrorZ.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_NodeFeaturesDecodeErrorZ_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a new CResult_NodeFeaturesDecodeErrorZ which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Result_NodeFeaturesDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKCResult_NodeFeaturesDecodeErrorZ>) in
			CResult_NodeFeaturesDecodeErrorZ_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_NodeFeaturesDecodeErrorZ(cType: nativeCallResult)

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

					public func getValue() -> NodeFeatures? {
						if self.cType?.result_ok == true {
							return NodeFeatures(cType: self.cType!.contents.result.pointee)
						}
						return nil
					}

					internal func dangle() -> Result_NodeFeaturesDecodeErrorZ {
        				self.dangling = true
						return self
					}

										

				}

			}
		