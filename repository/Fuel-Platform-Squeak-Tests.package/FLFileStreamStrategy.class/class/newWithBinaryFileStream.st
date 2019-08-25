instance creation
newWithBinaryFileStream
	^ (FLPlatform current isPharo and: [
		FLPlatform current versionNumber >= 5 ])
			ifTrue: [
				FLLegacyBinaryFileStreamStrategy basicNew
					initialize;
					yourself ]
			ifFalse: [ self newWithStandardFileStream ]