//
//  MyPageViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/01.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit
import Firebase


class MyPageViewController: UIViewController {
    
    var auth: Auth!
    var account: AccountModel!
    
    
    @IBOutlet weak var userImageLabel: UIImageView!
    @IBOutlet weak var displayName: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var followingUserButton: UIButton!
    @IBOutlet weak var followerButton: UIButton!
    @IBOutlet weak var biography: UITextView!
    @IBOutlet weak var joinedLiveButton: UIButton!
    @IBOutlet weak var biographyWidthConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        auth = Auth.auth()
        let user = auth.currentUser!
        account = AccountModel(data: ["id": user.providerID])
        
        userImageLabel.image = UIImage(named: "avator")
        userImageLabel.layer.cornerRadius = userImageLabel.frame.size.width / 2
        userImageLabel.clipsToBounds = true
        displayName.text = account.displayName
        userName.text = account.username
        userName.tintColor = .gray
        followingUserButton.setTitle("20 フォロー", for: .normal)
        followerButton.setTitle("400 フォロワー", for: .normal)
        joinedLiveButton.setTitle("100 ライブ参戦", for: .normal)
        biography.text = account.biography
        biographyWidthConstraint.constant = self.view.bounds.width - 32
    }
}
