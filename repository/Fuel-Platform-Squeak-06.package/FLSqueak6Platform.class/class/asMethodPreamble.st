private-extensions-symbol
asMethodPreamble
	<flExtensionOf: #Symbol>
	self numArgs = 0 ifTrue: [ ^self asString].
	^ String streamContents: [ :str | 
		self keywords withIndexDo: [ :each :index | 
				str
					nextPutAll: each;
					nextPutAll: ' var' , index asString ] ]