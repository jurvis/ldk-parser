
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			internal typealias Vec_RouteHintHopZ = Bindings.Vec_RouteHintHopZ

			extension Bindings {

				/// A dynamically-allocated array of crate::lightning::routing::router::RouteHintHops of arbitrary size.
				/// This corresponds to std::vector in C++
				internal class Vec_RouteHintHopZ: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKCVec_RouteHintHopZ?

					public init(pointer: LDKCVec_RouteHintHopZ) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKCVec_RouteHintHopZ, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					public init(array: [RouteHintHop]) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter

						let rustArray = array.map { (currentValueDepth1) in
							currentValueDepth1.danglingClone().cType!
						}

						

						let dataContainer = UnsafeMutablePointernull.allocate(capacity: array.count)
						dataContainer.initialize(from: rustArray, count: array.count)

        				let vector = LDKCVec_RouteHintHopZ(data: dataContainer, datalen: UInt(array.count))
        				self.cType = vector

						super.init(conflictAvoidingVariableName: 0)
					}

					public func getValue() -> [RouteHintHop] {

						var array = [LDKRouteHintHop]()

						
						for index1 in 0..<Int(self.cType!.datalen) {
							let currentEntry1 = self.cType!.data[index1]
							array.append(currentEntry1)
						}
		

						let swiftArray = array.map { (currentCType) in
							RouteHintHop(pointer: currentCType)
						}
						return swiftArray
					}

					
					/// Frees the buffer pointed to by `data` if `datalen` is non-0.
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = CVec_RouteHintHopZ_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		

					internal func dangle() -> Vec_RouteHintHopZ {
        				self.dangling = true
						return self
					}

					
					deinit {
						if !self.dangling {
							Bindings.print("Freeing Vec_RouteHintHopZ \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing Vec_RouteHintHopZ \(self.instanceNumber) due to dangle.")
						}
					}
			

				}

			}
		