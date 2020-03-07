adding
addPostloadHacks
	| platformClass |
	platformClass := Smalltalk at: #FLPlatform.
	
	"Ensure that on development platforms the current platform is correct,
	e.g. when we add a new platform the loaded one could be FLPharo7Platform
	but we need it to be FLPharo8Platform after loading."
	platformClass reset.
	
	"Simply perform #addHacks again. We've now loaded classes that weren't
	there before and some of those also need extensions" 
	platformClass current addHacks