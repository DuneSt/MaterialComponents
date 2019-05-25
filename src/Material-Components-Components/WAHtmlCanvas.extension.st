Extension { #name : #WAHtmlCanvas }

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> autoInit [
	self document addLoadScriptFirst: 'window.mdc.autoInit();' js
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcDrawer [
	^ self brush: MDCDrawer new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcDrawer: aBlock [
	^ self mdcDrawer
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcDrawerContent [
	^ self brush: MDCDrawerContent new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcDrawerContent: aBlock [
	^ self mdcDrawerContent
		with: aBlock
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcModalDrawerId: aString with: aBlock [
	^ self mdcDrawer
		modalWithId: aString;
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcTopAppBar [
	^ self brush: MDCTopAppBar new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcTopAppBar: aBlock [
	^ self mdcTopAppBar
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcTopAppBarRow [
	^ self brush: MDCTopAppBarRow new 
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcTopAppBarRow: aBlock [
	^ self mdcTopAppBarRow
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcTopAppBarSection [
	^ self brush: MDCTopAppBarSection new 
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcTopAppBarSection: aBlock [
	^ self mdcTopAppBarSection
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcTopAppBarTitle [
	^ self brush: MDCTopAppBarTitle new 
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcTopAppBarTitle: aBlock [
	^ self mdcTopAppBarTitle
		with: aBlock;
		yourself
]
