private-extensions-environment
keyAtIdentityValueIfPresentIfAbsentForEnvironment
	<flExtensionOf: #Environment isSource: true>
	^ 'keyAtIdentityValue: anObject ifPresent: presentBlock ifAbsent: absentBlock
	| value |
	value := self
		keyAtIdentityValue: anObject
		ifAbsent: [ ^ absentBlock value ].
	
	^ presentBlock cull: value'