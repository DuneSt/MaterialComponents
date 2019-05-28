Class {
	#name : #MDCButtonTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Buttons'
}

{ #category : #tests }
MDCButtonTest >> testBareBrush [
	self assert: [ :html | html mdcButton ] generates: '<button class="mdc-button" type="submit"></button>'
]

{ #category : #tests }
MDCButtonTest >> testDense [
	self
		assert: [ :html | 
			html mdcButton
				dense;
				with: 'Validate' ]
		generates: '<button class="mdc-button mdc-button--dense" type="submit">Validate</button>'
]

{ #category : #tests }
MDCButtonTest >> testIconLabel [
	self
		assert: [ :html | html mdcButton icon: 'favorite' label: 'Validate' ]
		generates: '<button class="mdc-button" type="submit"><i class="material-icons mdc-button__icon" aria-hidden="true">favorite</i><span class="mdc-button__label">Validate</span></button>'
]

{ #category : #tests }
MDCButtonTest >> testLabel [
	self assert: [ :html | html mdcButton label: 'Validate' ] generates: '<button class="mdc-button" type="submit"><span class="mdc-button__label">Validate</span></button>'
]

{ #category : #tests }
MDCButtonTest >> testOutlined [
	self
		assert: [ :html | 
			html mdcButton
				outlined;
				with: 'Validate' ]
		generates: '<button class="mdc-button mdc-button--outlined" type="submit">Validate</button>'
]

{ #category : #tests }
MDCButtonTest >> testRaised [
	self
		assert: [ :html | 
			html mdcButton
				raised;
				with: 'Validate' ]
		generates: '<button class="mdc-button mdc-button--raised" type="submit">Validate</button>'
]

{ #category : #tests }
MDCButtonTest >> testUnelevated [
	self
		assert: [ :html | 
			html mdcButton
				unelevated;
				with: 'Validate' ]
		generates: '<button class="mdc-button mdc-button--unelevated" type="submit">Validate</button>'
]

{ #category : #tests }
MDCButtonTest >> testWithContent [
	self assert: [ :html | html mdcButton: 'Validate' ] generates: '<button class="mdc-button" type="submit">Validate</button>'
]

{ #category : #tests }
MDCButtonTest >> testWithIcon [
	self
		assert: [ :html | 
			html
				mdcButton: [ html mdcIcon
						buttonIcon;
						with: 'favorite'.
					html mdcButtonLabel: 'Validate' ] ]
		generates: '<button class="mdc-button" type="submit"><i class="material-icons mdc-button__icon" aria-hidden="true">favorite</i><span class="mdc-button__label">Validate</span></button>'
]

{ #category : #tests }
MDCButtonTest >> testWithLabel [
	self assert: [ :html | html mdcButton: [ html mdcButtonLabel: 'Validate' ] ] generates: '<button class="mdc-button" type="submit"><span class="mdc-button__label">Validate</span></button>'
]

{ #category : #tests }
MDCButtonTest >> testWithRipple [
	self
		assert: [ :html | 
			html
				mdcButton withRipple; label: 'Validate'  ]
		generates: '<button class="mdc-button mdc-with-ripple" type="submit"><span class="mdc-button__label">Validate</span></button>'
]
