accessing-system
silentlyDo: aBlock
	^ SystemChangeNotifier uniqueInstance doSilently: aBlock