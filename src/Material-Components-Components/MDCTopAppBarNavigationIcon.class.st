Class {
	#name : #MDCTopAppBarNavigationIcon,
	#superclass : #WAAnchorTag,
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
	self ensureId.
	canvas document
		addLoadScript:
			('const drawer = document.querySelector(".mdc-drawer").MDCDrawer;
const topAppBar = document.querySelector("#{1}").closest(".mdc-top-app-bar").MDCTopAppBar;
topAppBar.listen("MDCTopAppBar:nav", () => \{
  drawer.open = !drawer.open;
});' format: {self id}) js
]

{ #category : #options }
MDCTopAppBarNavigationIcon >> openModalDrawerOfId: aString [
	self ensureId.
	canvas document
		addLoadScript:
			('const drawer = document.querySelector("#{1}").MDCDrawer;
const topAppBar = document.querySelector("#{2}").closest(".mdc-top-app-bar").MDCTopAppBar;
topAppBar.listen("MDCTopAppBar:nav", () => \{
  drawer.open = !drawer.open;
});' format: {aString . self id}) js
]
