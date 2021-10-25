accessing-system
doSilently: aBlock
	^ SystemAnnouncer uniqueInstance suspendAllWhile: aBlock