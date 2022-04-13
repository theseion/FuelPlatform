helpers
pharoPackagesAndGroups: spec
	spec for: #pharo do: [
		spec package: 'Fuel-Platform-Pharo-Core' with: [ spec requires: 'Fuel-Platform-Core' ] ].
	spec for: #'pharo1.x' do: [
		spec package: 'Fuel-Platform-Pharo-01x' with: [ spec requires: 'Fuel-Platform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'Fuel-Platform-Pharo-01x' ].
	spec for: #'pharo2.x' do: [
		spec package: 'Fuel-Platform-Pharo-02' with: [ spec requires: 'Fuel-Platform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'Fuel-Platform-Pharo-02' ].
	spec for: #'pharo3.x' do: [
		spec package: 'Fuel-Platform-Pharo-03' with: [ spec requires: 'Fuel-Platform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'Fuel-Platform-Pharo-03' ].
	spec for: #'pharo4.x' do: [
		spec package: 'Fuel-Platform-Pharo-04' with: [ spec requires: 'Fuel-Platform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'Fuel-Platform-Pharo-04' ].
	spec for: #'pharo5.x' do: [
		spec package: 'Fuel-Platform-Pharo-05' with: [ spec requires: 'Fuel-Platform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'Fuel-Platform-Pharo-05' ].
	spec for: #'pharo6.x' do: [
		spec package: 'Fuel-Platform-Pharo-06' with: [ spec requires: 'Fuel-Platform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'Fuel-Platform-Pharo-06' ].
	spec for: #'pharo7.x' do: [
		spec package: 'Fuel-Platform-Pharo-07' with: [ spec requires: 'Fuel-Platform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: 'Fuel-Platform-Pharo-07' ].
	spec for: #'pharo8.x' do: [
		spec package: 'Fuel-Platform-Pharo-08' with: [ spec requires: 'Fuel-Platform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: #('Fuel-Platform-Pharo-08') ].
	spec for: #'pharo9.x' do: [
		spec package: 'Fuel-Platform-Pharo-09' with: [ spec requires: 'Fuel-Platform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: #('Fuel-Platform-Pharo-09') ].
	spec for: #'pharo10.x' do: [
		spec package: 'Fuel-Platform-Pharo-10' with: [ spec requires: 'Fuel-Platform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: #('Fuel-Platform-Pharo-10') ].
	spec for: #'pharo11.x' do: [
		spec package: 'Fuel-Platform-Pharo-11' with: [ spec requires: 'Fuel-Platform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: #('Fuel-Platform-Pharo-11') ].
	spec for: #'fuel-fallback' do: [
		spec package: 'Fuel-Platform-Pharo-11' with: [ spec requires: 'Fuel-Platform-Pharo-Core' ].
		spec group: 'FuelPlatformCurrentGroup' with: #('Fuel-Platform-Pharo-11') ]