
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias ChannelReestablish = Bindings.ChannelReestablish

			extension Bindings {
		

				/// A channel_reestablish message to be sent or received from a peer
				public class ChannelReestablish: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKChannelReestablish?

					public init(pointer: LDKChannelReestablish) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKChannelReestablish, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the ChannelReestablish, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ChannelReestablish_free(self.cType!)

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
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKChannelReestablish>) in
			ChannelReestablish_set_channel_id(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The next commitment number for the sender
					public func getNextLocalCommitmentNumber() -> UInt64 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKChannelReestablish>) in
			ChannelReestablish_get_next_local_commitment_number(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The next commitment number for the sender
					public func setNextLocalCommitmentNumber(val: UInt64) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKChannelReestablish>) in
			ChannelReestablish_set_next_local_commitment_number(thisPtrPointer, val)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The next commitment number for the recipient
					public func getNextRemoteCommitmentNumber() -> UInt64 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKChannelReestablish>) in
			ChannelReestablish_get_next_remote_commitment_number(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The next commitment number for the recipient
					public func setNextRemoteCommitmentNumber(val: UInt64) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKChannelReestablish>) in
			ChannelReestablish_set_next_remote_commitment_number(thisPtrPointer, val)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a copy of the ChannelReestablish
					internal func clone() -> ChannelReestablish {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKChannelReestablish>) in
			ChannelReestablish_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ChannelReestablish(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Checks if two ChannelReestablishs contain equal inner contents.
					/// This ignores pointers and is_owned flags and looks at the values in fields.
					/// Two objects with NULL inner values will be considered "equal" here.
					public func eq() -> Bool {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (aPointer: UnsafePointer<LDKChannelReestablish>) in
			
						withUnsafePointer(to: self.cType!) { (bPointer: UnsafePointer<LDKChannelReestablish>) in
			ChannelReestablish_eq(aPointer, bPointer)
						}
			
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Serialize the ChannelReestablish object into a byte array which can be read by ChannelReestablish_read
					public func write() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKChannelReestablish>) in
			ChannelReestablish_write(objPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Vec_u8Z(pointer: nativeCallResult).getValue()

						return returnValue
					}
		
					/// Read a ChannelReestablish from a byte array, created by ChannelReestablish_write
					public class func read(ser: [UInt8]) -> Result_ChannelReestablishDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ChannelReestablish_read(ser.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_ChannelReestablishDecodeErrorZ(pointer: nativeCallResult)

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
		

					internal func dangle() -> ChannelReestablish {
						self.dangling = true
						return self
					}

					
					internal func danglingClone() -> ChannelReestablish {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing ChannelReestablish \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing ChannelReestablish \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		