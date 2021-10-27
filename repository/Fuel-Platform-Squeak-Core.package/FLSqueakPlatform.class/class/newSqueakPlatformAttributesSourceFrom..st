private-hacks-metacello
newSqueakPlatformAttributesSourceFrom: aCollection
	^ String streamContents: [ :stream | 
		stream nextPutAll: 'defaultPlatformAttributes
	| attributes versionString |
	attributes := OrderedCollection with: #squeakCommon with: #squeak.
	Smalltalk
		at: #SystemVersion
		ifPresent: [:cl | 
			'.
		aCollection do: [ :version |
			stream
				nextPutAll: '(versionString beginsWith: ''';
				nextPutAll:  version;
				nextPutAll: ''') ifTrue: [ attributes add: #''';
				nextPutAll: version asLowercase;
				nextPutAll: '.x''] ifFalse: [ ' ].
		stream 
			nextPutAll: (String newFrom: ((1 to: aCollection size + 2) collect: [ :i | $] ]));
			nextPutAll: '. ^ attributes' ]