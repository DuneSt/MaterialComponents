"
Description
--------------------

Root component of MDC for Seaside demo.
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	componentInstances:			<aDictionary>	A dictionary keeping for each component class, an instance. This instance can be use when the user change of page to come pack to a previous page.
	componentToDisplay:		<aComponent>	The current page to display as the root content.
	footer:						<aComponent>	The header of the page.
	header:						<aComponent>	The footer of the page.

"
Class {
	#name : #MDCDemo,
	#superclass : #MDCDemoComponent,
	#instVars : [
		'header',
		'footer',
		'componentToDisplay',
		'componentInstances'
	],
	#classVars : [
		'Version'
	],
	#category : #'Material-Components-Demo-Core'
}

{ #category : #testing }
MDCDemo class >> canBeRoot [
	^ true
]

{ #category : #initialization }
MDCDemo class >> demoName [
	^ 'mdc'
]

{ #category : #initialization }
MDCDemo class >> initialize [
	self flag: #todo.
	self environment at: #WADevelopmentConfiguration ifPresent: [ :class | WAAdmin applicationDefaults removeParent: class instance ].
	^ (WAAdmin register: self asApplicationAt: self demoName)
		preferenceAt: #sessionClass put: MDCDemoSession;
		preferenceAt: #trackingStrategy put: WACookieForBrowserIPForCrawlerTrackingStrategy new;
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDCLibrary;
		addLibrary: MDCDemoLibrary;
		yourself
]

{ #category : #'world menu' }
MDCDemo class >> menuCommandOn: aBuilder [
	<worldMenu>
	(aBuilder item: #'Open demo in default browser')
		order: 2;
		iconName: #nautilus;
		parent: #MaterialComponents;
		help: 'Open the demo in the default web browser';
		action: [ self open ].
]

{ #category : #'instance creation' }
MDCDemo class >> open [
	<script>
	| port url |
	WAServerManager default adaptors
		ifEmpty: [ (ZnZincServerAdaptor port: (port := 8086)) start ]
		ifNotEmpty: [ :adaptors | 
			adaptors
				detect: #isRunning
				ifFound: [ :anAdaptor | port := anAdaptor server port ]
				ifNone: [ (ZnZincServerAdaptor port: (port := 8086)) start ] ].
	url := 'http://localhost:' , port asString , '/' , self demoName.
	WebBrowser openOn: url
]

{ #category : #versions }
MDCDemo class >> version [
	^ Version ifNil: [ 'dev' ]
]

{ #category : #versions }
MDCDemo class >> version: aString [
	Version := aString
]

{ #category : #hooks }
MDCDemo >> children [
	^ { self header. self componentToDisplay. self footer }
]

{ #category : #accessing }
MDCDemo >> componentInstances [
	^ componentInstances
]

{ #category : #accessing }
MDCDemo >> componentInstances: anObject [
	componentInstances := anObject
]

{ #category : #accessing }
MDCDemo >> componentToDisplay [
	"Component instance to display in the application."
	
	^ componentToDisplay
]

{ #category : #accessing }
MDCDemo >> componentToDisplay: anObject [
	componentToDisplay := anObject
]

{ #category : #components }
MDCDemo >> defaultFooter [
	self flag: #todo.
	^ nil
]

{ #category : #components }
MDCDemo >> defaultHeader [
	^ MDCDemoHeader new
]

{ #category : #updating }
MDCDemo >> displayInstanceOf: aComponentClass [
	self componentToDisplay: (self componentInstances at: aComponentClass ifAbsentPut: [ aComponentClass new ])
]

{ #category : #accessing }
MDCDemo >> footer [
	^ footer
]

{ #category : #accessing }
MDCDemo >> footer: anObject [
	footer := anObject
]

{ #category : #accessing }
MDCDemo >> header [
	^ header
]

{ #category : #accessing }
MDCDemo >> header: anObject [
	header := anObject
]

{ #category : #hooks }
MDCDemo >> initialRequest: aRequest [
	| consumer pageName |
	super initialRequest: aRequest.
	consumer := self requestContext consumer.
	
	"If we are at end, nothing to manage"
	consumer atEnd ifTrue: [ ^ self ].
	
	pageName := consumer peek asLowercase. "Do not make URLs case sensitive in that case"
	
	"Try to find a page corresponding"
	self header possiblePages
		detect: [ :each | each pathName asLowercase = pageName ]
		ifFound: [ :class | 
			self displayInstanceOf: class.

			"If we find a page, we pop the subpart of the path corresponding to the page."
			consumer next ]
]

{ #category : #initialization }
MDCDemo >> initialize [
	super initialize.
	self header: self defaultHeader.
	self footer: self defaultFooter.
	self session rootComponent: self.
	self componentInstances: Dictionary new.
	self flag: #todo.
	self displayInstanceOf: "MDCDemoPage pagesToDisplay first" MDCComponentsDemoPage
]

{ #category : #rendering }
MDCDemo >> renderContentOn: html [
	self flag: #todo.
	html render: self header.
	html div
		class: 'main-content';
		mdcClass: 'components';
		mdcTopAppBarFixedAdjust;
		with: [ html render: self componentToDisplay ].
	html autoInit
]

{ #category : #updating }
MDCDemo >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'Demo - Material Components for Seaside'.
	anHtmlRoot meta
		attributeAt: 'name' put: 'viewport';
		content: 'width=device-width, initial-scale=1'.
	self updateTabIconRoot: anHtmlRoot.
	anHtmlRoot javascript add: 'hljs.initHighlightingOnLoad();' js
]

{ #category : #updating }
MDCDemo >> updateTabIconRoot: anHtmlRoot [
	anHtmlRoot link
		relationship: 'apple-touch-icon';
		attributeAt: 'sizes' put: '120x120';
		url: (MDCDemoLibrary urlOf: 'appleicon120x120Png').
	#('32x32' '16x16')
		do: [ :size | 
			anHtmlRoot link
				relationship: 'icon';
				type: 'image/png';
				url: (MDCDemoLibrary urlOf: 'favicon' , size , 'Png');
				attributeAt: 'sizes' put: size ].
	anHtmlRoot link
		relationship: 'manifest';
		url: (MDCDemoLibrary urlOf: 'siteWebmanifest').
	anHtmlRoot meta
		name: 'msapplication-TileColor';
		content: '#da532c'.
	anHtmlRoot link
		relationship: 'mask-icon';
		attributeAt: 'color' put: '#5bbad5';
		url: (MDCDemoLibrary urlOf: 'safaripinnedtabSvg').
	anHtmlRoot meta
		name: 'theme-color';
		content: '#ffffff'
]

{ #category : #updating }
MDCDemo >> updateUrl: aUrl [
	super updateUrl: aUrl.
	aUrl addToPath: (self componentToDisplay pathName)
]

{ #category : #accessing }
MDCDemo >> version [
	^ self class version
]
