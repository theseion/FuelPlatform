accessing-files
deleteAllInDirectoryPath: aPathString
	| directory |
	directory := aPathString.
	directory directoryNames
		do: [:dn | (directory directoryNamed: dn) recursiveDelete].
	directory deleteLocalFiles