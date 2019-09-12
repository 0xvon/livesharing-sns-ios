//
//  NotificationCellViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit

class NotificationCellViewController: UITableViewCell {
    
    @IBOutlet weak var notifTitle: UILabel!
    @IBOutlet weak var notifTime: UILabel!
    @IBOutlet weak var notifImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        notifImage.image = UIImage(named: "antithese")
        notifTitle.text = "アルバム情報解禁"
        notifTime.text = "3m"
        notifTime.tintColor = .gray
    }
}
