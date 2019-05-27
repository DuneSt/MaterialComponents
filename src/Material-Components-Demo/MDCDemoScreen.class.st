"
Description
--------------------

I represent an abstract example screen for the demo application.

I have an iconUrl to help displaying it in the drawer.

Title, Description and Icon must be implemented in subclasses.
"
Class {
	#name : #MDCDemoScreen,
	#superclass : #MDCDemoComponent,
	#category : #'Material-Components-Demo-Core'
}

{ #category : #accessing }
MDCDemoScreen class >> description [
	"I should return a String that is the global description of the component."
	
	^ self subclassResponsibility
]

{ #category : #accessing }
MDCDemoScreen class >> icon [
	self subclassResponsibility 
]

{ #category : #accessing }
MDCDemoScreen class >> iconUrl [
	^ MDCDemoLibrary urlOf: self icon
]

{ #category : #accessing }
MDCDemoScreen class >> pathName [
	^ self title copyWithout: $ 
]

{ #category : #accessing }
MDCDemoScreen class >> title [
	"I should return the title of the component screen."

	^ self subclassResponsibility
]

{ #category : #accessing }
MDCDemoScreen >> description [
	^ self class description
]

{ #category : #accessing }
MDCDemoScreen >> pathName [
	^ self class pathName
]

{ #category : #rendering }
MDCDemoScreen >> render: componentsMap fullWidth: aBoolean on: html [
	self flag: #todo.
	html div
		class: 'snippet-group';
		class: 'is-full-width' if: aBoolean;
		with: [ html div
				class: 'snippet-header';
				with: [ html div
						class: 'snippet-demos';
						with: [ html div class: 'snippet-demo-padding'.
							componentsMap
								valuesDo: [ :symbol | 
									html div
										class: 'snippet-demo';
										with: [ html div
												class: 'snippet-demo-container';
												class: (symbol copyWithout: $:);
												with: [ self perform: symbol with: html ] ] ].
							html div class: 'snippet-demo-padding' ].
					html div
						class: 'snippet-captions';
						with: [ html div class: 'snippet-caption-padding'.
							componentsMap
								keysDo: [ :label | 
									html div
										class: 'snippet-caption';
										with: label ].
							html div class: 'snippet-caption-padding' ] ].
			html div
				class: 'snippet-code';
				with: [ componentsMap
						valuesDo: [ :symbol | 
							html
								preformatted: [ html code
										class: 'smalltalk';
										with: (self codeOf: symbol) ] ] ] ]
]

{ #category : #rendering }
MDCDemoScreen >> render: componentsMap on: html [
	self render: componentsMap fullWidth: false on: html
]

{ #category : #rendering }
MDCDemoScreen >> renderContentOn: html [
	self flag: #todo.
	html div
		mdcClass: 'components__page';
		with: [ html div
				mdcClass: 'component-title';
				with: [ html heading
						level3;
						with: self title.
					html paragraph: self description.
					"self renderWarningMessageOn: html" ].
			self renderScreenContentOn: html ]
]

{ #category : #rendering }
MDCDemoScreen >> renderScreenContentOn: html [
	self subclassResponsibility
]

{ #category : #rendering }
MDCDemoScreen >> renderTocOn: html [
	self flag: #todo.
	"html div
		class: 'docs-toc';
		with: [ html unorderedList
				class: 'navigation';
				with: [ self sections
						keysAndValuesDo: [ :id :label | 
							html
								listItem: [ html anchor
										url: id;
										with: label ] ] ] ]"
]

{ #category : #rendering }
MDCDemoScreen >> renderWarningMessageOn: html [
	self flag: #todo.
	self warningMessage ifNil: [ ^ self ].
	
	html div
		class: 'mdl-demo-warning';
		mdlTypographyBody2;
		with: 'Warning: ', self warningMessage
]

{ #category : #accessing }
MDCDemoScreen >> sections [
	"Sections serve when the demo page is too big and needs to be divided."

	^ OrderedDictionary new
]

{ #category : #accessing }
MDCDemoScreen >> title [
	^ self class title
]

{ #category : #accessing }
MDCDemoScreen >> warningMessage [
	"Potential warning message to display"

	^ nil
]
