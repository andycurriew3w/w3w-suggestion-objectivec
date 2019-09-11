# <img valign='top' src="https://what3words.com/assets/images/w3w_square_red.png" width="64" height="64" alt="what3words">&nbsp;w3w-objective-c-autosuggest

A objective-c library to use What3words autosuggest

# Overview

The what3words objective-c autosuggest is a simple UITExtfield extension, which gives you access to, 

* All properties of UITextfield 
* Dropdown search results 
* Custom `IBInspectable` properties 

This repository contains an Xcode project that builds a framework, and tests for the autosuggest component.  You may instead choose to skip the framework and simply drag and drop the `W3wGeocoder.h,  W3wGeocoder.m` & `W3wtextfield.h, W3wtextfield.m `files into your project.


# Installation

#### CocoaPods (iOS 8+, OS X 10.10+)

You can use [CocoaPods](http://cocoapods.org/) to install `w3w-objectivec-wrapper`by adding it to your `Podfile`:

```ruby
platform :ios, '8.0'
use_frameworks!

target 'MyApp' do
    pod 'W3wSuggestionField', :git => 'https://github.com/selvaw3w/w3w-suggestion-objectivec.git'
end
```

#### Carthage (iOS 8+, OS X 10.10+)

You can use [Carthage](https://github.com/Carthage/Carthage) to install `w3w-objectivec-wrapper` by adding it to your `Cartfile`:

```
github "selvaw3w/w3w-suggestion-objectivec"
```

#### Manually

You can manually drag `W3wGeocoder.h,  W3wGeocoder.m` & `W3wtextfield.h, W3wtextfield.m ` into the project tree.  You can then skip the import statement in your code.

### Import

If you used the framework via a package manager then use the following:

```objectivec
#import <W3wTextField.h>
```

Note: If you skipped the framework and manually dragged and dropped the`W3wGeocoder.h,  W3wGeocoder.m` & `W3wtextfield.h, W3wtextfield.m ` then you don't need use the import statement.

### Getting Started
Fire up Xcode and create a new `Single View App` project with `objective-c` as a language. Xcode will create your new objective-c project

### Step 1:
 Select `ViewController.m` and add the following code after `viewDidLoad()`:

```objective-c
@property (weak, nonatomic) IBOutlet W3wTextField *suggestion;
```

Now, open Main.storyboard and drag a `UITextfield` to the screen from the Object library. The last thing to do is to connect the action to the button. Click the yellow View Controller icon in the View Controller scene. 

From the Connections Inspector (last tab on the right sidebar), click and drag the open circle next to `suggestionField ` to newly created `UITextfield` in the storyboard.

### Step 2:

Initialise the API by,

```objective-c
    [self.suggestion setAPIKey:@"<Secret API Key>"];
```

#### Authentication

To use this library you’ll need a what3words API key, which can be signed up for [here](https://accounts.what3words.com/register?dev=true).


### Step 3:

To get selected three word address from dropdown menu, 

```objective-c
 [self.suggestion didSelect:^(NSString *selectedText) {
        NSLog(@"three_word_address%@", selectedText);
    }];
```
