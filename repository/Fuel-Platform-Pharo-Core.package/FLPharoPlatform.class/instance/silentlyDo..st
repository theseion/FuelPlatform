accessing-system
silentlyDo: aBlock
	^ SystemAnnouncer uniqueInstance suspendAllWhile: aBlock