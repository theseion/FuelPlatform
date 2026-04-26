private-extensions-testcase
assertCollectionHasSameElements
	<flExtensionOf: #TestCase isSource: true>
	^ 'assertCollection: actualCollection hasSameElements: expected
	"Assert that a collection contains the same elements as the given collection. Order is not checked, only the presence/absence of elements."

	| missingElements additionalElements |
	additionalElements := actualCollection difference: expected.
	missingElements := expected difference: (actualCollection intersection: expected).
	self
		assert: (additionalElements isEmpty and: [ missingElements isEmpty ])
		description:
			(String
				streamContents: [ :stream | 
					stream
						nextPutAll: ''Given Collections do not match!'';
						lf;
						tab;
						nextPutAll: ''additions : '';
						print: additionalElements asArray;
						lf;
						tab;
						nextPutAll: ''missing: '';
						print: missingElements asArray;
						lf ])' 