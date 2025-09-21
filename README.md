# ShakeBug

![pod](https://badgen.net/badge/pod/v1.0.40/cyan) ![twitter](https://badgen.net/badge/icon/@shakebugtool?icon=twitter&label) ![discord](https://badgen.net/badge/icon/shakebug?icon=discord&label)



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

 ✅ Review of application for each new version

 ✅ Remote code execution

 ✅ Track login user using custom user method 

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
   [[ShakeBugSDK sharedInstance] initiateWithKey:@"<Your Key>"];
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
 [[ShakeBugSDK sharedInstance] showTutorialScreenFirstTime:NO];// Default value YES
 ```

2. If you want to show bug or crash from Simulator then use following code `application:didFinishLaunchingWithOptions:`

```swift
// Swift
ShakeBugSDK.sharedInstance.allowBugCrashFromSimulator(true) // Default value false
```

 ```objective-c
 // Objective-C
 [[ShakeBugSDK sharedInstance] allowCrashFromSimulator:YES];// Default value NO
 ```
 
 
 3. If you dont want to show any logs on console then use following code `application:didFinishLaunchingWithOptions:`

```swift
// Swift
ShakeBugSDK.sharedInstance.makeLogEnabled(false) // Default value false
```

  ```objective-c
  // Objective-C
  [[ShakeBugSDK sharedInstance] makeLogEnabled:NO];// Default value NO
  ```
  
4. If you want to set forcefully any language for the bug reporting screen then use following code `application:didFinishLaunchingWithOptions:`


```swift
// Swift
ShakeBugSDK.sharedInstance.setShakebugSDKLanguage(ShakebugLanguage.french) 
```

  ```objective-c
  // Objective-C
  [[ShakeBugSDK sharedInstance] setShakebugSDKLanguage:ShakebugLanguage.french];
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

9. User can report bug either by shaking phone or by triggering default screen capture event. This method can be used to manage "screen capture" event should trigger bug reporting or not.
```swift
// Swift
ShakeBugSDK.sharedInstance.allowToReportBugByScreenCapture(false) // Default value true
```

```objective-c
// Objective-C
[[ShakeBugSDK sharedInstance] allowToReportBugByScreenCapture:NO]; // Default value YES
```
10. User can report bug either by shaking phone or by triggering default screen capture event. This method can be used to manage "shaking mobile" should trigger bug reporting or not.
```swift
// Swift
ShakeBugSDK.sharedInstance.allowToReportBugByShakingMobile(true) // Default value true
```

```objective-c
// Objective-C
[[ShakeBugSDK sharedInstance] allowToReportBugByShakingMobile:YES]; // Default value YES
```

11. When a crash occurs, the SDK will automatically share a screen recording of the last 20 seconds of the application. If you pass false, it will not send the video with the crash report. By default, this is set to true.
```swift
// Swift
ShakeBugSDK.sharedInstance.allowAutoCaptureScreenForCrashes(true) // Default value true
```

```objective-c
// Objective-C
[[ShakeBugSDK sharedInstance] allowAutoCaptureScreenForCrashes:YES]; // Default value YES
```
## Events  
  
If you want add event to any screen or activity use following methods

```swift
// Swift
ShakeBugSDK.sharedInstance.addEventKey(key:"App_open", eventValue: "Started app") //pass any key or value
```

   ```objective-c
   // Objective-C
   [[ShakeBugSDK sharedInstance] addEventKey:@"App_open" eventValue:@"Started app"];// pass any key or value
   ```

## Set Custom User Details
Shakebug allows you to associate custom user information with session data for better tracking and personalized reporting. This is useful when you want to tag crash reports or feedback with specific user details.

```swift
// Swift
public func setcustomUser(customUserId: String, name: String, email: String, country: String, other: String)
```
 ```objective-c
 // Objective-C
[[ShakeBug shared] setcustomUserWithCustomUserId:@"user_123"
                                             name:@"John Doe"
                                            email:@"john.doe@example.com"
                                          country:@"USA"
                                            other:@"iOS beta tester"];
```

## Review Popup each version wise

The Shakebug iOS SDK shows a friendly review popup to gather helpful feedback from users. It appears only after the app has been opened at least 3 times and waits at least 2 days between reminders — so it's thoughtful, not annoying. Once a user submits a review, they won’t be asked again for that app version. Everything is remembered automatically, and the popup closes on its own after submission to keep the experience smooth.

**Note**: If you deselect the rating popup option from "Edit Project" screen in app.shakebug.com then rating popup will not visible.

In case, you want to trigger manually review rating popup then use this method

```swift
// Swift
ShakeBugSDK.sharedInstance.triggerRatingsPopup()
```

 ```objective-c
 // Objective-C
 [[ShakeBugSDK sharedInstance] triggerRatingsPopup];
 ```

## Remote Code Execution

With Shakebug Remote Code, you can fetch dynamic configuration values based on predefined keys set in the Shakebug dashboard. It supports `String`, `Number`, `Boolean`, and `JSON` types and allows you to modify app behavior without a version update.
```swift
// Swift
ShakeBugSDK.sharedInstance.fetchRemoteCodeValue(forKey: "your_key") { value in
    print("Remote code value: \(value ?? "nil")")
}
```
 ```objective-c
 // Objective-C
[[ShakeBugSDK sharedInstance] fetchRemoteCodeValueForKey:@"your_key" completion:^(id  _Nullable value) {
    NSLog(@"Remote code value: %@", value ?: @"nil");
}];
 ```

## Usage

Build & run your app. Once your app is running, shake your device (\^⌘Z in the simulator) to report a bug! Bug/Crash reports are sent directly to login panel of Shakebug.com and also notify on your registered email address.
Additionally, now user can report bug if they trigger screen capture event in iPhone.


If you want to trigger bug reporting screen without shaking then you can call following method in any button action of any screen.
```swift
// Swift
ShakeBugSDK.sharedInstance.triggerBugReporting()
```

 ```objective-c
 // Objective-C
 [[ShakeBugSDK sharedInstance] triggerBugReporting];
 ```

## Contact
Visit on: [https://www.shakebug.com](https://www.shakebug.com)

Contact us on support@shakebug.com in case of any use.
