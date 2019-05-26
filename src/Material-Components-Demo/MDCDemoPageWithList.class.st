"
Description
--------------------

An abstract page to manage pages with list of examples to display.
"
Class {
	#name : #MDCDemoPageWithList,
	#superclass : #MDCDemoPage,
	#instVars : [
		'selectedScreen'
	],
	#category : #'Material-Components-Demo-Core'
}

{ #category : #testing }
MDCDemoPageWithList class >> isAbstract [
	^ self = MDCDemoPageWithList
]

{ #category : #testing }
MDCDemoPageWithList >> hasScreenSelected [
	^ self selectedScreen isNotNil
]

{ #category : #hooks }
MDCDemoPageWithList >> initialRequest: aRequest [
	| consumer pageName |
	super initialRequest: aRequest.
	consumer := self requestContext consumer.
	
	"If we are at end, nothing to manage"
	consumer atEnd ifTrue: [ ^ self ].
	
	pageName := consumer peek asLowercase. "Do not make URLs case sensitive in that case"
	
	"Try to find a page corresponding"
	self sortedScreens
		detect: [ :each | each pathName asLowercase = pageName ]
		ifFound: [ :class | 
			self selectClass: class.

			"If we find a page, we pop the subpart of the path corresponding to the page."
			consumer next ]
]

{ #category : #rendering }
MDCDemoPageWithList >> renderContentOn: html [
	html mdcLeftPanel
		class: 'mdc-components__nav';
		with: [ html
				mdcList: [ self sortedScreens
						do: [ :class | 
							html mdcAnchorListItem
								callback: [ self selectClass: class ];
								isActiveIf: self selectedScreen class = class;
								with: [ html image
										mdcListItemGraphic;
										url: class iconUrl.
									html mdcListItemText: class title ] ] ].
			html mdcLeftPanelResizer ].
	html div
		class: 'mdc-components__pages';
		with: [ self renderPageContentOn: html ]
]

{ #category : #rendering }
MDCDemoPageWithList >> renderPageContentOn: html [
	self flag: #todo.
	self selectedScreen
		ifNil: [ html section
				class: 'mdc-doc';
				class: 'mdc-components__page';
				class: 'mdc-components__page-index';
				with: [ "html section
						beCell: 12;
						with: [ html
								definitionList: [ html definitionTerm: self class pageName.
									html definitionData: [ self renderPageDescriptionOn: html ] ] ]." html div class: 'mdl-components-img' ] ]
		ifNotNil: [ :screen | html render: screen ]
]

{ #category : #rendering }
MDCDemoPageWithList >> renderPageDescriptionOn: html [
	self subclassResponsibility
]

{ #category : #accessing }
MDCDemoPageWithList >> screens [
	^ self subclassResponsibility
]

{ #category : #actions }
MDCDemoPageWithList >> selectClass: screen [
	self
		selectedScreen:
			(self selectedScreen class = screen
				ifTrue: [ nil ]
				ifFalse: [ screen new ])
]

{ #category : #accessing }
MDCDemoPageWithList >> selectedScreen [
	^ selectedScreen
]

{ #category : #accessing }
MDCDemoPageWithList >> selectedScreen: aScreen [
	selectedScreen := aScreen
]

{ #category : #accessing }
MDCDemoPageWithList >> sortedScreens [
	^ self screens sorted: [ :a :b | a title < b title ]
]

{ #category : #updating }
MDCDemoPageWithList >> updateUrl: aUrl [
	super updateUrl: aUrl.
	self selectedScreen ifNotNil: [ :screen | aUrl addToPath: screen pathName ]
]
