
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias RapidGossipSync = Bindings.RapidGossipSync

			extension Bindings {
		

				/// The main Rapid Gossip Sync object.
				/// 
				/// See [crate-level documentation] for usage.
				/// 
				/// [crate-level documentation]: crate
				public class RapidGossipSync: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKRapidGossipSync?

					public init(pointer: LDKRapidGossipSync) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKRapidGossipSync, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the RapidGossipSync, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = RapidGossipSync_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Instantiate a new [`RapidGossipSync`] instance.
					public init(networkGraph: NetworkGraph) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: networkGraph.cType!) { (networkGraphPointer: UnsafePointer<LDKNetworkGraph>) in
			RapidGossipSync_new(networkGraphPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = RapidGossipSync(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Update network graph from binary data.
					/// Returns the last sync timestamp to be used the next time rapid sync data is queried.
					/// 
					/// `network_graph`: network graph to be updated
					/// 
					/// `update_data`: `&[u8]` binary stream that comprises the update data
					public func updateNetworkGraph(updateData: [UInt8]) -> Result_u32GraphSyncErrorZ {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisArgPointer: UnsafePointer<LDKRapidGossipSync>) in
			RapidGossipSync_update_network_graph(thisArgPointer, updateData.cType!)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Result_u32GraphSyncErrorZ(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Returns whether a rapid gossip sync has completed at least once.
					public func isInitialSyncComplete() -> Bool {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisArgPointer: UnsafePointer<LDKRapidGossipSync>) in
			RapidGossipSync_is_initial_sync_complete(thisArgPointer)
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
		

					internal func dangle() -> RapidGossipSync {
						self.dangling = true
						return self
					}

					
					deinit {
						if !self.dangling {
							Bindings.print("Freeing RapidGossipSync \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing RapidGossipSync \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		