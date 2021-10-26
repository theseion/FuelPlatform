private-extensions-flserializationtest
setUpStreamStrategyForFLSerializationTest
	<flExtensionOf: #FLSerializationTest isSource: true>
	^ 'setUpStreamStrategy
	streamStrategy := FLBinaryFileStreamStrategy new'