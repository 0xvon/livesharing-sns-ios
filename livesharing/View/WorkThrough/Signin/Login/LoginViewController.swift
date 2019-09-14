//
//  LoginViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    var auth: Auth!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        auth = Auth.auth()
    }
    
}
