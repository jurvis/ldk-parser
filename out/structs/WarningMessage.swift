
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias WarningMessage = Bindings.WarningMessage

			extension Bindings {
		

				/// A warning message to be sent or received from a peer
				public class WarningMessage: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKWarningMessage?

					public init(pointer: LDKWarningMessage) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKWarningMessage, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the WarningMessage, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = WarningMessage_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The channel ID involved in the warning.
					/// 
					/// All-0s indicates a warning unrelated to a specific channel.
					public func setChannelId(val: [UInt8]) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKWarningMessage>) in
			WarningMessage_set_channel_id(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// A possibly human-readable warning description.
					/// The string should be sanitized before it is used (e.g. emitted to logs or printed to
					/// stdout). Otherwise, a well crafted error message may trigger a security vulnerability in
					/// the terminal emulator or the logging subsystem.
					public func getData() -> String {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKWarningMessage>) in
			WarningMessage_get_data(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Str(pointer: nativeCallResult)

						return returnValue
					}
		
					/// A possibly human-readable warning description.
					/// The string should be sanitized before it is used (e.g. emitted to logs or printed to
					/// stdout). Otherwise, a well crafted error message may trigger a security vulnerability in
					/// the terminal emulator or the logging subsystem.
					public func setData(val: String) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKWarningMessage>) in
			WarningMessage_set_data(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Constructs a new WarningMessage given each field
					public init(channelIdArg: [UInt8], dataArg: String) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = WarningMessage_new(channelIdArg.cType!, dataArg.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = WarningMessage(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a copy of the WarningMessage
					internal func clone() -> WarningMessage {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKWarningMessage>) in
			WarningMessage_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = WarningMessage(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Checks if two WarningMessages contain equal inner contents.
					/// This ignores pointers and is_owned flags and looks at the values in fields.
					/// Two objects with NULL inner values will be considered "equal" here.
					public func eq() -> Bool {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (aPointer: UnsafePointer<LDKWarningMessage>) in
			
						withUnsafePointer(to: self.cType!) { (bPointer: UnsafePointer<LDKWarningMessage>) in
			WarningMessage_eq(aPointer, bPointer)
						}
			
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Serialize the WarningMessage object into a byte array which can be read by WarningMessage_read
					public func write() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKWarningMessage>) in
			WarningMessage_write(objPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Vec_u8Z(pointer: nativeCallResult).getValue()

						return returnValue
					}
		
					/// Read a WarningMessage from a byte array, created by WarningMessage_write
					public class func read(ser: [UInt8]) -> Result_WarningMessageDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = WarningMessage_read(ser.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_WarningMessageDecodeErrorZ(pointer: nativeCallResult)

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
		

					internal func dangle() -> WarningMessage {
						self.dangling = true
						return self
					}

					
					internal func danglingClone() -> WarningMessage {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing WarningMessage \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing WarningMessage \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		