# ShakeBug

Bug &amp; Crash reporting tool.

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
ShakeBug.sharedInstance().showTutorialScreenFirstTime(false) // OR pass true to show Tutorial screen
```

 ```objective-c
 // Objective-C
 [[ShakeBug sharedInstance] showTutorialScreenFirstTime:NO];// OR pass YES to show Tutorial screen
 ```

2. If you dont want to show bug or crash from Simulator then use following code `application:didFinishLaunchingWithOptions:`

```swift
// Swift
ShakeBug.sharedInstance().allowCrash(fromSimulator:true) // OR pass false if you dont want to show bug from Simulator
```

 ```objective-c
 // Objective-C
 [[ShakeBug sharedInstance] allowBugCrashFromSimulator:YES];// OR pass NO if you dont want to show bug from Simulator
 ```
 
 3. If you dont want to show any logs on console then use following code `application:didFinishLaunchingWithOptions:`

```swift
// Swift
ShakeBug.sharedInstance().makeLogEnabled(false) // OR pass true if you want to show logs
```

  ```objective-c
  // Objective-C
  [[ShakeBug sharedInstance] makeLogEnabled:NO];// OR pass YES if you want to show logs
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

Build & run your app. Once your app is running, shake your device (\^⌘Z in the simulator) to report a bug! Bug reports are sent directly to your email address.


## Contact

Contact us on contact@softnoesis.com in case of any use.
