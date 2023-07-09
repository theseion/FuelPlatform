private-extensions-testcase
assertCollectionEquals
	<flExtensionOf: #TestCase isSource: true>
	^ 'assertCollection: actualCollection equals: expectedCollection
	"Raises an AssertionFailure if actualCollection is not equal to expectedCollection (using #= message).
	 I also provide a specialized message for the AssertionFailure in case I fail.
	"

	^ self
		assert: actualCollection = expectedCollection
		description: [ self comparingCollectionBetween: actualCollection and: expectedCollection ]' 