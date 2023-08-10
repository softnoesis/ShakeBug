# ShakeBug

![pod](https://badgen.net/badge/pod/v1.0.29/cyan) ![twitter](https://badgen.net/badge/icon/@shakebugtool?icon=twitter&label) ![linkedin](https://badgen.net/badge/icon/shakebug?icon=discord&label)


Shakebug allows you to receive feedback from your beta testers or real users and improve the quality of your application in a simple way. Here users just need to shake their mobile and all the data regarding bugs & crashes can be seen by developers through their log in panel. It also helpful to analyse your users, session, location etc. Addition, you can add events on each action of your application and track it using this Shakebug framework.

Sign up for a service at [https://www.shakebug.com](https://www.shakebug.com)

## Supported following type of iOS projects
1. Swift
2. Objective-C
3. SwiftUI
4. Project with and without SceneDeleage

## Features
 ✅ Image bug reporting

 ✅ Screen-Recording bug beporting

 ✅ Automatic Crash reporting

 ✅ Analytics

 ✅ Events

 ✅ Custom theme color, title and error message

 ✅ On-premise hosting



## Compatibility
- Minimum iOS deployment 13.0
- Minimum Mac OS deployment 10.15
- Carthage release for Swift is built with Xcode 13.0 or later
- CocoaPods: 1.10 or later.

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
   ShakeBugSDK.sharedInstance.initiateWithKey(“<Your Key>")
   ```
    
   ```objective-c
   // Objective-C
   [[ShakebugSDK sharedInstance] initiateWithKey:@"<Your Key>"];
   ```

    Be sure to replace `<Your Key>` with your application key which given by ShakeBug website.

## Note: 
```NSPhotoLibraryUsageDescription``` must be added in info.plist.

## Optional Settings

1. Add the following to your app delegate's `application:didFinishLaunchingWithOptions:` method for showing or not showing first time tutorial screen

```swift
// Swift
ShakeBugSDK.sharedInstance.showTutorialScreenFirstTime(false) // Default value True
```

 ```objective-c
 // Objective-C
 [[ShakebugSDK sharedInstance] showTutorialScreenFirstTime:NO];// Default value YES
 ```

2. If you want to show bug or crash from Simulator then use following code `application:didFinishLaunchingWithOptions:`

```swift
// Swift
ShakeBugSDK.sharedInstance.allowBugCrashFromSimulator(true) // Default value false
```

 ```objective-c
 // Objective-C
 [[ShakebugSDK sharedInstance] allowCrashFromSimulator:YES];// Default value NO
 ```
 
 
 3. If you dont want to show any logs on console then use following code `application:didFinishLaunchingWithOptions:`

```swift
// Swift
ShakeBugSDK.sharedInstance.makeLogEnabled(false) // Default value false
```

  ```objective-c
  // Objective-C
  [[ShakebugSDK sharedInstance] makeLogEnabled:NO];// Default value NO
  ```
  
4. If you want to set forcefully any language for the bug reporting screen then use following code `application:didFinishLaunchingWithOptions:`


```swift
// Swift
ShakeBugSDK.sharedInstance.setShakebugSDKLanguage(ShakebugLanguage.french) 
```

  ```objective-c
  // Objective-C
  [[ShakebugSDK sharedInstance] setShakebugSDKLanguage:ShakebugLanguage.french];
  ```
Note: Just mind that here, by default it will take device language as defualt language.

5. Developer can also set custome theme color in Shakebug SDK screens:
```swift
// Swift
ShakeBugSDK.sharedInstance.setShakebugThemeColor(UIColor.green)
```

```objective-c
// Objective-C
[[ShakeBugSDK sharedInstance] setShakebugThemeColor:[UIColor greenColor]];
```   


6. Developer can also set custom title for Shakebug annotate and feedback input screen:
```swift
// Swift
ShakeBugSDK.sharedInstance.changeSDKScreenTitle("Annotate your Bug", "Feedback") 
```

```objective-c
// Objective-C
[[ShakeBugSDK sharedInstance] changeSDKScreenTitle:@"Annotate your bug" :@"Add detail"];
```   

7. Set custom error message for any error alert screen from SDK.
```swift
// Swift
ShakeBugSDK.sharedInstance.changeSDKErrorAlertMessage("This Error")
```

```objective-c
// Objective-C
[[ShakeBugSDK sharedInstance] changeSDKErrorAlertMessage:@"Something wrong.."];
```   
8. If you have on-premise hosting plan then following method will be used.
```swift
// Swift
ShakeBugSDK.sharedInstance.setShakebugSDKEndPointURL(url: "", headerKey: "", sslPublicKey: "")
```

```objective-c
// Objective-C
[[ShakeBugSDK sharedInstance] setShakebugSDKEndPointURLWithUrl:@"" headerKey:@"" sslPublicKey:@""];
```
Note: New enpoint url, its header key and SSL public key(Optional)

## Events  
  
If you want add event to any screen or activity use following methods

```swift
// Swift
ShakeBugSDK.sharedInstance.addEventKey(key:"App_open", eventValue: "Started app") //pass any key or value
```

   ```objective-c
   // Objective-C
   [[ShakebugSDK sharedInstance] addEventKey:@"App_open" eventValue:@"Started app"];// pass any key or value
   ```
   
## Usage

Build & run your app. Once your app is running, shake your device (\^⌘Z in the simulator) to report a bug! Bug/Crash reports are sent directly to login panel of Shakebug.com and also notify on your registered email address.

If you want to trigger bug reporting screen without shaking then you can  call following method in any button action of any screen.
```swift
// Swift
ShakeBugSDK.sharedInstance.triggerBugReporting()
```

 ```objective-c
 // Objective-C
 [[ShakebugSDK sharedInstance] triggerBugReporting];
 ```

## Contact
Visit on: [https://www.shakebug.com](https://www.shakebug.com)

Contact us on support@shakebug.com in case of any use.
