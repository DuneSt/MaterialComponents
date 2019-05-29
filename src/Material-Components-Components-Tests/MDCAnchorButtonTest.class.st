Class {
	#name : #MDCAnchorButtonTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Buttons'
}

{ #category : #tests }
MDCAnchorButtonTest >> testBareBrush [
	self assert: [ :html | html mdcAnchorButton ] generates: '<a class="mdc-button"></a>'
]

{ #category : #tests }
MDCAnchorButtonTest >> testDense [
	self
		assert: [ :html | 
			html mdcAnchorButton
				dense;
				with: 'Validate' ]
		generates: '<a class="mdc-button mdc-button--dense">Validate</a>'
]

{ #category : #tests }
MDCAnchorButtonTest >> testIconLabel [
	self
		assert: [ :html | html mdcAnchorButton icon: 'favorite' label: 'Validate' ]
		generates: '<a class="mdc-button"><i class="material-icons mdc-button__icon" aria-hidden="true">favorite</i><span class="mdc-button__label">Validate</span></a>'
]

{ #category : #tests }
MDCAnchorButtonTest >> testLabel [
	self assert: [ :html | html mdcAnchorButton label: 'Validate' ] generates: '<a class="mdc-button"><span class="mdc-button__label">Validate</span></a>'
]

{ #category : #tests }
MDCAnchorButtonTest >> testOutlined [
	self
		assert: [ :html | 
			html mdcAnchorButton
				outlined;
				with: 'Validate' ]
		generates: '<a class="mdc-button mdc-button--outlined">Validate</a>'
]

{ #category : #tests }
MDCAnchorButtonTest >> testRaised [
	self
		assert: [ :html | 
			html mdcAnchorButton
				raised;
				with: 'Validate' ]
		generates: '<a class="mdc-button mdc-button--raised">Validate</a>'
]

{ #category : #tests }
MDCAnchorButtonTest >> testUnelevated [
	self
		assert: [ :html | 
			html mdcAnchorButton
				unelevated;
				with: 'Validate' ]
		generates: '<a class="mdc-button mdc-button--unelevated">Validate</a>'
]

{ #category : #tests }
MDCAnchorButtonTest >> testWithContent [
	self assert: [ :html | html mdcAnchorButton: 'Validate' ] generates: '<a class="mdc-button">Validate</a>'
]

{ #category : #tests }
MDCAnchorButtonTest >> testWithIcon [
	self
		assert: [ :html | 
			html
				mdcAnchorButton: [ html mdcIcon
						buttonIcon;
						with: 'favorite'.
					html mdcButtonLabel: 'Validate' ] ]
		generates: '<a class="mdc-button"><i class="material-icons mdc-button__icon" aria-hidden="true">favorite</i><span class="mdc-button__label">Validate</span></a>'
]

{ #category : #tests }
MDCAnchorButtonTest >> testWithLabel [
	self assert: [ :html | html mdcAnchorButton: [ html mdcButtonLabel: 'Validate' ] ] generates: '<a class="mdc-button"><span class="mdc-button__label">Validate</span></a>'
]

{ #category : #tests }
MDCAnchorButtonTest >> testWithRipple [
	self
		assert: [ :html | 
			html mdcAnchorButton
				withRipple;
				label: 'Validate' ]
		generates: '<a class="mdc-button mdc-with-ripple"><span class="mdc-button__label">Validate</span></a>'
]
