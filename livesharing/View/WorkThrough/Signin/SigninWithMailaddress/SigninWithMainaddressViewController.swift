//
//  SigninWithMainaddressViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class SigninWithMailaddressViewController: UIViewController {
    
    var auth: Auth!
    
    @IBOutlet weak var mailaddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mailaddressTextField.delegate = self
        passwordTextField.delegate = self
        
        auth = Auth.auth()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if auth.currentUser != nil {
            auth.currentUser?.reload(completion: { error in
                if error == nil {
                    if self.auth.currentUser?.isEmailVerified == true {
                        self.performSegue(withIdentifier: "toCalendar", sender: self.auth.currentUser!)
                    } else if self.auth.currentUser?.isEmailVerified == false {
                        let alert = UIAlertController(title: "確認用メールを送信しているので確認をお願いします。", message: "まだメール認証が完了していません。", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                    }
                }
            })
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! CalendarViewController
        let account = sender as! AccountModel
        vc.account = AccountModel(data: ["id": account.id])
        
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        let email = mailaddressTextField.text!
        let password = passwordTextField.text!
        auth.createUser(withEmail: email, password: password) { (result, error) in
            if error == nil, let result = result {
                result.user.sendEmailVerification(completion: { (error) in
                    if error == nil {
                        let alert = UIAlertController(title: "仮登録を行いました。", message: "入力したメールアドレス宛に確認メールを送信しました。", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                    }
                })
            }
        }
    }
}

extension SigninWithMailaddressViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
