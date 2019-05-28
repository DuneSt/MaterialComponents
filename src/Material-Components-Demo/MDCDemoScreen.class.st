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
MDCDemoScreen >> actualClasses [
	"I should return the actual class of the element targetted by the screen."

	^ self subclassResponsibility
]

{ #category : #accessing }
MDCDemoScreen >> codeOf: aSymbol [
	"I take a method selector I contains and return his source code without the declaration."

	^ String streamContents: [ :stream | (self class sourceCodeAt: aSymbol) lines allButFirst do: [ :ea | stream nextPutAll: ea ] separatedBy: [ stream nextPutAll: GRPlatform current newline ] ]
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
	html div
		mdcClass: 'snippet-group';
		class: 'mdc-is-full-width' if: aBoolean;
		with: [ html div: [ html div
						mdcClass: 'snippet-demos';
						with: [ html mdcDemoPadding.
							componentsMap
								valuesDo: [ :symbol | 
									html div
										mdcClass: 'snippet-demo';
										with: [ html div
												mdcClass: 'snippet-demo-container';
												mdcClass: (symbol copyWithout: $:);
												with: [ self perform: symbol with: html ] ] ].
							html mdcDemoPadding ].
					html div
						mdcClass: 'snippet-captions';
						with: [ html mdcDemoPadding.
							componentsMap
								keysDo: [ :label | 
									html div
										mdcClass: 'snippet-caption';
										with: label ].
							html mdcDemoPadding ] ].
			html div
				mdcClass: 'snippet-code';
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
MDCDemoScreen >> renderConstructorsOf: class on: html [
	(Pragma allNamed: #mdcConstructor:description: in: class)
		ifNotEmpty: [ :pragmas | 
			html paragraph: 'Constructors: '.
			html
				table: [ html
						tableHead: [ html
								tableRow: [ html
										tableHeading: 'Selector';
										tableHeading: 'Receiver';
										tableHeading: 'Description' ] ].
					html
						tableBody: [ pragmas
								do: [ :pragma | 
									html
										tableRow: [ html
												tableData: [ html code: '#' , (pragma argumentAt: 1) ];
												tableData: [ html code: 'WAHtmlCanvas' ];
												tableData: (pragma argumentAt: 2) ] ] ] ] ]
]

{ #category : #rendering }
MDCDemoScreen >> renderContentOn: html [
	html div
		mdcClass: 'components__page';
		with: [ html div
				mdcClass: 'component-title';
				with: [ html heading
						level3;
						with: self title.
					html paragraph: self description.
					self renderWarningMessageOn: html ].
			self renderScreenContentOn: html.
			self renderDocumentationOn: html ]
]

{ #category : #rendering }
MDCDemoScreen >> renderDocumentationOn: html [
	html div
		mdcClass: 'documentation';
		with: [ html heading
				level2;
				with: 'API'.
			self actualClasses
				do: [ :class | 
					html heading
						level3;
						with: class printString.
					self renderConstructorsOf: class on: html.
					self renderOptionsOf: class on: html ] ]
]

{ #category : #rendering }
MDCDemoScreen >> renderOptionsOf: class on: html [
	^ (Pragma allNamed: #mdcApi:priority: in: class)
		ifNotEmpty: [ :pragmas | 
			html paragraph: 'Options: '.
			html
				table: [ html
						tableHead: [ html
								tableRow: [ html
										tableHeading: 'Selector';
										tableHeading: 'Description' ] ].
					html
						tableBody: [ (pragmas sorted: [ :pragma | pragma argumentAt: 2 ] ascending)
								do: [ :pragma | 
									html
										tableRow: [ html
												tableData: [ html code: '#' , pragma methodSelector ];
												tableData: (pragma argumentAt: 1) ] ] ] ] ]
]

{ #category : #rendering }
MDCDemoScreen >> renderScreenContentOn: html [
	self subclassResponsibility
]

{ #category : #rendering }
MDCDemoScreen >> renderTocOn: html [
	self flag: #todo.
	1halt.
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
	1halt.
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
