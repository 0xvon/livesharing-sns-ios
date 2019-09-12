//
//  MyPageViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/01.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit

class MyPageViewController: UIViewController {
    
    
    @IBOutlet weak var userImageLabel: UIImageView!
    @IBOutlet weak var displayName: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var followingUserButton: UIButton!
    @IBOutlet weak var followerButton: UIButton!
    @IBOutlet weak var biography: UITextView!
    @IBOutlet weak var joinedLiveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userImageLabel.image = UIImage(named: "avator")
        userImageLabel.layer.cornerRadius = userImageLabel.frame.size.width / 2
        userImageLabel.clipsToBounds = true
        displayName.text = "Masato Tsutsumi"
        userName.text = "@MasatoJames"
        userName.tintColor = .gray
        followingUserButton.setTitle("20 フォロー", for: .normal)
        followerButton.setTitle("400 フォロワー", for: .normal)
        joinedLiveButton.setTitle("100 ライブ参戦", for: .normal)
        biography.text = "東京の人。MY FIRST STORYが大好き。大学生。このアプリの開発者。"
    }
}
