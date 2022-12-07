
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias OutPoint = Bindings.OutPoint

			extension Bindings {
		

				/// A reference to a transaction output.
				/// 
				/// Differs from bitcoin::blockdata::transaction::OutPoint as the index is a u16 instead of u32
				/// due to LN's restrictions on index values. Should reduce (possibly) unsafe conversions this way.
				public class OutPoint: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKOutPoint?

					public init(pointer: LDKOutPoint) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKOutPoint, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the OutPoint, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = OutPoint_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The referenced transaction's txid.
					public func setTxid(val: [UInt8]) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKOutPoint>) in
			OutPoint_set_txid(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The index of the referenced output in its transaction's vout.
					public func getIndex() -> UInt16 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKOutPoint>) in
			OutPoint_get_index(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The index of the referenced output in its transaction's vout.
					public func setIndex(val: UInt16) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKOutPoint>) in
			OutPoint_set_index(thisPtrPointer, val)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Constructs a new OutPoint given each field
					public init(txidArg: [UInt8], indexArg: UInt16) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = OutPoint_new(txidArg.cType!, indexArg)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = OutPoint(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a copy of the OutPoint
					internal func clone() -> OutPoint {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKOutPoint>) in
			OutPoint_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = OutPoint(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Checks if two OutPoints contain equal inner contents.
					/// This ignores pointers and is_owned flags and looks at the values in fields.
					/// Two objects with NULL inner values will be considered "equal" here.
					public func eq() -> Bool {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (aPointer: UnsafePointer<LDKOutPoint>) in
			
						withUnsafePointer(to: self.cType!) { (bPointer: UnsafePointer<LDKOutPoint>) in
			OutPoint_eq(aPointer, bPointer)
						}
			
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Checks if two OutPoints contain equal inner contents.
					public func hash() -> UInt64 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (oPointer: UnsafePointer<LDKOutPoint>) in
			OutPoint_hash(oPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Convert an `OutPoint` to a lightning channel id.
					public func toChannelId() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisArgPointer: UnsafePointer<LDKOutPoint>) in
			OutPoint_to_channel_id(thisArgPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ThirtyTwoBytes(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Serialize the OutPoint object into a byte array which can be read by OutPoint_read
					public func write() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKOutPoint>) in
			OutPoint_write(objPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Vec_u8Z(pointer: nativeCallResult).getValue()

						return returnValue
					}
		
					/// Read a OutPoint from a byte array, created by OutPoint_write
					public class func read(ser: [UInt8]) -> Result_OutPointDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = OutPoint_read(ser.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_OutPointDecodeErrorZ(pointer: nativeCallResult)

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
		

					internal func dangle() -> OutPoint {
						self.dangling = true
						return self
					}

					
					internal func danglingClone() -> OutPoint {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing OutPoint \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing OutPoint \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		