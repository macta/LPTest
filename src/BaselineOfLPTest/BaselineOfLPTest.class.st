Class {
	#name : 'BaselineOfLPTest',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfLPTest',
	#package : 'BaselineOfLPTest'
}

{ #category : 'baselines' }
BaselineOfLPTest >> baseline: spec [

	<baseline>

	spec for: #common do: [

		self setUpDependencies: spec.
		
		"Packages"
		spec
			package: 'LPTest' with: [ spec 
				requires: #('Launchpad-Deployment') ]
	 ]
]

{ #category : 'baselines' }
BaselineOfLPTest >> setUpDependencies: spec [

	spec
    	baseline: 'Launchpad' with: [ 
			spec repository: 'github://ba-st/Launchpad:release-candidate' ];
   		project: 'Launchpad-Deployment'
    		copyFrom: 'Launchpad' with: [ spec loads: 'Deployment' ]
]
