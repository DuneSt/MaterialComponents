Class {
	#name : #MDCTopAppBarNavigationIcon,
	#superclass : #WAButtonTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Layout'
}

{ #category : #initialization }
MDCTopAppBarNavigationIcon >> initialize [
	super initialize.
	self mdcClass: 'top-app-bar__navigation-icon'.
	self class: 'material-icons'
]

{ #category : #options }
MDCTopAppBarNavigationIcon >> openModalDrawer [
	canvas document addLoadScript: 'MDC.drawer.bindDrawerOpeningToTopAppBar()' js
]
