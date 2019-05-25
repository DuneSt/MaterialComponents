Class {
	#name : #MCDrawer,
	#superclass : #WATagBrush,
	#traits : 'TMDCBrush + TAutoInitBrush',
	#classTraits : 'TMDCBrush classTrait + TAutoInitBrush classTrait',
	#category : #'Material-Components-Components-Layout'
}

{ #category : #initialization }
MCDrawer >> initialize [
	super initialize.
	self mdcClass: 'drawer'.
	self autoInit: 'MDCDrawer'
]

{ #category : #accessing }
MCDrawer >> tag [
	^ 'aside'
]
