Class {
	#name : #MDCElevationTest,
	#superclass : #SGTAbstractSeasideTestCase,
	#category : #'Material-Components-Components-Tests-LayoutGrid'
}

{ #category : #tests }
MDCElevationTest >> testElevation [
	self assert: [ :html | html div mdcElevation: 0 ] generates: '<div class="mdc-elevation--z0"></div>'.
	self assert: [ :html | html div mdcElevation: 2 ] generates: '<div class="mdc-elevation--z2"></div>'.
	self assert: [ :html | html div mdcElevation: 24 ] generates: '<div class="mdc-elevation--z24"></div>'
]

{ #category : #tests }
MDCElevationTest >> testElevationTransition [
	self
		assert: [ :html | 
			html div
				mdcElevation: 2;
				mdcElevationTransition ]
		generates: '<div class="mdc-elevation--z2 mdc-elevation-transition"></div>'
]

{ #category : #tests }
MDCElevationTest >> testElevationWithWrongParameter [
	self should: [ MDCDivTag new mdcElevation: -1 ] raise: MDCWrongElevation.
	self should: [ MDCDivTag new mdcElevation: 25 ] raise: MDCWrongElevation
]
