
				
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			/// An update generated by the underlying channel itself which contains some new information the
			/// [`ChannelMonitor`] should be made aware of.
			/// 
			/// Because this represents only a small number of updates to the underlying state, it is generally
			/// much smaller than a full [`ChannelMonitor`]. However, for large single commitment transaction
			/// updates (e.g. ones during which there are hundreds of HTLCs pending on the commitment
			/// transaction), a single update may reach upwards of 1 MiB in serialized size.
			public typealias ChannelMonitorUpdate = Bindings.ChannelMonitorUpdate

			extension Bindings {
		

				/// An update generated by the underlying channel itself which contains some new information the
				/// [`ChannelMonitor`] should be made aware of.
				/// 
				/// Because this represents only a small number of updates to the underlying state, it is generally
				/// much smaller than a full [`ChannelMonitor`]. However, for large single commitment transaction
				/// updates (e.g. ones during which there are hundreds of HTLCs pending on the commitment
				/// transaction), a single update may reach upwards of 1 MiB in serialized size.
				public class ChannelMonitorUpdate: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKChannelMonitorUpdate?

					public init(cType: LDKChannelMonitorUpdate) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(cType: LDKChannelMonitorUpdate, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = cType
						
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					
					/// Frees any resources used by the ChannelMonitorUpdate, if is_owned is set and inner is non-NULL.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ChannelMonitorUpdate_free(self.cType!)

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = nativeCallResult
						

						return returnValue
					}
		
					/// The sequence number of this update. Updates *must* be replayed in-order according to this
					/// sequence number (and updates may panic if they are not). The update_id values are strictly
					/// increasing and increase by one for each new update, with one exception specified below.
					/// 
					/// This sequence number is also used to track up to which points updates which returned
					/// [`ChannelMonitorUpdateStatus::InProgress`] have been applied to all copies of a given
					/// ChannelMonitor when ChannelManager::channel_monitor_updated is called.
					/// 
					/// The only instance where update_id values are not strictly increasing is the case where we
					/// allow post-force-close updates with a special update ID of [`CLOSED_CHANNEL_UPDATE_ID`]. See
					/// its docs for more details.
					/// 
					/// [`ChannelMonitorUpdateStatus::InProgress`]: super::ChannelMonitorUpdateStatus::InProgress
					public func getUpdateId() -> UInt64 {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKChannelMonitorUpdate>) in
				ChannelMonitorUpdate_get_update_id(thisPtrPointer)
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = nativeCallResult
						

						return returnValue
					}
		
					/// The sequence number of this update. Updates *must* be replayed in-order according to this
					/// sequence number (and updates may panic if they are not). The update_id values are strictly
					/// increasing and increase by one for each new update, with one exception specified below.
					/// 
					/// This sequence number is also used to track up to which points updates which returned
					/// [`ChannelMonitorUpdateStatus::InProgress`] have been applied to all copies of a given
					/// ChannelMonitor when ChannelManager::channel_monitor_updated is called.
					/// 
					/// The only instance where update_id values are not strictly increasing is the case where we
					/// allow post-force-close updates with a special update ID of [`CLOSED_CHANNEL_UPDATE_ID`]. See
					/// its docs for more details.
					/// 
					/// [`ChannelMonitorUpdateStatus::InProgress`]: super::ChannelMonitorUpdateStatus::InProgress
					public func setUpdateId(val: UInt64) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafeMutablePointer(to: &self.cType!) { (thisPtrPointer: UnsafeMutablePointer<LDKChannelMonitorUpdate>) in
				ChannelMonitorUpdate_set_update_id(thisPtrPointer, val)
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = nativeCallResult
						

						return returnValue
					}
		
					/// Creates a copy of the ChannelMonitorUpdate
					internal func clone() -> ChannelMonitorUpdate {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKChannelMonitorUpdate>) in
				ChannelMonitorUpdate_clone(origPointer)
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = ChannelMonitorUpdate(cType: nativeCallResult)
						

						return returnValue
					}
		
					/// Serialize the ChannelMonitorUpdate object into a byte array which can be read by ChannelMonitorUpdate_read
					public func write() -> [UInt8] {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKChannelMonitorUpdate>) in
				ChannelMonitorUpdate_write(objPointer)
						}
				

						// cleanup
						

						
						// return value (do some wrapping)
						let returnValue = Vec_u8Z(cType: nativeCallResult).getValue()
						

						return returnValue
					}
		
					/// Read a ChannelMonitorUpdate from a byte array, created by ChannelMonitorUpdate_write
					public class func read(ser: [UInt8]) -> Result_ChannelMonitorUpdateDecodeErrorZ {
						// native call variable prep
						
						let serPrimitiveWrapper = u8slice(value: ser)
				

						// native method call
						let nativeCallResult = ChannelMonitorUpdate_read(serPrimitiveWrapper.cType!)

						// cleanup
						
						// for elided types, we need this
						serPrimitiveWrapper.noOpRetain()
				

						
						// return value (do some wrapping)
						let returnValue = Result_ChannelMonitorUpdateDecodeErrorZ(cType: nativeCallResult)
						

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
		

					internal func dangle() -> ChannelMonitorUpdate {
						self.dangling = true
						return self
					}

					
					internal func danglingClone() -> ChannelMonitorUpdate {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
						internal func dynamicallyDangledClone() -> ChannelMonitorUpdate {
							let dangledClone = self.clone()
							// if it's owned, i. e. controlled by Rust, it should dangle on our end
							dangledClone.dangling = dangledClone.cType!.is_owned
							return dangledClone
						}
					
					internal func setCFreeability(freeable: Bool) -> ChannelMonitorUpdate {
						self.cType!.is_owned = freeable
						return self
					}

					internal func dynamicDangle() -> ChannelMonitorUpdate {
						self.dangling = self.cType!.is_owned
						return self
					}
			
					deinit {
						if Bindings.suspendFreedom {
							return
						}

						if !self.dangling {
							Bindings.print("Freeing ChannelMonitorUpdate \(self.instanceNumber).")
							
							self.free()
						} else {
							Bindings.print("Not freeing ChannelMonitorUpdate \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

				
			}
		
		