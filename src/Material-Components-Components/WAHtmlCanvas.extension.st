Extension { #name : #WAHtmlCanvas }

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> autoInit [
	self document addLoadScriptFirst: 'window.mdc.autoInit();' js
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBar [
	^ self brush: MCTopAppBar new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBar: aBlock [
	^ self mcTopAppBar with: aBlock
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBarRow [
	^ self brush: MCTopAppBarRow new 
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBarRow: aBlock [
	^ self mcTopAppBarRow
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBarSection [
	^ self brush: MCTopAppBarSection new 
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBarSection: aBlock [
	^ self mcTopAppBarSection
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBarTitle [
	^ self brush: MCTopAppBarTitle new 
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBarTitle: aBlock [
	^ self mcTopAppBarTitle
		with: aBlock;
		yourself
]
