
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias RoutingFees = Bindings.RoutingFees

			extension Bindings {
		

				/// Fees for routing via a given channel or a node
				public class RoutingFees: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKRoutingFees?

					public init(pointer: LDKRoutingFees) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKRoutingFees, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the RoutingFees, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = RoutingFees_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Flat routing fee in satoshis
					public func getBaseMsat() -> UInt32 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRoutingFees>) in
			RoutingFees_get_base_msat(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Flat routing fee in satoshis
					public func setBaseMsat(val: UInt32) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRoutingFees>) in
			RoutingFees_set_base_msat(thisPtrPointer, val)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Liquidity-based routing fee in millionths of a routed amount.
					/// In other words, 10000 is 1%.
					public func getProportionalMillionths() -> UInt32 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRoutingFees>) in
			RoutingFees_get_proportional_millionths(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Liquidity-based routing fee in millionths of a routed amount.
					/// In other words, 10000 is 1%.
					public func setProportionalMillionths(val: UInt32) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRoutingFees>) in
			RoutingFees_set_proportional_millionths(thisPtrPointer, val)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Constructs a new RoutingFees given each field
					public init(baseMsatArg: UInt32, proportionalMillionthsArg: UInt32) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = RoutingFees_new(baseMsatArg, proportionalMillionthsArg)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = RoutingFees(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Checks if two RoutingFeess contain equal inner contents.
					/// This ignores pointers and is_owned flags and looks at the values in fields.
					/// Two objects with NULL inner values will be considered "equal" here.
					public func eq() -> Bool {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (aPointer: UnsafePointer<LDKRoutingFees>) in
			
						withUnsafePointer(to: self.cType!) { (bPointer: UnsafePointer<LDKRoutingFees>) in
			RoutingFees_eq(aPointer, bPointer)
						}
			
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a copy of the RoutingFees
					internal func clone() -> RoutingFees {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKRoutingFees>) in
			RoutingFees_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = RoutingFees(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Checks if two RoutingFeess contain equal inner contents.
					public func hash() -> UInt64 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (oPointer: UnsafePointer<LDKRoutingFees>) in
			RoutingFees_hash(oPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Serialize the RoutingFees object into a byte array which can be read by RoutingFees_read
					public func write() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKRoutingFees>) in
			RoutingFees_write(objPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Vec_u8Z(pointer: nativeCallResult).getValue()

						return returnValue
					}
		
					/// Read a RoutingFees from a byte array, created by RoutingFees_write
					public class func read(ser: [UInt8]) -> Result_RoutingFeesDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = RoutingFees_read(ser.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_RoutingFeesDecodeErrorZ(pointer: nativeCallResult)

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
		

					internal func dangle() -> RoutingFees {
						self.dangling = true
						return self
					}

					
					internal func danglingClone() -> RoutingFees {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing RoutingFees \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing RoutingFees \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		