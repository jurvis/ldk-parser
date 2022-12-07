
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias UpdateFulfillHTLC = Bindings.UpdateFulfillHTLC

			extension Bindings {
		

				/// An update_fulfill_htlc message to be sent or received from a peer
				public class UpdateFulfillHTLC: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKUpdateFulfillHTLC?

					public init(pointer: LDKUpdateFulfillHTLC) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKUpdateFulfillHTLC, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the UpdateFulfillHTLC, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = UpdateFulfillHTLC_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The channel ID
					public func setChannelId(val: [UInt8]) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUpdateFulfillHTLC>) in
			UpdateFulfillHTLC_set_channel_id(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The HTLC ID
					public func getHtlcId() -> UInt64 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUpdateFulfillHTLC>) in
			UpdateFulfillHTLC_get_htlc_id(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The HTLC ID
					public func setHtlcId(val: UInt64) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUpdateFulfillHTLC>) in
			UpdateFulfillHTLC_set_htlc_id(thisPtrPointer, val)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The pre-image of the payment hash, allowing HTLC redemption
					public func setPaymentPreimage(val: [UInt8]) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUpdateFulfillHTLC>) in
			UpdateFulfillHTLC_set_payment_preimage(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Constructs a new UpdateFulfillHTLC given each field
					public init(channelIdArg: [UInt8], htlcIdArg: UInt64, paymentPreimageArg: [UInt8]) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = UpdateFulfillHTLC_new(channelIdArg.cType!, htlcIdArg, paymentPreimageArg.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = UpdateFulfillHTLC(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a copy of the UpdateFulfillHTLC
					internal func clone() -> UpdateFulfillHTLC {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKUpdateFulfillHTLC>) in
			UpdateFulfillHTLC_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = UpdateFulfillHTLC(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Checks if two UpdateFulfillHTLCs contain equal inner contents.
					/// This ignores pointers and is_owned flags and looks at the values in fields.
					/// Two objects with NULL inner values will be considered "equal" here.
					public func eq() -> Bool {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (aPointer: UnsafePointer<LDKUpdateFulfillHTLC>) in
			
						withUnsafePointer(to: self.cType!) { (bPointer: UnsafePointer<LDKUpdateFulfillHTLC>) in
			UpdateFulfillHTLC_eq(aPointer, bPointer)
						}
			
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Serialize the UpdateFulfillHTLC object into a byte array which can be read by UpdateFulfillHTLC_read
					public func write() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKUpdateFulfillHTLC>) in
			UpdateFulfillHTLC_write(objPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Vec_u8Z(pointer: nativeCallResult).getValue()

						return returnValue
					}
		
					/// Read a UpdateFulfillHTLC from a byte array, created by UpdateFulfillHTLC_write
					public class func read(ser: [UInt8]) -> Result_UpdateFulfillHTLCDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = UpdateFulfillHTLC_read(ser.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_UpdateFulfillHTLCDecodeErrorZ(pointer: nativeCallResult)

						return returnValue
					}
		

					
					/// Indicates that this is the only struct which contains the same pointer.
					/// Rust functions which take ownership of an object provided via an argument require
					/// this to be true and invalidate the object pointed to by inner.
					public func isOwned() -> Bool {
						// return value (do some wrapping)
						let returnValue = self.cType!.is_owned

						return returnValue;
					}
		

					internal func dangle() -> UpdateFulfillHTLC {
						self.dangling = true
						return self
					}

					
					internal func danglingClone() -> UpdateFulfillHTLC {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing UpdateFulfillHTLC \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing UpdateFulfillHTLC \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		