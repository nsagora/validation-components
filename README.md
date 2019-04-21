[Validation Toolkit][url-validation-toolkit] · __Validation Components__

-------

# Maintenance Status

[Validation Components][url-validation-components] is now an integrated part of [Validation Toolkit][url-validation-toolkit].

For more details on how you can empower data validation in your projects, checkout [Validation Toolkit][url-validation-toolkit] 😋.

# Validation Components
[![badge-travis]][url-travis] [![badge-codecov]][url-codecov] [![badge-carthage]][url-carthage] [![badge-license]][url-license] [![badge-twitter]][url-twitter] [![badge-version]][url-validation-components]
 [![badge-validation-toolkit]][url-validation-toolkit]

1. [Introduction](#introduction)
2. [Requirements](#requirements)
3. [Installation](#installation)
	- [Carthage](#carthage)
	- [CocoaPods](#cocoapods)
	- [Swift Package Manager](#swift-package-manager)
	- [Manually](#manually)
4. [Usage Examples](#usage-examples)
	- [Email Predicate](#email-predicate)
	- [URL Predicate](#url-predicate)
	- [Pair Matching Predicate](#pair-matching-predicate)
6. [Contribute](#contribute)
7. [Meta](#meta)

## Introduction

`Validation Components` extends the [`ValidationToolkit`][url-validation-toolkit] framework by offering a collection of common validation predicates that most of the projects can benefit of.

## Requirements
- iOS 8.0+ / macOS 10.10+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 8.1+
- Swift 3.0+

## Installation

Please note that `ValidationComponents` requires [`ValidationToolkit`][url-validation-toolkit]. 

### Carthage

You can use [Carthage][url-carthage] to install `ValidationComponents` by adding it to your [`Cartfile`][url-carthage-cartfile]:

```
github "nsagora/validation-components"
```

Run `carthage update` to build the framework and drag the built `ValidationComponents.framework` into your Xcode project.

<details>
<summary>Setting up Carthage</summary>

[Carthage][url-carthage] is a decentralised dependency manager that builds your dependencies and provides you with binary frameworks.

You can install [Carthage][url-carthage] with [Homebrew][url-homebrew] using the following command:

```bash
$ brew update
$ brew install carthage
```

</details>

### CocoaPods

You can use [CocoaPods][url-cocoapods] to install `ValidationComponents` by adding it to your [`Podfile`][url-cocoapods-podfile]:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target 'YOUR_TARGET_NAME' do
	pod 'ValidationComponents'
end
```

Then, run the following command:

```bash
$ pod install
```

Note that this requires CocoaPods version 1.0.0, and your iOS deployment target to be at least 8.0.

<details>
<summary>Setting up CocoaPods</summary>

[CocoaPods][url-cocoapods] is a dependency manager for Cocoa projects. You can install it with the following command:

```
$ gem install cocoapods
```
</details>


### Swift Package Manager

You can use the [Swift Package Manager][url-swift-package-manager] to install `ValidationComponents` by adding it to your `Package.swift` file:

```swift
import PackageDescription

let package = Package(
    name: "YOUR_PROJECT_NAME",
    targets: [],
    dependencies: [
        .Package(url: "https://github.com/nsagora/validation-components", majorVersion: 1),
    ]
)
```

Note that the [Swift Package Manager][url-swift-package-manager] is still in early design and development, for more information checkout its [GitHub Page][url-swift-package-manager-github].

### Manually
To use this library in your project manually you may:

1. for Projects, just drag the `Sources` folder into the project tree
2. for Workspaces, include the whole `ValidationComponents.xcodeproj`

## Usage example
For a comprehensive list of examples try the `ValidationComponents.playground`:

1. Download the repository locally on your machine
2. Run `carthage update` to build the required version of `ValidationToolkit`

<details>
<summary>Setting up Carthage</summary>

[Carthage][url-carthage] is a decentralised dependency manager that builds your dependencies and provides you with binary frameworks.

You can install [Carthage][url-carthage] with [Homebrew][url-homebrew] using the following command:

```bash
$ brew update
$ brew install carthage
```
</details> 

3. Open `ValidationComponents.workspace`
4. Build `ValidationComponents iOS` target
5. Select the `ValidationComponents` playgrounds from the Project navigator.

### Email Predicate
Use a `EmailPredicate` to evaluate if a given email address is syntactically valid.

```swift
import ValidationComponents

let predicate = EmailPredicate()
predicate.evaluate(with: "hello@") // returns false
predicate.evaluate(with: "hello@nsagora.com") // returns true
predicate.evaluate(with: "héllo@nsagora.com") // returns true
```

### URL Predicate
Use a `URLPredicate` to evaluate if a given URL is syntactically valid.

```swift
import ValidationComponents

let predicate = URLPredicate()
predicate.evaluate(with: "http://www.url.com") // returns true
predicate.evaluate(with: "http:\\www.url.com") // returns false
```

### Pair Matching Predicate
Use a `PairMatchingPredicate` to evaluate if a given pair of values match.

```swift
import ValidationComponents

let predicate = PairMatchingPredicate()
predicate.evaluate(with: ("swift", "swift")) // returns true
predicate.evaluate(with: ("swift", "obj-c")) // returns false
```

## Contribute

We would love you for the contribution to **ValidationComponents**, check the ``LICENSE`` file for more info.

## Meta

This project developed and maintained by the members of [iOS NSAgora][url-nsagora], the community of iOS Developers of Iași, Romania.

Distributed under the [MIT][url-license] license. See `LICENSE` for more information.

[https://github.com/nsagora/validation-components][url-validation-components]

[url-validation-toolkit]: https://github.com/nsagora/validation-toolkit
[url-validation-components]: https://github.com/nsagora/validation-components
[url-nsagora]: https://twitter.com/nsagora
[url-twitter]: https://twitter.com/nsagora
[url-license]: http://choosealicense.com/licenses/mit/
[url-travis]: https://travis-ci.org/nsagora/validation-components
[url-codecov]: https://codecov.io/gh/nsagora/validation-components

[url-carthage]: https://github.com/Carthage/Carthage
[url-carthage-cartfile]: https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile
[url-homebrew]: http://brew.sh/

[url-cocoapods]: https://cocoapods.org
[url-cocoapods-podfile]: https://guides.cocoapods.org/syntax/podfile.html

[url-swift-package-manager]: https://swift.org/package-manager
[url-swift-package-manager-github]: https://github.com/apple/swift-package-manager

[badge-validation-toolkit]: https://img.shields.io/badge/validation%20toolkit-0.5.0-blue.svg?style=flat
[badge-version]: https://img.shields.io/badge/version-0.4.0-blue.svg?style=flat
[badge-twitter]: https://img.shields.io/badge/twitter-%40nsgaora-blue.svg?style=flat
[badge-license]: https://img.shields.io/badge/license-MIT-blue.svg?style=flat
[badge-travis]: https://travis-ci.org/nsagora/validation-components.svg?branch=develop
[badge-codecov]: https://codecov.io/gh/nsagora/validation-components/branch/develop/graph/badge.svg
[badge-carthage]: https://img.shields.io/badge/carthage-compatible-4BC51D.svg?style=flat
