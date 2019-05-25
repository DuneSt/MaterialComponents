Class {
	#name : #MDCDrawer,
	#superclass : #WATagBrush,
	#traits : 'TMDCBrush + TAutoInitBrush',
	#classTraits : 'TMDCBrush classTrait + TAutoInitBrush classTrait',
	#category : #'Material-Components-Components-Layout'
}

{ #category : #initialization }
MDCDrawer >> initialize [
	super initialize.
	self mdcClass: 'drawer'.
	self autoInit: 'MDCDrawer'
]

{ #category : #accessing }
MDCDrawer >> tag [
	^ 'aside'
]
