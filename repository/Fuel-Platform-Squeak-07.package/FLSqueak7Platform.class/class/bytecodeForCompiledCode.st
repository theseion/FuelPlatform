private-extensions-compiledcode
bytecodeForCompiledCode
	<flExtensionOf: #CompiledCode selector: #bytecode>
	| start stop bytecode |

	start := self initialPC.
	"NOTE: we have to use #basicSize here instead of #endPC because
			in Squeak all CompiledCode instances have a trailer."
	stop := self basicSize.
	
	bytecode := ByteArray new: (stop - start + 1).
	start to: stop do: [:index |
		bytecode byteAt: index - start + 1 put: (self byteAt: index)].
	^bytecode