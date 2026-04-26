private-extensions-standardfilestream
fuelNextWordsIntoForStandardFileStream
	<flExtensionOf: #StandardFileStream isSource: true>
	^ 'fuelNextWordsInto: aWordObject
	self next: aWordObject basicSize into: aWordObject startingAt: 1.
	^ aWordObject'