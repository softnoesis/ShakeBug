# ShakeBug

Shakebug allows you to receive feedback from your beta testers or real users and improve the quality of your application in a simple way. Here users just need to shake their mobile and all the data regarding bugs & crashes can be seen by developers through their log in panel. It also helpful to analyse your users, session, location etc. Addition, you can add events on each action of your application and track it using this Shakebug framework.

Sign up for a service at [https://www.shakebug.com](https://www.shakebug.com)

## Supported following type of iOS projects
1. Swift
2. Objective-C
3. SwiftUI
4. Project with and without SceneDeleage


## Installation

### CocoaPods

To integrate ShakeBug into your Xcode project using [CocoaPods](https://cocoapods.org), specify it in your `Podfile`:

```ruby
pod 'ShakeBug'
```

Then, run the following command:

```bash
$ pod install
```

### Carthage
Add following line to your Xcode project's `Cartfile`

```ruby
github "softnoesis/ShakeBug"
```

Then, run the following command:

```bash
$ carthage update
```
Then drag Shakebug.xcframework from Carthage folder to your Xcode project's settings.

### Swift Package Manager
Navigate to the SPM section in your project, add a new package, point it to

```ruby
https://github.com/softnoesis/ShakeBug/
```
and select the latest version.


## Code

1. Import the ShakeBug framework header into your app delegate.

    ```swift
    // Swift
    import ShakeBug
    ```
    
    
    ```objective-c
    // Objective-C
    #import <ShakeBug/ShakeBug.h>
    ```

2. Add the following to your app delegate's `application:didFinishLaunchingWithOptions:` method.
    
   ```swift
   // Swift
   ShakeBug.sharedInstance().initiate(withKey: “<Your Key>")
   ```
    
   ```objective-c
   // Objective-C
   [[ShakeBug sharedInstance] initiateWithKey:@"<Your Key>"];
   ```

    Be sure to replace `<Your Key>` with your application key which given by ShakeBug website.


## Optional Settings

1. Add the following to your app delegate's `application:didFinishLaunchingWithOptions:` method for showing or not showing first time tutorial screen

```swift
// Swift
ShakeBug.sharedInstance().showTutorialScreenFirstTime(false) // Default value True
```

 ```objective-c
 // Objective-C
 [[ShakeBug sharedInstance] showTutorialScreenFirstTime:NO];// Default value YES
 ```

2. If you want to show bug or crash from Simulator then use following code `application:didFinishLaunchingWithOptions:`

```swift
// Swift
ShakeBug.sharedInstance().allowCrash(fromSimulator:true) // Default value false
```

 ```objective-c
 // Objective-C
 [[ShakeBug sharedInstance] allowCrashFromSimulator:YES];// Default value NO
 ```
 
 
 3. If you dont want to show any logs on console then use following code `application:didFinishLaunchingWithOptions:`

```swift
// Swift
ShakeBug.sharedInstance().makeLogEnabled(false) // Default value false
```

  ```objective-c
  // Objective-C
  [[ShakeBug sharedInstance] makeLogEnabled:NO];// Default value NO
  ```
  
  
  4. If you want add event to any screen or activity use following methods

```swift
// Swift
ShakeBug.sharedInstance().addEventKey("App_open", eventValue: "Started app") //pass any key or value
```

   ```objective-c
   // Objective-C
   [[ShakeBug sharedInstance] addEventKey:@"App_open" eventValue:@"Started app"];// pass any key or value
   ```
   
## Usage

Build & run your app. Once your app is running, shake your device (\^⌘Z in the simulator) to report a bug! Bug/Crash reports are sent directly to login panel of Shakebug.com and also notify on your registered email address.


## Contact
Visit on: [https://www.shakebug.com](https://www.shakebug.com)

Contact us on support@shakebug.com in case of any use.
