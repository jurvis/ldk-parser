
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias ParseError = Bindings.ParseError

			extension Bindings {

				/// Errors that indicate what is wrong with the invoice. They have some granularity for debug
				/// reasons, but should generally result in an \"invalid BOLT11 invoice\" message for the user.
				public class ParseError: NativeTypeWrapper {

					
					private static var instanceCounter: UInt = 0
					internal let instanceNumber: UInt

					internal var cType: LDKParseError?

					public init(pointer: LDKParseError) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
					}

					public init(pointer: LDKParseError, anchor: NativeTypeWrapper) {
						Self.instanceCounter += 1
						self.instanceNumber = Self.instanceCounter
						self.cType = pointer
						super.init(conflictAvoidingVariableName: 0)
						self.dangling = true
						try! self.addAnchor(anchor: anchor)
					}
		

					public enum ParseErrorType {
						
						/// 
						case Bech32Error
			
						/// 
						case ParseAmountError
			
						/// 
						case MalformedSignature
			
						/// 
						case BadPrefix
			
						/// 
						case UnknownCurrency
			
						/// 
						case UnknownSiPrefix
			
						/// 
						case MalformedHRP
			
						/// 
						case TooShortDataPart
			
						/// 
						case UnexpectedEndOfTaggedFields
			
						/// 
						case DescriptionDecodeError
			
						/// 
						case PaddingError
			
						/// 
						case IntegerOverflowError
			
						/// 
						case InvalidSegWitProgramLength
			
						/// 
						case InvalidPubKeyHashLength
			
						/// 
						case InvalidScriptHashLength
			
						/// 
						case InvalidRecoveryId
			
						/// 
						case InvalidSliceLength
			
						/// Not an error, but used internally to signal that a part of the invoice should be ignored
						/// according to BOLT11
						case Skip
			
					}

					public func getValueType() -> ParseErrorType? {
						switch self.cType!.tag {
							case LDKParseError_Bech32Error:
								return .Bech32Error
			
							case LDKParseError_ParseAmountError:
								return .ParseAmountError
			
							case LDKParseError_MalformedSignature:
								return .MalformedSignature
			
							case LDKParseError_BadPrefix:
								return .BadPrefix
			
							case LDKParseError_UnknownCurrency:
								return .UnknownCurrency
			
							case LDKParseError_UnknownSiPrefix:
								return .UnknownSiPrefix
			
							case LDKParseError_MalformedHRP:
								return .MalformedHRP
			
							case LDKParseError_TooShortDataPart:
								return .TooShortDataPart
			
							case LDKParseError_UnexpectedEndOfTaggedFields:
								return .UnexpectedEndOfTaggedFields
			
							case LDKParseError_DescriptionDecodeError:
								return .DescriptionDecodeError
			
							case LDKParseError_PaddingError:
								return .PaddingError
			
							case LDKParseError_IntegerOverflowError:
								return .IntegerOverflowError
			
							case LDKParseError_InvalidSegWitProgramLength:
								return .InvalidSegWitProgramLength
			
							case LDKParseError_InvalidPubKeyHashLength:
								return .InvalidPubKeyHashLength
			
							case LDKParseError_InvalidScriptHashLength:
								return .InvalidScriptHashLength
			
							case LDKParseError_InvalidRecoveryId:
								return .InvalidRecoveryId
			
							case LDKParseError_InvalidSliceLength:
								return .InvalidSliceLength
			
							case LDKParseError_Skip:
								return .Skip
			
							default:
								return nil
						}
		
					}

					
					/// Frees any resources used by the ParseError
					internal func free() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_free(self.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Creates a copy of the ParseError
					internal func clone() -> ParseError {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKParseError>) in
			ParseError_clone(origPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						return returnValue
					}
		
					/// Utility method to constructs a new Bech32Error-variant ParseError
					public init(a: Bech32Error) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_bech32_error(a.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new ParseAmountError-variant ParseError
					public init(a: BindingsError) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_parse_amount_error(a.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new MalformedSignature-variant ParseError
					public init(a: Secp256k1Error) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_malformed_signature(a.getCValue())

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new BadPrefix-variant ParseError
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_bad_prefix()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new UnknownCurrency-variant ParseError
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_unknown_currency()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new UnknownSiPrefix-variant ParseError
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_unknown_si_prefix()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new MalformedHRP-variant ParseError
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_malformed_hrp()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new TooShortDataPart-variant ParseError
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_too_short_data_part()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new UnexpectedEndOfTaggedFields-variant ParseError
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_unexpected_end_of_tagged_fields()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new DescriptionDecodeError-variant ParseError
					public init(a: BindingsError) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_description_decode_error(a.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new PaddingError-variant ParseError
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_padding_error()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new IntegerOverflowError-variant ParseError
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_integer_overflow_error()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new InvalidSegWitProgramLength-variant ParseError
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_invalid_seg_wit_program_length()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new InvalidPubKeyHashLength-variant ParseError
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_invalid_pub_key_hash_length()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new InvalidScriptHashLength-variant ParseError
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_invalid_script_hash_length()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new InvalidRecoveryId-variant ParseError
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_invalid_recovery_id()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new InvalidSliceLength-variant ParseError
					public init(a: String) {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_invalid_slice_length(a.cType!)

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Utility method to constructs a new Skip-variant ParseError
					public init() {
						// native call variable prep
						

						// native method call
						let nativeCallResult = ParseError_skip()

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = ParseError(pointer: nativeCallResult)

						self.cType = nativeCallResult
					}
		
					/// Checks if two ParseErrors contain equal inner contents.
					/// This ignores pointers and is_owned flags and looks at the values in fields.
					public func eq() -> Bool {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (aPointer: UnsafePointer<LDKParseError>) in
			
						withUnsafePointer(to: self.cType!) { (bPointer: UnsafePointer<LDKParseError>) in
			ParseError_eq(aPointer, bPointer)
						}
			
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = nativeCallResult

						return returnValue
					}
		
					/// Get the string representation of a ParseError object
					public func toStr() -> String {
						// native call variable prep
						

						// native method call
						let nativeCallResult = 
						withUnsafePointer(to: self.cType!) { (oPointer: UnsafePointer<LDKParseError>) in
			ParseError_to_str(oPointer)
						}
			

						// cleanup
						

						// return value (do some wrapping)
						let returnValue = Str(pointer: nativeCallResult)

						return returnValue
					}
		

					
					public func getValueAsBech32Error() -> Bech32Error? {
						if self.cType?.tag != LDKParseError_Bech32Error {
							return nil
						}

						return Bech32Error(pointer: self.cType!.bech32_error)
					}
			
					public func getValueAsParseAmountError() -> BindingsError? {
						if self.cType?.tag != LDKParseError_ParseAmountError {
							return nil
						}

						return BindingsError(pointer: self.cType!.parse_amount_error)
					}
			
					public func getValueAsMalformedSignature() -> Secp256k1Error? {
						if self.cType?.tag != LDKParseError_MalformedSignature {
							return nil
						}

						return Secp256k1Error(value: self.cType!.malformed_signature)
					}
			
					public func getValueAsDescriptionDecodeError() -> BindingsError? {
						if self.cType?.tag != LDKParseError_DescriptionDecodeError {
							return nil
						}

						return BindingsError(pointer: self.cType!.description_decode_error)
					}
			
					public func getValueAsInvalidSliceLength() -> String? {
						if self.cType?.tag != LDKParseError_InvalidSliceLength {
							return nil
						}

						return Str(pointer: self.cType!.invalid_slice_length)
					}
			

					internal func dangle() -> ParseError {
        				self.dangling = true
						return self
					}

					
					internal func danglingClone() -> ParseError {
						let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
			
					deinit {
						if !self.dangling {
							Bindings.print("Freeing ParseError \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing ParseError \(self.instanceNumber) due to dangle.")
						}
					}
			

					

				}

			}
		