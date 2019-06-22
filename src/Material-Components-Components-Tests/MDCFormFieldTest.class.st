Class {
	#name : #MDCFormFieldTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Form'
}

{ #category : #tests }
MDCFormFieldTest >> testBareBrush [
	self assert: [ :html | html mdcFormField ] generates: '<div class="mdc-form-field" data-mdc-auto-init="MDCFormField"></div>'
]

{ #category : #tests }
MDCFormFieldTest >> testIsAutoInitialized [
	self assert: [ :html | html mdcFormField ] generatedIncludes: 'data-mdc-auto-init="MDCFormField"'
]

{ #category : #tests }
MDCFormFieldTest >> testWithContent [
	self assert: [ :html | html mdcFormField: 'Test' ] generates: '<div class="mdc-form-field" data-mdc-auto-init="MDCFormField">Test</div>'
]
