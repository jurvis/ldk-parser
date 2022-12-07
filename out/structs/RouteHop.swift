
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias RouteHop = Bindings.RouteHop

			extension Bindings {
		

				/// A hop in a route
				public class RouteHop: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKRouteHop?

					public init(pointer: LDKRouteHop) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKRouteHop, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the RouteHop, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = RouteHop_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The node_id of the node at this hop.
					public func getPubkey() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_get_pubkey(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = PublicKey(pointer: nativeCallResult)

						return returnValue
					}
		
					/// The node_id of the node at this hop.
					public func setPubkey(val: [UInt8]) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_set_pubkey(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The node_announcement features of the node at this hop. For the last hop, these may be
					/// amended to match the features present in the invoice this node generated.
					public func getNodeFeatures() -> NodeFeatures {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_get_node_features(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = NodeFeatures(pointer: nativeCallResult)

						return returnValue
					}
		
					/// The node_announcement features of the node at this hop. For the last hop, these may be
					/// amended to match the features present in the invoice this node generated.
					public func setNodeFeatures(val: NodeFeatures) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_set_node_features(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The channel that should be used from the previous hop to reach this node.
					public func getShortChannelId() -> UInt64 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_get_short_channel_id(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The channel that should be used from the previous hop to reach this node.
					public func setShortChannelId(val: UInt64) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_set_short_channel_id(thisPtrPointer, val)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The channel_announcement features of the channel that should be used from the previous hop
					/// to reach this node.
					public func getChannelFeatures() -> ChannelFeatures {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_get_channel_features(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ChannelFeatures(pointer: nativeCallResult)

						return returnValue
					}
		
					/// The channel_announcement features of the channel that should be used from the previous hop
					/// to reach this node.
					public func setChannelFeatures(val: ChannelFeatures) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_set_channel_features(thisPtrPointer, val.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The fee taken on this hop (for paying for the use of the *next* channel in the path).
					/// For the last hop, this should be the full value of the payment (might be more than
					/// requested if we had to match htlc_minimum_msat).
					public func getFeeMsat() -> UInt64 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_get_fee_msat(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The fee taken on this hop (for paying for the use of the *next* channel in the path).
					/// For the last hop, this should be the full value of the payment (might be more than
					/// requested if we had to match htlc_minimum_msat).
					public func setFeeMsat(val: UInt64) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_set_fee_msat(thisPtrPointer, val)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The CLTV delta added for this hop. For the last hop, this should be the full CLTV value
					/// expected at the destination, in excess of the current block height.
					public func getCltvExpiryDelta() -> UInt32 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_get_cltv_expiry_delta(thisPtrPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// The CLTV delta added for this hop. For the last hop, this should be the full CLTV value
					/// expected at the destination, in excess of the current block height.
					public func setCltvExpiryDelta(val: UInt32) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_set_cltv_expiry_delta(thisPtrPointer, val)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Constructs a new RouteHop given each field
					public init(pubkeyArg: [UInt8], nodeFeaturesArg: NodeFeatures, shortChannelIdArg: UInt64, channelFeaturesArg: ChannelFeatures, feeMsatArg: UInt64, cltvExpiryDeltaArg: UInt32) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = RouteHop_new(pubkeyArg.cType!, nodeFeaturesArg.cType!, shortChannelIdArg, channelFeaturesArg.cType!, feeMsatArg, cltvExpiryDeltaArg)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = RouteHop(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Creates a copy of the RouteHop
					internal func clone() -> RouteHop {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = RouteHop(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Checks if two RouteHops contain equal inner contents.
					public func hash() -> UInt64 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (oPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_hash(oPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Checks if two RouteHops contain equal inner contents.
					/// This ignores pointers and is_owned flags and looks at the values in fields.
					/// Two objects with NULL inner values will be considered "equal" here.
					public func eq() -> Bool {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (aPointer: UnsafePointer<LDKRouteHop>) in
			
						withUnsafePointer(to: self.cType!) { (bPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_eq(aPointer, bPointer)
						}
			
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Serialize the RouteHop object into a byte array which can be read by RouteHop_read
					public func write() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKRouteHop>) in
			RouteHop_write(objPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Vec_u8Z(pointer: nativeCallResult).getValue()

						return returnValue
					}
		
					/// Read a RouteHop from a byte array, created by RouteHop_write
					public class func read(ser: [UInt8]) -> Result_RouteHopDecodeErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = RouteHop_read(ser.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_RouteHopDecodeErrorZ(pointer: nativeCallResult)

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
		

					internal func dangle() -> RouteHop {
						self.dangling = true
						return self
					}

					
					internal func danglingClone() -> RouteHop {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing RouteHop \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing RouteHop \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		