Class {
	#name : #BaselineOfSpecCore,
	#superclass : #BaselineOf,
	#category : #BaselineOfSpecCore
}

{ #category : #baselines }
BaselineOfSpecCore >> baseline: spec [
	<baseline>
	
	| pharoRepository |
	
	pharoRepository := 'github://pharo-project/pharo/src'.
	pharoRepository := 'github://pavel-krivanek/pharo:specSupport/src'.

	spec
		for: #common
		do: [ 
			spec baseline: 'SUnit' with: [spec repository: pharoRepository].
			spec baseline: 'Display' with: [spec repository: pharoRepository].
			spec baseline: 'SortFunctions' with: [spec repository: pharoRepository; loads:  'SortFunctions-Core' ].
			spec baseline: 'Morphic-Core' with: [spec repository: pharoRepository; loads: #( 'Tool-Registry' 'Text-Core'  'Fonts-Abstract') ].
			spec baseline: 'Morphic' with: [spec repository: pharoRepository; loads:  #('Fonts-Infrastructure' 'MenuRegistration' 'Keymapping-Core' 'Keymapping-KeyCombinations' 'Keymapping-Pragmas'  'System-Localization') ].
			spec baseline: 'Slot' with: [spec repository: pharoRepository; loads:  #('VariablesLibrary' 'Slot-Examples' ) ]. 
			spec baseline: 'UI' with: [spec repository: pharoRepository; loads:  #('ParametrizedTests') ].
		]
]
