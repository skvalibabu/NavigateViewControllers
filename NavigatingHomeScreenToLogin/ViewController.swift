//
//  ViewController.swift
//  NavigatingHomeScreenToLogin
//
//  Created by Valibabu Shaik on 15/02/20.
//  Copyright © 2020 Vali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var sceneDelegate = self.view.window?.windowScene?.delegate as! SceneDelegate
    
    @IBAction func tapOnLoginBtn(_ sender: Any) {
        if self.sceneDelegate.homeNavigationController != nil{
            self.sceneDelegate.window?.rootViewController = nil
            self.sceneDelegate.window?.rootViewController = self.sceneDelegate.homeNavigationController
        UserDefaults.standard.set(true, forKey: "Login")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}

