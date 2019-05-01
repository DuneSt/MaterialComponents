Extension { #name : #WAHtmlCanvas }

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mcTopAppBar [
	^ self
		brush: MCTopAppBar new;
		yourself
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
