private-extensions-testcase
assert: expected identicalTo: actual
	<flExtensionOf: #TestCase>
	^ self
		assert: expected
		identical: actual