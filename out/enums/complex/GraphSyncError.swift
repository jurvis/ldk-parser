
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias GraphSyncError = Bindings.GraphSyncError

			extension Bindings {

				/// All-encompassing standard error type that processing can return
				public class GraphSyncError: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKGraphSyncError?

					public init(pointer: LDKGraphSyncError) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKGraphSyncError, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					public enum GraphSyncErrorType {
						
						/// Error trying to read the update data, typically due to an erroneous data length indication
						/// that is greater than the actual amount of data provided
						case DecodeError
			
						/// Error applying the patch to the network graph, usually the result of updates that are too
						/// old or missing prerequisite data to the application of updates out of order
						case LightningError
			
					}

					public func getValueType() -> GraphSyncErrorType? {
						switch self.cType!.tag {
							case LDKGraphSyncError_DecodeError:
								return .DecodeError
			
							case LDKGraphSyncError_LightningError:
								return .LightningError
			
							default:
								return nil
						}
		
					}

					
					/// Frees any resources used by the GraphSyncError
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = GraphSyncError_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a copy of the GraphSyncError
					internal func clone() -> GraphSyncError {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKGraphSyncError>) in
			GraphSyncError_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = GraphSyncError(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Utility method to constructs a new DecodeError-variant GraphSyncError
					public init(a: DecodeError) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = GraphSyncError_decode_error(a.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = GraphSyncError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new LightningError-variant GraphSyncError
					public init(a: LightningError) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = GraphSyncError_lightning_error(a.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = GraphSyncError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		

					
					public func getValueAsDecodeError() -> DecodeError? {
						if self.cType?.tag != LDKGraphSyncError_DecodeError {
							return nil
						}

						return DecodeError(pointer: self.cType!.decode_error)
					}
			
					public func getValueAsLightningError() -> LightningError? {
						if self.cType?.tag != LDKGraphSyncError_LightningError {
							return nil
						}

						return LightningError(pointer: self.cType!.lightning_error)
					}
			

					internal func dangle() -> GraphSyncError {
        				self.dangling = true
						return self
					}

					
					internal func danglingClone() -> GraphSyncError {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing GraphSyncError \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing GraphSyncError \(self.instanceNumber) due to dangle.")
						}
					}
			

					

				}

			}
		