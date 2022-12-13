# NetLog

This is a framework that logs all REST API requests in your iOS application. You only need to call one initialization method and the framework will do everything by itself. It is also possible to store custom events.

## Requirements
NetLog is written in Swift 5.0+. Compatible with iOS 13.0+.
## Install
### CocoaPods
NetLog is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:
```ruby
pod 'NetLogSDK'
```
## Getting Started
### Configuration
```swift
import NetLogSDK

class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        NetLog.shared.configurate(serverURL: URL(string: "https://ios-log.io")!, userID: "testUserID", ignoringDomains: [URL(string: "https://appsflyer.com")!])
        
        return true
    }
}
```
`serverURL` - the address of your server where the data will be sent

`ignoringDomains` - this is an optional parameter, domains can be specified in the array, requests with these domains will not be logged
### Custom event
```swift
func applicationDidBecomeActive(_ application: UIApplication) {
    NetLog.shared.storeEvent(label: "system", eventType: .system, message: "applicationDidBecomeActive", metadata: ["exampleKey":.string("exampleValue")])
}
```
### Collection Data
The data is sent to your server in a POST request with the following parameters:
```swift
let reqData: [String: Any] = [
            "data": dataBase64,
            "bundleID": NetLog.shared.bundleID ?? "",
            "userID": NetLog.shared.userID ?? "",
            "timestamp": timestamp,
            "eventID": eventID,
            "isNetworkEvent":isNetworkEvent
        ]
```
## Maintainer
Sergey Zhuravel <zhuravel.s.p@gmail.com> | [@Zhuravel_Sergey](https://twitter.com/Zhuravel_Sergey)

## License
NetLog is available under the MIT license. See the LICENSE file for more info.
