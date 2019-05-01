"
Description
--------------------

Root component of MC for Seaside demo.
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	componentInstances:			<aDictionary>	A dictionary keeping for each component class, an instance. This instance can be use when the user change of page to come pack to a previous page.
	componentToDisplay:		<aComponent>	The current page to display as the root content.
	footer:						<aComponent>	The header of the page.
	header:						<aComponent>	The footer of the page.

"
Class {
	#name : #MCDemo,
	#superclass : #MCDemoComponent,
	#instVars : [
		'header',
		'footer',
		'componentToDisplay',
		'componentInstances'
	],
	#category : #'Material-Components-Demo-Core'
}

{ #category : #testing }
MCDemo class >> canBeRoot [
	^ true
]

{ #category : #initialization }
MCDemo class >> initialize [
	self flag: #todo.
	self environment at: #WADevelopmentConfiguration ifPresent: [ :class | WAAdmin applicationDefaults removeParent: class instance ].
	^ (WAAdmin register: self asApplicationAt: 'MCDemo')
		preferenceAt: #sessionClass put: MCDemoSession;
		addLibrary: JQDeploymentLibrary;
		"addLibrary: MDLLibrary;
		addLibrary: MDLDemoLibrary;"
		yourself
]

{ #category : #'world menu' }
MCDemo class >> menuCommandOn: aBuilder [
	<worldMenu>
	(aBuilder item: #'Open demo in default browser')
		order: 2;
		iconName: #nautilus;
		parent: #MaterialComponents;
		help: 'Open the demo in the default web browser';
		action: [ self open ].
]

{ #category : #'instance creation' }
MCDemo class >> open [
	<script>
	| port url |
	WAServerManager default adaptors
		ifEmpty: [ (ZnZincServerAdaptor port: (port := 8085)) start ]
		ifNotEmpty: [ :adaptors | 
			adaptors
				detect: #isRunning
				ifFound: [ :anAdaptor | port := anAdaptor server port ]
				ifNone: [ (ZnZincServerAdaptor port: (port := 8085)) start ] ].
	url := 'http://localhost:' , port asString , '/MCDemo'.
	self flag: #pharo6.
	SystemVersion current major < 7
		ifTrue: [ self class environment
				at: #OSProcess
				ifPresent: [ :class | class command: 'open ' , url ]
				ifAbsent: [ self inform: 'Open ' , url , ' or install OSProcess.' ] ]
		ifFalse: [ WebBrowser openOn: url ]
]

{ #category : #versions }
MCDemo class >> version [
	^ 'dev'
]

{ #category : #hooks }
MCDemo >> children [
	^ { self header. self componentToDisplay. self footer }
]

{ #category : #accessing }
MCDemo >> componentInstances [
	^ componentInstances
]

{ #category : #accessing }
MCDemo >> componentInstances: anObject [
	componentInstances := anObject
]

{ #category : #accessing }
MCDemo >> componentToDisplay [
	"Component instance to display in the application."
	
	^ componentToDisplay
]

{ #category : #accessing }
MCDemo >> componentToDisplay: anObject [
	componentToDisplay := anObject
]

{ #category : #components }
MCDemo >> defaultFooter [
	self flag: #todo.
	^ nil
]

{ #category : #components }
MCDemo >> defaultHeader [
	self flag: #todo.
	^ nil
]

{ #category : #updating }
MCDemo >> displayInstanceOf: aComponentClass [
	self componentToDisplay: (self componentInstances at: aComponentClass ifAbsentPut: [ aComponentClass new ])
]

{ #category : #accessing }
MCDemo >> footer [
	^ footer
]

{ #category : #accessing }
MCDemo >> footer: anObject [
	footer := anObject
]

{ #category : #accessing }
MCDemo >> header [
	^ header
]

{ #category : #accessing }
MCDemo >> header: anObject [
	header := anObject
]

{ #category : #hooks }
MCDemo >> initialRequest: aRequest [
	self flag: #todo.
"	| consumer pageName |
	super initialRequest: aRequest.
	consumer := self requestContext consumer."
	
	"If we are at end, nothing to manage"
	"consumer atEnd ifTrue: [ ^ self ]."
	
	"pageName := consumer peek asLowercase." "Do not make URLs case sensitive in that case"
	
	"Try to find a page corresponding"
	"self header possiblePages
		detect: [ :each | each pathName asLowercase = pageName ]
		ifFound: [ :class | 
			self displayInstanceOf: class."

			"If we find a page, we pop the subpart of the path corresponding to the page."
			"consumer next ]"
]

{ #category : #initialization }
MCDemo >> initialize [
	self flag: #todo.
	super initialize.
	self header: self defaultHeader.
	self footer: self defaultFooter.
	self session rootComponent: self.
	self componentInstances: Dictionary new.
	"self displayInstanceOf: MCDemoPage pagesToDisplay first"
]

{ #category : #rendering }
MCDemo >> renderContentOn: html [
	self flag: #todo.
	html text: 'TODO'
]

{ #category : #updating }
MCDemo >> updateRoot: anHtmlRoot [
	self flag: #todo.
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'Demo - Material Components for Seaside'.
	anHtmlRoot meta
		attributeAt: 'name' put: 'viewport';
		content: 'width=device-width, initial-scale=1'.
	self updateTabIconRoot: anHtmlRoot.
	anHtmlRoot javascript add: 'hljs.initHighlightingOnLoad();'
]

{ #category : #updating }
MCDemo >> updateTabIconRoot: anHtmlRoot [
	self flag: #todo.
	"anHtmlRoot link
		relationship: 'apple-touch-icon';
		attributeAt: 'sizes' put: '120x120';
		url: (MCDemoLibrary urlOf: 'appleicon120x120Png').
	#('32x32' '16x16')
		do: [ :size | 
			anHtmlRoot link
				relationship: 'icon';
				type: 'image/png';
				url: (MCDemoLibrary urlOf: 'favicon' , size , 'Png');
				attributeAt: 'sizes' put: size ].
	anHtmlRoot link
		relationship: 'manifest';
		url: (MCDemoLibrary urlOf: 'siteWebmanifest').
	anHtmlRoot meta
		name: 'msapplication-TileColor';
		content: '#da532c'.
	anHtmlRoot link
		relationship: 'mask-icon';
		attributeAt: 'color' put: '#5bbad5';
		url: (MCDemoLibrary urlOf: 'safaripinnedtabSvg').
	anHtmlRoot meta
		name: 'theme-color';
		content: '#ffffff'"
]

{ #category : #updating }
MCDemo >> updateUrl: aUrl [
	self flag: #todo.
	"super updateUrl: aUrl.
	aUrl addToPath: (self componentToDisplay pathName)"
]

{ #category : #accessing }
MCDemo >> version [
	^ self class version
]
