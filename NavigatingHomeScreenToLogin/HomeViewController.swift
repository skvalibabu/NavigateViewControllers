//
//  HomeViewController.swift
//  NavigatingHomeScreenToLogin
//
//  Created by Valibabu Shaik on 15/02/20.
//  Copyright © 2020 Vali. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    lazy var sceneDelegate = self.view.window?.windowScene?.delegate as! SceneDelegate

    @IBAction func tapOnLogOut(_ sender: Any) {
        if self.sceneDelegate.loginNavigationController != nil{
        self.sceneDelegate.window?.rootViewController = nil
        self.sceneDelegate.window?.rootViewController = self.sceneDelegate.loginNavigationController
            UserDefaults.standard.set(false, forKey: "Login")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
