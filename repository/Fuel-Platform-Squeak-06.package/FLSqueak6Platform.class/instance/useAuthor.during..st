accessing-system
useAuthor: aString during: aBlock
	| previous utilities |
	utilities := (Smalltalk at:#Utilities).
	previous := utilities authorInitialsPerSe.
	utilities authorInitials: aString.
	^ aBlock ensure: [ utilities authorInitials: previous ]