Extension { #name : #WAHtmlCanvas }

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> autoInit [
	self document addLoadScriptFirst: 'window.mdc.autoInit();' js
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBar [
	^ self brush: MDCTopAppBar new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBar: aBlock [
	^ self mcTopAppBar with: aBlock
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBarRow [
	^ self brush: MDCTopAppBarRow new 
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBarRow: aBlock [
	^ self mcTopAppBarRow
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBarSection [
	^ self brush: MDCTopAppBarSection new 
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBarSection: aBlock [
	^ self mcTopAppBarSection
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBarTitle [
	^ self brush: MDCTopAppBarTitle new 
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBarTitle: aBlock [
	^ self mcTopAppBarTitle
		with: aBlock;
		yourself
]
