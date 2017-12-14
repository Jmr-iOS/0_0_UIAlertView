/************************************************************************************************************************************/
/** @file       AppDelegate.swift
 *  @project    0_0 - UIAlertView
 *  @brief      x
 *  @details    x
 *
 *  @author     Justin Reina, Firmware Engineer, Jaostech
 *  @created    12/1/17
 *  @last rev   12/13/17
 *
 *
 *  @ref        http://stackoverflow.com/questions/2662745/get-name-of-current-view-residing-in-a-uiwindow
 *
 *  @section    Notice
 *      UIAlertView has been deprecated, and is replaced with the content illustrated below. The name is left standing as this most
 *      clearly communicates what is occuring here
 *
 *  @section    Opens
 *      button resp
 *      second form implement
 *
 *  @section    Legal Disclaimer
 *      All contents of this source file and/or any other Jaostech related source files are the explicit property on Jaostech
 *      Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var timer:Timer!;                                               /*  ! means 'i promise I'll initialize before use               */
    

    /********************************************************************************************************************************/
    /** @fcn         func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
     *                                  [UIApplicationLaunchOptionsKey: Any]?) -> Bool
     *  @brief      display a popup alert-view message
     *  @details    x
     *
     *  @section    Opens
     *      Expand fcn header (vars etc.)
     */
    /********************************************************************************************************************************/
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


    /********************************************************************************************************************************/
    /** @fcn        func displayAlert()
     *  @brief      display a popup alert-view message
     *  @details    x
     *
     *  @note       '@objc' is required by Timer.scheduledimer to declare as exposed to Objective-C
     */
    /********************************************************************************************************************************/
    @objc func displayAlert() {
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

