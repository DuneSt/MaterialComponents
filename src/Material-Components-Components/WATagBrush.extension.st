Extension { #name : #WATagBrush }

{ #category : #'*Material-Components-Components' }
WATagBrush >> canvas [
	^ canvas
]

{ #category : #'*Material-Components-Components' }
WATagBrush >> mdcClass: aString [
	self flag: #todo.
	self class: 'mdc-' , aString
]

{ #category : #'*Material-Components-Components' }
WATagBrush >> mdcElevation: anInteger [
	<mdcApi:
		'Elevation is the relative depth, or distance, between two surfaces along the z-axis.
	It takes as parameter an Integer that should be between 0 and 24. 0 will not add any elevation. 24 is the max elevation possible.' priority: 350>
	(anInteger between: 0 and: 24) ifFalse: [ MDCWrongElevation signalFor: anInteger ].
	self mdcClass: 'elevation--z' , anInteger asString
]

{ #category : #'*Material-Components-Components' }
WATagBrush >> mdcElevationTransition [
	<mdcApi: 'Applies the correct css rules to transition an element between elevations.' priority: 360>
	self mdcClass: 'elevation-transition'
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

{ #category : #'*Material-Components-Components' }
WATagBrush >> styleAt: aString put: aValue [
	self style: aString , ':' , aValue asString
]

{ #category : #'*Material-Components-Components' }
WATagBrush >> withRipple [
	<mdcApi: 'Adds a ripple to the element with the element is clicked.' priority: 300>
	self
		mdcClass: 'ripple-surface';
		mdcClass: 'with-ripple'
]
