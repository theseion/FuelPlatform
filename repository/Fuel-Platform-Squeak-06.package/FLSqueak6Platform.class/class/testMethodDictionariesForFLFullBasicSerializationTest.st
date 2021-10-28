private-extensions-flfullbasicserializationtest
testMethodDictionariesForFLFullBasicSerializationTest
	<flExtensionOf: #FLFullBasicSerializationTest isSource: true>
	^ 'testMethodDictionaries
	"Tests correct serialization of all the method dictionaries in the System package."

	(SystemOrganization categoriesMatching: ''System*'') do: [ :category |
		(SystemOrganization classesIn: category) do: [ :class |
			self resultOfSerializeAndMaterializeMethodDictionary: class methodDictionary ] ]'