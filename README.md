# cocoapods-wholemodule

A CocoaPods plugin to use Whole Module Optimization for Swift files when compiling in release mode.

CocoaPods sensibly uses Apple's defaults for the Pods project, which means that if you want your pods to run with Whole Module Optimization enabled in release mode, you need to add a post install hook. The `cocoapods-wholemodule` plugin takes care of the boilerplate so you can add that in just one line.

## Installation

```bash
$ gem install cocoapods-wholemodule
```

## Usage with default configuration names

Add cocoapods-wholemodule to your Podfile:

```ruby
plugin 'cocoapods-wholemodule'
```

Now, for configurations named `Release`, your Swift files will automatically be compiled with Whole Module Optimization enabled.

## Usage with custom configuration names  

Add an option specificying which configuration names should be compiled with Whole Module Optimization enabled:

```ruby
plugin 'cocoapods-wholemodule', :wholemodule => 'CustomRelease'
```

Now, for configurations named `CustomRelease`, your Swift files will automatically be compiled with Whole Module Optimization enabled.

To specify multiple configuration names, supply an array of names:

```ruby
plugin 'cocoapods-wholemodule', :wholemodule => 'CustomRelease, SpecialName]'
```

Now, for configurations named `CustomRelease` and `SpecialName`, your Swift files will automatically be compiled with Whole Module Optimization enabled.