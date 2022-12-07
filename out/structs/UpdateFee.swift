
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias UpdateFee = Bindings.UpdateFee

			extension Bindings {
		

				/// An update_fee message to be sent or received from a peer
				public class UpdateFee: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKUpdateFee?

					public init(pointer: LDKUpdateFee) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKUpdateFee, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the UpdateFee, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = UpdateFee_free(self.cType!)

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
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUpdateFee>) in
			UpdateFee_set_channel_id(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Fee rate per 1000-weight of the transaction
					public func getFeeratePerKw() -> UInt32 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUpdateFee>) in
			UpdateFee_get_feerate_per_kw(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Fee rate per 1000-weight of the transaction
					public func setFeeratePerKw(val: UInt32) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUpdateFee>) in
			UpdateFee_set_feerate_per_kw(thisPtrPointer, val)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Constructs a new UpdateFee given each field
					public init(channelIdArg: [UInt8], feeratePerKwArg: UInt32) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = UpdateFee_new(channelIdArg.cType!, feeratePerKwArg)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = UpdateFee(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a copy of the UpdateFee
					internal func clone() -> UpdateFee {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKUpdateFee>) in
			UpdateFee_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = UpdateFee(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Checks if two UpdateFees contain equal inner contents.
					/// This ignores pointers and is_owned flags and looks at the values in fields.
					/// Two objects with NULL inner values will be considered "equal" here.
					public func eq() -> Bool {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (aPointer: UnsafePointer<LDKUpdateFee>) in
			
						withUnsafePointer(to: self.cType!) { (bPointer: UnsafePointer<LDKUpdateFee>) in
			UpdateFee_eq(aPointer, bPointer)
						}
			
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Serialize the UpdateFee object into a byte array which can be read by UpdateFee_read
					public func write() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKUpdateFee>) in
			UpdateFee_write(objPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Vec_u8Z(pointer: nativeCallResult).getValue()

						return returnValue
					}
		
					/// Read a UpdateFee from a byte array, created by UpdateFee_write
					public class func read(ser: [UInt8]) -> Result_UpdateFeeDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = UpdateFee_read(ser.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_UpdateFeeDecodeErrorZ(pointer: nativeCallResult)

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
		

					internal func dangle() -> UpdateFee {
						self.dangling = true
						return self
					}

					
					internal func danglingClone() -> UpdateFee {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing UpdateFee \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing UpdateFee \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		