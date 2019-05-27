Extension { #name : #WATagBrush }

{ #category : #'*Material-Components-Components' }
WATagBrush >> mdcClass: aString [
	self flag: #todo.
	self class: 'mdc-' , aString
]

{ #category : #'*Material-Components-Components' }
WATagBrush >> mdcElevation: anInteger [
	"Elevation is the relative depth, or distance, between two surfaces along the z-axis.
	It takes as parameter an Integer that should be between 0 and 24. 0 will not add any elevation. 24 is the max elevation possible."

	self flag: #todo. "test"
	self flag: #todo. "Specific error for MDC"
	(anInteger between: 0 and: 24) ifFalse: [ self error: 'Elevation should be between 0 and 24.' ].
	self class: 'mdc-elevation--z' , anInteger asString
]

{ #category : #'*Material-Components-Components' }
WATagBrush >> mdcListItemGraphic [
	self flag: #todo.
	self mdcClass: 'list-item__graphic'
]

{ #category : #'*Material-Components-Components' }
WATagBrush >> mdcTopAppBarFixedAdjust [
	self flag: #todo.
	self class: 'mdc-top-app-bar--fixed-adjust'
]
