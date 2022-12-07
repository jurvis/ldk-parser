
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias Result_NodeAnnouncementDecodeErrorZ = Bindings.Result_NodeAnnouncementDecodeErrorZ

			extension Bindings {

				/// A CResult_NodeAnnouncementDecodeErrorZ represents the result of a fallible operation,
				/// containing a crate::lightning::ln::msgs::NodeAnnouncement on success and a crate::lightning::ln::msgs::DecodeError on failure.
				/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
				public class Result_NodeAnnouncementDecodeErrorZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCResult_NodeAnnouncementDecodeErrorZ?

					public init(pointer: LDKCResult_NodeAnnouncementDecodeErrorZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKCResult_NodeAnnouncementDecodeErrorZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Creates a new CResult_NodeAnnouncementDecodeErrorZ in the success state.
					public init(o: NodeAnnouncement) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_NodeAnnouncementDecodeErrorZ_ok(o.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_NodeAnnouncementDecodeErrorZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a new CResult_NodeAnnouncementDecodeErrorZ in the error state.
					public init(e: DecodeError) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_NodeAnnouncementDecodeErrorZ_err(e.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_NodeAnnouncementDecodeErrorZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Frees any resources used by the CResult_NodeAnnouncementDecodeErrorZ.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_NodeAnnouncementDecodeErrorZ_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a new CResult_NodeAnnouncementDecodeErrorZ which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Result_NodeAnnouncementDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKCResult_NodeAnnouncementDecodeErrorZ>) in
			CResult_NodeAnnouncementDecodeErrorZ_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_NodeAnnouncementDecodeErrorZ(pointer: nativeCallResult)

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

					public func getValue() -> NodeAnnouncement? {
						if self.cType?.result_ok == true {
							return NodeAnnouncement(pointer: self.cType!.contents.result.pointee)
						}
						return nil
					}

					internal func dangle() -> Result_NodeAnnouncementDecodeErrorZ {
        				self.dangling = true
						return self
					}

										

				}

			}
		