
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			/// A transaction output watched by a [`ChannelMonitor`] for spends on-chain.
			/// 
			/// Used to convey to a [`Filter`] such an output with a given spending condition. Any transaction
			/// spending the output must be given to [`ChannelMonitor::block_connected`] either directly or via
			/// [`Confirm::transactions_confirmed`].
			/// 
			/// If `block_hash` is `Some`, this indicates the output was created in the corresponding block and
			/// may have been spent there. See [`Filter::register_output`] for details.
			/// 
			/// [`ChannelMonitor`]: channelmonitor::ChannelMonitor
			/// [`ChannelMonitor::block_connected`]: channelmonitor::ChannelMonitor::block_connected
			public typealias WatchedOutput = Bindings.WatchedOutput

			extension Bindings {
		

				/// A transaction output watched by a [`ChannelMonitor`] for spends on-chain.
				/// 
				/// Used to convey to a [`Filter`] such an output with a given spending condition. Any transaction
				/// spending the output must be given to [`ChannelMonitor::block_connected`] either directly or via
				/// [`Confirm::transactions_confirmed`].
				/// 
				/// If `block_hash` is `Some`, this indicates the output was created in the corresponding block and
				/// may have been spent there. See [`Filter::register_output`] for details.
				/// 
				/// [`ChannelMonitor`]: channelmonitor::ChannelMonitor
				/// [`ChannelMonitor::block_connected`]: channelmonitor::ChannelMonitor::block_connected
				public class WatchedOutput: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKWatchedOutput?

					public init(cType: LDKWatchedOutput) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(cType: LDKWatchedOutput, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the WatchedOutput, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = WatchedOutput_free(self.cType!)

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = nativeCallResult
						

						return returnValue
					}
		
					/// First block where the transaction output may have been spent.
					/// 
					/// Note that the return value (or a relevant inner pointer) may be NULL or all-0s to represent None
					public func getBlockHash() -> [UInt8]? {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKWatchedOutput>) in
				WatchedOutput_get_block_hash(thisPtrPointer)
						}
				

						// cleanup
						
				// COMMENT-DEDUCED OPTIONAL INFERENCE AND HANDLING:
				// Type group: RustPrimitiveWrapper
				// Type: LDKThirtyTwoBytes
			
						if nativeCallResult.data == Bindings.arrayToUInt8Tuple32(array: [UInt8](repeating: 0, count: 32)) {
							return nil
            			}
					

						
						// return value (do some wrapping)
						let returnValue = ThirtyTwoBytes(cType: nativeCallResult).getValue()
						

						return returnValue
					}
		
					/// First block where the transaction output may have been spent.
					/// 
					/// Note that val (or a relevant inner pointer) may be NULL or all-0s to represent None
					public func setBlockHash(val: [UInt8]) {
						// native call variable prep
						
						let valPrimitiveWrapper = ThirtyTwoBytes(value: val)
				

						// native method call
						let nativeCallResult = 
						withUnsafeMutablePointer(to: &self.cType!) { (thisPtrPointer: UnsafeMutablePointer<LDKWatchedOutput>) in
				WatchedOutput_set_block_hash(thisPtrPointer, valPrimitiveWrapper.cType!)
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = nativeCallResult
						

						return returnValue
					}
		
					/// Outpoint identifying the transaction output.
					public func getOutpoint() -> OutPoint {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKWatchedOutput>) in
				WatchedOutput_get_outpoint(thisPtrPointer)
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = OutPoint(cType: nativeCallResult)
						

						return returnValue
					}
		
					/// Outpoint identifying the transaction output.
					public func setOutpoint(val: OutPoint) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafeMutablePointer(to: &self.cType!) { (thisPtrPointer: UnsafeMutablePointer<LDKWatchedOutput>) in
				WatchedOutput_set_outpoint(thisPtrPointer, val.clone().cType!)
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = nativeCallResult
						

						return returnValue
					}
		
					/// Spending condition of the transaction output.
					public func getScriptPubkey() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKWatchedOutput>) in
				WatchedOutput_get_script_pubkey(thisPtrPointer)
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = u8slice(cType: nativeCallResult).getValue()
						

						return returnValue
					}
		
					/// Spending condition of the transaction output.
					public func setScriptPubkey(val: [UInt8]) {
						// native call variable prep
						
						let valVector = Vec_u8Z(array: val)
				

						// native method call
						let nativeCallResult = 
						withUnsafeMutablePointer(to: &self.cType!) { (thisPtrPointer: UnsafeMutablePointer<LDKWatchedOutput>) in
				WatchedOutput_set_script_pubkey(thisPtrPointer, valVector.cType!)
						}
				

						// cleanup
						
						// valVector.noOpRetain()
				

						
						// return value (do some wrapping)
						let returnValue = nativeCallResult
						

						return returnValue
					}
		
					/// Constructs a new WatchedOutput given each field
					public init(blockHashArg: [UInt8], outpointArg: OutPoint, scriptPubkeyArg: [UInt8]) {
						// native call variable prep
						
						let blockHashArgPrimitiveWrapper = ThirtyTwoBytes(value: blockHashArg)
				
						let scriptPubkeyArgVector = Vec_u8Z(array: scriptPubkeyArg)
				

						// native method call
						let nativeCallResult = WatchedOutput_new(blockHashArgPrimitiveWrapper.cType!, outpointArg.clone().cType!, scriptPubkeyArgVector.cType!)

						// cleanup
						
						// scriptPubkeyArgVector.noOpRetain()
				

						/*
						// return value (do some wrapping)
						let returnValue = WatchedOutput(cType: nativeCallResult)
						*/

						
				self.cType = nativeCallResult

				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				super.init(conflictAvoidingVariableName: 0)
			
					}
		
					/// Creates a copy of the WatchedOutput
					internal func clone() -> WatchedOutput {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKWatchedOutput>) in
				WatchedOutput_clone(origPointer)
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = WatchedOutput(cType: nativeCallResult)
						

						return returnValue
					}
		
					/// Checks if two WatchedOutputs contain equal inner contents.
					/// This ignores pointers and is_owned flags and looks at the values in fields.
					/// Two objects with NULL inner values will be considered "equal" here.
					public func eq() -> Bool {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (aPointer: UnsafePointer<LDKWatchedOutput>) in
				
						withUnsafePointer(to: self.cType!) { (bPointer: UnsafePointer<LDKWatchedOutput>) in
				WatchedOutput_eq(aPointer, bPointer)
						}
				
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = nativeCallResult
						

						return returnValue
					}
		
					/// Checks if two WatchedOutputs contain equal inner contents.
					public func hash() -> UInt64 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (oPointer: UnsafePointer<LDKWatchedOutput>) in
				WatchedOutput_hash(oPointer)
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = nativeCallResult
						

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
		

					internal func dangle() -> WatchedOutput {
						self.dangling = true
						return self
					}

					
					internal func danglingClone() -> WatchedOutput {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					internal func setCFreeability(freeable: Bool) -> WatchedOutput {
						self.cType!.is_owned = freeable
						return self
					}
			
					deinit {
						if Bindings.suspendFreedom {
							return
						}

						if !self.dangling {
							Bindings.print("Freeing WatchedOutput \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing WatchedOutput \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		