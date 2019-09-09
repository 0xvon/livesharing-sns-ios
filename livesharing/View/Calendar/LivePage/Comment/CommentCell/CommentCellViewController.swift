//
//  CommentCellViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit


class CommentCellViewController: UITableViewCell {
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var displayName: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var commentCreatedAt: UILabel!
    @IBOutlet weak var commentText: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        userImageView.image = UIImage(named: "avator")
        userImageView.layer.cornerRadius = userImageView.frame.size.width / 2
        userImageView.clipsToBounds = true
        displayName.text = "Masato Tsutsumi"
        userName.text = "@MasatoJames"
        userName.tintColor = .gray
        commentCreatedAt.text = "3m"
        commentText.text = "素晴らしかった。最高だった。とても良かった。衝撃的だった。素晴らしかった。最高だった。とても良かった。衝撃的だった。素晴らしかった。最高だった。とても良かった。衝撃的だった。素晴らしかった。最高だった。とても良かった。衝撃的だった。素晴らしかった。最高だった。とても良かった。衝撃的だった。素晴らしかった。最高だった。とても良かった。衝撃的だった。素晴らしかった。最高だった。とても良かった。衝撃的だった。素晴らしかった。最高だった。とても良かった。"
    }
}
