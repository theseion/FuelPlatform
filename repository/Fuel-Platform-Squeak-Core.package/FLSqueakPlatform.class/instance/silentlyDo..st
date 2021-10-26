accessing-system
silentlyDo: aBlock
	^ SystemChangeNotifier uniqueInstance silentlyDo: aBlock