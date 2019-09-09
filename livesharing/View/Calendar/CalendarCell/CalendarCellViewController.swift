//
//  CalendarCell.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit

class CalendarCellViewController: UITableViewCell {
    
    var isJoin: Bool = false
    
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var prefecturesLabel: UILabel!
    @IBOutlet weak var liveName: UILabel!
    @IBOutlet weak var bandName: UILabel!
    @IBOutlet weak var liveImage: UIImageView!
    @IBOutlet weak var joinButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        placeLabel.text = "Zepp Tokyo"
        prefecturesLabel.text = "東京"
        prefecturesLabel.tintColor = .gray
        liveName.text = "MY FIRST STORY TOUR 2019"
        liveImage.image = UIImage(named: "myfirststory")
        join(isJoin: isJoin)
    }
    
    func join(isJoin: Bool) {
        if isJoin {
            joinButton.setTitle("参加", for: .normal)
            joinButton.tintColor = .blue
        } else {
            joinButton.setTitle("不参加", for: .normal)
            joinButton.tintColor = .gray
        }
    }
    
    @IBAction func joinButtonTapped(_ sender: Any) {
        isJoin.toggle()
    }
}
