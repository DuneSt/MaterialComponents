Class {
	#name : #MDCTabRippleTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Tabs'
}

{ #category : #tests }
MDCTabRippleTest >> testBareBrush [
	self assert: [ :html | html mdcTabRipple ] generates: '<span class="mdc-tab__ripple"></span>'
]

{ #category : #tests }
MDCTabRippleTest >> testWithContent [
	self skip.
	self flag: #todo. "https://github.com/DuneSt/MaterialComponents/issues/11"
]
