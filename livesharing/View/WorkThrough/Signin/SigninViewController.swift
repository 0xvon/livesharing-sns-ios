//
//  SigninViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit
import Firebase


class SigninViewController: UIViewController {
    
    var auth: Auth!
    
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        auth = Auth.auth()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        if auth.currentUser != nil {
            performSegue(withIdentifier: "toCalendar", sender: auth.currentUser!)
        }
        
    }
    
    @IBAction func phoneButtonTapped(_ sender: Any) {
    }
    
    @IBAction func mailButtonTapped(_ sender: Any) {
    }
    
    @IBAction func googleButtonTapped(_ sender: Any) {
    }
    
    @IBAction func twitterButtonTapped(_ sender: Any) {
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
    }
    
}
