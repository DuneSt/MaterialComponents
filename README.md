# MaterialComponents for Seaside <img src="https://raw.githubusercontent.com/DuneSt/MaterialComponents/master/resources/logos/logoFull.png" width="50">

Master [![Build Status](https://travis-ci.org/DuneSt/MaterialComponents.svg?branch=master)](https://travis-ci.org/DuneSt/MaterialComponents)| Development [![Build Status](https://travis-ci.org/DuneSt/MaterialComponents.svg?branch=development)](https://travis-ci.org/DuneSt/MaterialComponents)

Coverage:

[![Coverage Status](https://coveralls.io/repos/github/DuneSt/MaterialComponents/badge.svg)](https://coveralls.io/github/DuneSt/MaterialComponents)

**THIS PROJECT IS A WIP**

This project has as first goal to bind the Google's Material Components Web project to Seaside and as second goal to build widgets on top of Material Design to help [Seaside](https://github.com/SeasideSt/Seaside) developers in creating fast web application with flat design. For a tutorial on Seaside check [http://book.seaside.st](http://book.seaside.st).

- [Documentation](#documentation)
  * [Version management](#version-management)
  * [Install](#install)
  * [Getting started](#getting-started)
  * [Examples](#examples)
  * [Latest supported Dependencies](#latest-supported-dependencies)
  * [Smalltalk versions compatibility](#smalltalk-versions-compatibility)
  * [Under the hood](#under-the-hood)
  * [Contact](#contact)

# Documentation

## Version management 

This project use semantic versionning to define the releases. This mean that each stable release of the project will get associate a version number of the form `vX.Y.Z`. 

- **X** define the major version number
- **Y** define the minor version number 
- **Z** define the patch version number

When a release contains only bug fixes, the patch number increase. When the release contains new features backward compatibles, the minor version increase. When the release contains breaking changes, the major version increase. 

Thus, it should be safe to depend on a fixed major version and moving minor version of this project.

## Install
To install MaterialComponents on your Pharo image you can just execute the following script:

```Smalltalk
    Metacello new
    	githubUser: 'DuneSt' project: 'MaterialComponents' commitish: 'master' path: 'src';
    	baseline: 'MaterialComponents';
    	onWarningLog;
    	load
```

To add MaterialComponents Seaside to your baseline just add this:

```Smalltalk
    spec
    	baseline: 'MaterialComponents'
    	with: [ spec repository: 'github://DuneSt/MaterialComponents:master/src' ]
```

Note that you can replace the #master by another branch as #development or a tag as #v1.0.0, #v1.? or #v1.2.? .

## Getting started

**TODO**

## Examples

You can find multiple examples when the application will be installed at the url: [http://localhost:8080/MDCDemo](http://localhost:8080/MDCDemo)

When you install in a plain Pharo image you need to start the seaside server first by opening `World menu > Tools > Seaside Control Panel` and adding and starting an appropropriate `ZnZincServerAdaptor`. If you do not use port 8080, change the port in the URL.

You can also open the demo from the menu bar under `MaterialComponents`.

You can find a demo at: [https://mdc.ferlicot.fr/](https://mdc.ferlicot.fr/)


## Latest supported Dependencies

- [Material Icons v3.0.1](https://github.com/google/material-design-icons/releases/tag/3.0.1)
- [Material Components Web v3.0.0-0](https://github.com/material-components/material-components-web/releases/tag/v3.0.0-0)

## Smalltalk versions compatibility

| MDL version 	| Compatible Pharo versions 	| Compatible Gemstone versions 	|
|-------------	|---------------------------	|---------------------------	|
| Dev       	| Pharo 61, 70, 80				| None							|


## Under the hood

Understanding what is going on under the hood is always useful. Have a look at [https://material.io/develop/web/](https://material.io/develop/web/).

## Contact

If you have any question or problem do not hesitate to open an issue or contact cyril (a) ferlicot.me 
