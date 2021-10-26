private-extensions-flfullgeneralmapper
visitGlobalForFLFullGeneralMapper
	<flExtensionOf: #FLFullGeneralMapper isSource: true>
	^ 'visitGlobal: aGlobal
	"Consider global variables globals that can be looked up, unless
	the associated class (if any) should be fully serialized."
	((globals includesKey: aGlobal key) or: [
		(aGlobal value isBehavior and: [
			self shouldSerializeBehaviorFully: aGlobal value ]) not ])
				ifTrue: [
					self
						mapAndTraceByClusterName: aGlobal
						to: FLGlobalAssociationCluster ]
				ifFalse: [ next mapAndTrace: aGlobal ]'