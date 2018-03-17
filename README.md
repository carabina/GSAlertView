# GSAlertView

[![CI Status](http://img.shields.io/travis/greenSyntax/GSAlertView.svg?style=flat)](https://travis-ci.org/greenSyntax/GSAlertView)
[![Version](https://img.shields.io/cocoapods/v/GSAlertView.svg?style=flat)](http://cocoapods.org/pods/GSAlertView)
[![License](https://img.shields.io/cocoapods/l/GSAlertView.svg?style=flat)](http://cocoapods.org/pods/GSAlertView)
[![Platform](https://img.shields.io/cocoapods/p/GSAlertView.svg?style=flat)](http://cocoapods.org/pods/GSAlertView)

![Screenshot](screenshot.gif)
![Screenshot](screenshot_2.png)

## Features

- [x] AlertView with Title and it's Description
- [x] Alert with with Title and its Body Image
- [ ] Alert View with Header Icon with Title and body
- [ ] Fotter View with Image on left and text description


## Installation

GSAlertView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'GSAlertView'
```

## Code

#### AlertView with Title and it's Description

```swift

let alert = GSAlertView(title: "Hello World", image: imageSample)
alert.show(animated: true)

```

#### Alert with with Title and its Body Image

```swift

let alert = let alert = GSAlertView(title: "Hello World", description:"This is my description")
alert.show(animated: true)

```

## Author

[Abhishek Kumar Ravi](https://greensyntax.co.in)

## License

GSAlertView is available under the MIT license. See the LICENSE file for more info.
