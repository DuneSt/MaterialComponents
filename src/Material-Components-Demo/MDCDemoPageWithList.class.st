"
Description
--------------------

An abstract page to manage pages with list of examples to display.
"
Class {
	#name : #MDCDemoPageWithList,
	#superclass : #MDCDemoPage,
	#instVars : [
		'list',
		'selectedScreen'
	],
	#category : #'Material-Components-Demo-Core'
}

{ #category : #testing }
MDCDemoPageWithList class >> isAbstract [
	^ self = MDCDemoPageWithList
]

{ #category : #components }
MDCDemoPageWithList >> defaultList [
	self flag: #todo.
	^ "(MDLNestedList elements: self sortedScreens)
		iconBlock: [ :class :renderer | 
			renderer anchor
				class: 'mdl-list-icon';
				callback: [ self select: class ];
				with: [ renderer image
						url: class iconUrl ] ];
		listStyle: #demo;
		format: #title;
		helpBlock: #description;
		actionBlock: [ :screen | self select: screen ];
		selectedEntity: self selectedScreen class;
		yourself" nil
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
			self select: class.

			"If we find a page, we pop the subpart of the path corresponding to the page."
			consumer next ]
]

{ #category : #initialization }
MDCDemoPageWithList >> initialize [
	super initialize.
	self list: self defaultList
]

{ #category : #accessing }
MDCDemoPageWithList >> list [
	^ list
]

{ #category : #accessing }
MDCDemoPageWithList >> list: anObject [
	list := anObject
]

{ #category : #rendering }
MDCDemoPageWithList >> renderContentOn: html [
	self flag: #todo.
	"html leftPanel
		class: 'mdl-components__nav';
		shadow: 4;
		with: [ html
				render: self defaultList;
				leftPanelResizer ]."
	html
		mdcList: [ self sortedScreens
				do: [ :class | 
					html mdcAnchorListItem
						callback: [ self select: class ];
						isActiveIf: self selectedScreen class = class;
						with: [ "html image url: class iconUrl." html text: class title ] ] ].
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
MDCDemoPageWithList >> select: screen [
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
