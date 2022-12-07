
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias Result_UnsignedChannelAnnouncementDecodeErrorZ = Bindings.Result_UnsignedChannelAnnouncementDecodeErrorZ

			extension Bindings {

				/// A CResult_UnsignedChannelAnnouncementDecodeErrorZ represents the result of a fallible operation,
				/// containing a crate::lightning::ln::msgs::UnsignedChannelAnnouncement on success and a crate::lightning::ln::msgs::DecodeError on failure.
				/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
				public class Result_UnsignedChannelAnnouncementDecodeErrorZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCResult_UnsignedChannelAnnouncementDecodeErrorZ?

					public init(pointer: LDKCResult_UnsignedChannelAnnouncementDecodeErrorZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKCResult_UnsignedChannelAnnouncementDecodeErrorZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Creates a new CResult_UnsignedChannelAnnouncementDecodeErrorZ in the success state.
					public init(o: UnsignedChannelAnnouncement) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_UnsignedChannelAnnouncementDecodeErrorZ_ok(o.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_UnsignedChannelAnnouncementDecodeErrorZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a new CResult_UnsignedChannelAnnouncementDecodeErrorZ in the error state.
					public init(e: DecodeError) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_UnsignedChannelAnnouncementDecodeErrorZ_err(e.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_UnsignedChannelAnnouncementDecodeErrorZ(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Frees any resources used by the CResult_UnsignedChannelAnnouncementDecodeErrorZ.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CResult_UnsignedChannelAnnouncementDecodeErrorZ_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a new CResult_UnsignedChannelAnnouncementDecodeErrorZ which has the same data as `orig`
					/// but with all dynamically-allocated buffers duplicated in new buffers.
					internal func clone() -> Result_UnsignedChannelAnnouncementDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKCResult_UnsignedChannelAnnouncementDecodeErrorZ>) in
			CResult_UnsignedChannelAnnouncementDecodeErrorZ_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_UnsignedChannelAnnouncementDecodeErrorZ(pointer: nativeCallResult)

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

					public func getValue() -> UnsignedChannelAnnouncement? {
						if self.cType?.result_ok == true {
							return UnsignedChannelAnnouncement(pointer: self.cType!.contents.result.pointee)
						}
						return nil
					}

					internal func dangle() -> Result_UnsignedChannelAnnouncementDecodeErrorZ {
        				self.dangling = true
						return self
					}

										

				}

			}
		