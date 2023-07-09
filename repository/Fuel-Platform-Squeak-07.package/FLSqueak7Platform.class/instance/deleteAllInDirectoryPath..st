accessing-files
deleteAllInDirectoryPath: aPathString
	| directory |
	directory := FileDirectory on: aPathString.
	directory directoryNames
		do: [:dn | (directory directoryNamed: dn) recursiveDelete].
	directory deleteLocalFiles