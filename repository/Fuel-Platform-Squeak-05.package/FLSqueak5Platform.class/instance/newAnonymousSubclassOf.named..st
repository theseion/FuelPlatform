tests-compilation
newAnonymousSubclassOf: aClass named: aString
	"Using a temporary environment to ensure that conditions for Pharo's anonymous classesListPresenter
	are met in Squeak.
	Setting category to nil prevents registration in organizational structures."
	^ self
		silentlyDo: [
			ClassBuilder new
				name: ''
				inEnvironment: (Environment withName: 'anonymous env')
				subclassOf: aClass
				type: aClass typeOfClass
				instanceVariableNames: ''
				classVariableNames: ''
				poolDictionaries: ''
				category: nil
				unsafe: true ]
