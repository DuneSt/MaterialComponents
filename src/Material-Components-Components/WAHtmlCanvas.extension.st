Extension { #name : #WAHtmlCanvas }

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> autoInit [
	self flag: #todo.
	self document addLoadScriptFirst: 'MDC.initialize()' js
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcAnchorButton [
	^ self brush: MDCAnchorButton new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcAnchorButton: aBlock [
	^ self mdcAnchorButton
		with: aBlock
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcAnchorListItem [
	^ self brush: MDCAnchorListItem new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcAnchorListItem: aBlock [
	^ self mdcAnchorListItem
		with: aBlock
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcButton [
	^ self brush: MDCButton new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcButton: aBlock [
	^ self mdcButton
		with: aBlock
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcButtonLabel [
	^ self brush: MDCButtonLabel new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcButtonLabel: aBlock [
	^ self mdcButtonLabel
		with: aBlock
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcCell [
	^ self brush: MDCCell new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcCell: aBlock [
	^ self mdcCell
		with: aBlock
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcCell: aBlock desktopSize: size [
	^ self mdcCell
		desktopSize: size;
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcCell: aBlock phoneSize: size [
	^ self mdcCell
		phoneSize: size;
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcCell: aBlock size: size [
	^ self mdcCell
		size: size;
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcCell: aBlock tabletSize: size [
	^ self mdcCell
		tabletSize: size;
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcCellDesktop:  dsize tablet: tsize phone: psize with: aBlock [
	^ self mdcCell
		desktopSize: dsize;
		tabletSize: tsize;
		phoneSize: psize;
		with: aBlock;
		yourself
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
WAHtmlCanvas >> mdcGrid [
	^ self brush: MDCGrid new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcGrid: aBlock [
	^ self mdcGrid
		with: aBlock
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcIcon [
	^ self brush: MDCIcon new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcIcon: aBlock [
	^ self mdcIcon
		with: aBlock
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcInnerGrid [
	^ self brush: MDCInnerGrid new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcInnerGrid: aBlock [
	^ self mdcInnerGrid
		with: aBlock
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcList [
	^ self brush: MDCList new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcList: aBlock [
	^ self mdcList
		with: aBlock
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcListItem [
	^ self brush: MDCListItem new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcListItem: aBlock [
	^ self mdcListItem
		with: aBlock
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcListItemText [
	^ self brush: MDCListItemText new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcListItemText: aBlock [
	^ self mdcListItemText
		with: aBlock
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcModalDrawer: aBlock [
	^ self mdcDrawer
		modal;
		with: aBlock;
		yourself
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcNavigationList: aBlock [
	^ self mdcList
		navigation;
		with: aBlock
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
WAHtmlCanvas >> mdcTopAppBarNavigationIcon [
	^ self brush: MDCTopAppBarNavigationIcon new
]

{ #category : #'*Material-Components-Components' }
WAHtmlCanvas >> mdcTopAppBarNavigationIcon: aBlock [
	^ self mdcTopAppBarNavigationIcon
		with: aBlock
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
