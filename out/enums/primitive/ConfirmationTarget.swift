
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias ConfirmationTarget = Bindings.ConfirmationTarget

			extension Bindings {

				/// An enum that represents the speed at which we want a transaction to confirm used for feerate
				/// estimation.
				public enum ConfirmationTarget {

					
					/// We are happy with this transaction confirming slowly when feerate drops some.
					case Background
			
					/// We'd like this transaction to confirm without major delay, but 12-18 blocks is fine.
					case Normal
			
					/// We'd like this transaction to confirm in the next few blocks.
					case HighPriority
			

					internal init (value: LDKConfirmationTarget) {

						// TODO: remove this initial assumption somehow
						self = .HighPriority

						
						if value == LDKConfirmationTarget_Background {
							self = .Background
						}
			
						if value == LDKConfirmationTarget_Normal {
							self = .Normal
						}
			
						if value == LDKConfirmationTarget_HighPriority {
							self = .HighPriority
						}
			
					}

					internal func getCValue() -> LDKConfirmationTarget {
						switch self {
							
							case .Background:
								return LDKConfirmationTarget_Background
			
							case .Normal:
								return LDKConfirmationTarget_Normal
			
							case .HighPriority:
								return LDKConfirmationTarget_HighPriority
			
						}
					}

				}

			}
		