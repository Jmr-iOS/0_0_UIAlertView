//
//  AppDelegate.swift
//  0_0 - Empty Template (Swift)
//
//  URL: http://stackoverflow.com/questions/2662745/get-name-of-current-view-residing-in-a-uiwindow

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var timer:Timer!;  //! means 'i promise I'll initialize before use
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds);
        
        self.window?.backgroundColor = UIColor.white;
        
        let viewController:ViewController = ViewController();
        
        viewController.view.translatesAutoresizingMaskIntoConstraints = false;
        
        self.window?.rootViewController = viewController;
        
        self.window?.makeKeyAndVisible();
        
        print("AppDelegate.application():          Application launch complete");
        
        //Start the countdown timer
        self.timer = Timer.scheduledTimer(timeInterval: 1,
                                                            target:       self,
                                                            selector:     #selector(AppDelegate.displayAlert),
                                                            userInfo:     nil,
                                                            repeats:      false);
        
        
        return true;
    }

    
    func displayAlert() {
        print("poo?");
        let alert:UIAlertController = UIAlertController(title:          "Displayed Message!",
                                                        message:        "Eww this is complicated...",
                                                        preferredStyle: UIAlertControllerStyle.alert);
        
        alert.addAction(UIAlertAction(title:   "Sorry, I'm made by Apple, so...",
                                      style:   UIAlertActionStyle.cancel,
                                      handler: nil));
  
        window?.rootViewController?.present(alert,
                                                          animated:true,
                                                          completion:nil);
        return;
    }

    
    func applicationWillResignActive(_ application:    UIApplication) {return;}
    func applicationDidEnterBackground(_ application:  UIApplication) {return;}
    func applicationWillEnterForeground(_ application: UIApplication) {return;}
    func applicationDidBecomeActive(_ application:     UIApplication) {return;}
    func applicationWillTerminate(_ application:       UIApplication) {return;}
}

