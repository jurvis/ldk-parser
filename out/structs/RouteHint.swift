
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias RouteHint = Bindings.RouteHint

			extension Bindings {
		

				/// A list of hops along a payment path terminating with a channel to the recipient.
				public class RouteHint: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKRouteHint?

					public init(pointer: LDKRouteHint) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKRouteHint, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the RouteHint, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = RouteHint_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// 
					public func getA() -> [RouteHintHop] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHint>) in
			RouteHint_get_a(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Vec_RouteHintHopZ(pointer: nativeCallResult).getValue()

						return returnValue
					}
		
					/// 
					public func setA(val: [RouteHintHop]) {
						// native call variable prep
						
						let valVector = Vec_RouteHintHopZ(array: val)
				

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHint>) in
			RouteHint_set_a(thisPtrPointer, valVector.cType!)
						}
			

						// cleanup
						
						valVector.noOpRetain()
				

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Constructs a new RouteHint given each field
					public init(aArg: [RouteHintHop]) {
						// native call variable prep
						
						let aArgVector = Vec_RouteHintHopZ(array: aArg)
				

						// native method call
						let nativeCallResult = RouteHint_new(aArgVector.cType!)

						// cleanup
						
						aArgVector.noOpRetain()
				

						// return value (do some wrapping)
						let returnValue = RouteHint(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a copy of the RouteHint
					internal func clone() -> RouteHint {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKRouteHint>) in
			RouteHint_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = RouteHint(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Checks if two RouteHints contain equal inner contents.
					public func hash() -> UInt64 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (oPointer: UnsafePointer<LDKRouteHint>) in
			RouteHint_hash(oPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Checks if two RouteHints contain equal inner contents.
					/// This ignores pointers and is_owned flags and looks at the values in fields.
					/// Two objects with NULL inner values will be considered "equal" here.
					public func eq() -> Bool {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (aPointer: UnsafePointer<LDKRouteHint>) in
			
						withUnsafePointer(to: self.cType!) { (bPointer: UnsafePointer<LDKRouteHint>) in
			RouteHint_eq(aPointer, bPointer)
						}
			
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Serialize the RouteHint object into a byte array which can be read by RouteHint_read
					public func write() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKRouteHint>) in
			RouteHint_write(objPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Vec_u8Z(pointer: nativeCallResult).getValue()

						return returnValue
					}
		
					/// Read a RouteHint from a byte array, created by RouteHint_write
					public class func read(ser: [UInt8]) -> Result_RouteHintDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = RouteHint_read(ser.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_RouteHintDecodeErrorZ(pointer: nativeCallResult)

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
		

					internal func dangle() -> RouteHint {
						self.dangling = true
						return self
					}

					
					internal func danglingClone() -> RouteHint {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing RouteHint \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing RouteHint \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		