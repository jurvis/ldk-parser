
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias DelayedPaymentOutputDescriptor = Bindings.DelayedPaymentOutputDescriptor

			extension Bindings {
		

				/// Information about a spendable output to a P2WSH script. See
				/// SpendableOutputDescriptor::DelayedPaymentOutput for more details on how to spend this.
				public class DelayedPaymentOutputDescriptor: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKDelayedPaymentOutputDescriptor?

					public init(pointer: LDKDelayedPaymentOutputDescriptor) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKDelayedPaymentOutputDescriptor, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the DelayedPaymentOutputDescriptor, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = DelayedPaymentOutputDescriptor_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The outpoint which is spendable
					public func getOutpoint() -> OutPoint {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_get_outpoint(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = OutPoint(pointer: nativeCallResult)

						return returnValue
					}
		
					/// The outpoint which is spendable
					public func setOutpoint(val: OutPoint) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_set_outpoint(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Per commitment point to derive delayed_payment_key by key holder
					public func getPerCommitmentPoint() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_get_per_commitment_point(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = PublicKey(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Per commitment point to derive delayed_payment_key by key holder
					public func setPerCommitmentPoint(val: [UInt8]) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_set_per_commitment_point(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The nSequence value which must be set in the spending input to satisfy the OP_CSV in
					/// the witness_script.
					public func getToSelfDelay() -> UInt16 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_get_to_self_delay(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The nSequence value which must be set in the spending input to satisfy the OP_CSV in
					/// the witness_script.
					public func setToSelfDelay(val: UInt16) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_set_to_self_delay(thisPtrPointer, val)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The output which is referenced by the given outpoint
					/// 
					/// Returns a copy of the field.
					public func getOutput() -> TxOut {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_get_output(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = TxOut(pointer: nativeCallResult)

						return returnValue
					}
		
					/// The output which is referenced by the given outpoint
					public func setOutput(val: TxOut) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_set_output(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The revocation point specific to the commitment transaction which was broadcast. Used to
					/// derive the witnessScript for this output.
					public func getRevocationPubkey() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_get_revocation_pubkey(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = PublicKey(pointer: nativeCallResult)

						return returnValue
					}
		
					/// The revocation point specific to the commitment transaction which was broadcast. Used to
					/// derive the witnessScript for this output.
					public func setRevocationPubkey(val: [UInt8]) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_set_revocation_pubkey(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Arbitrary identification information returned by a call to
					/// `Sign::channel_keys_id()`. This may be useful in re-deriving keys used in
					/// the channel to spend the output.
					public func setChannelKeysId(val: [UInt8]) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_set_channel_keys_id(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The value of the channel which this output originated from, possibly indirectly.
					public func getChannelValueSatoshis() -> UInt64 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_get_channel_value_satoshis(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The value of the channel which this output originated from, possibly indirectly.
					public func setChannelValueSatoshis(val: UInt64) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_set_channel_value_satoshis(thisPtrPointer, val)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Constructs a new DelayedPaymentOutputDescriptor given each field
					public init(outpointArg: OutPoint, perCommitmentPointArg: [UInt8], toSelfDelayArg: UInt16, outputArg: TxOut, revocationPubkeyArg: [UInt8], channelKeysIdArg: [UInt8], channelValueSatoshisArg: UInt64) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = DelayedPaymentOutputDescriptor_new(outpointArg.cType!, perCommitmentPointArg.cType!, toSelfDelayArg, outputArg.cType!, revocationPubkeyArg.cType!, channelKeysIdArg.cType!, channelValueSatoshisArg)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = DelayedPaymentOutputDescriptor(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a copy of the DelayedPaymentOutputDescriptor
					internal func clone() -> DelayedPaymentOutputDescriptor {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = DelayedPaymentOutputDescriptor(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Checks if two DelayedPaymentOutputDescriptors contain equal inner contents.
					/// This ignores pointers and is_owned flags and looks at the values in fields.
					/// Two objects with NULL inner values will be considered "equal" here.
					public func eq() -> Bool {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (aPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			
						withUnsafePointer(to: self.cType!) { (bPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_eq(aPointer, bPointer)
						}
			
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Serialize the DelayedPaymentOutputDescriptor object into a byte array which can be read by DelayedPaymentOutputDescriptor_read
					public func write() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
			DelayedPaymentOutputDescriptor_write(objPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Vec_u8Z(pointer: nativeCallResult).getValue()

						return returnValue
					}
		
					/// Read a DelayedPaymentOutputDescriptor from a byte array, created by DelayedPaymentOutputDescriptor_write
					public class func read(ser: [UInt8]) -> Result_DelayedPaymentOutputDescriptorDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = DelayedPaymentOutputDescriptor_read(ser.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_DelayedPaymentOutputDescriptorDecodeErrorZ(pointer: nativeCallResult)

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
		

					internal func dangle() -> DelayedPaymentOutputDescriptor {
						self.dangling = true
						return self
					}

					
					internal func danglingClone() -> DelayedPaymentOutputDescriptor {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing DelayedPaymentOutputDescriptor \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing DelayedPaymentOutputDescriptor \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		