//
//  LiveCellViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit

class LiveCellViewController: UITableViewCell {
    
    var isJoin: Bool = false
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var liveTitle: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var joinButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        dateLabel.text = "8月21日"
        dateLabel.tintColor = .darkGray
        liveTitle.text = "MY FIRST STORY TOUR 2019"
        placeLabel.text = "Zepp Tokyo"
        placeLabel.tintColor = .gray
        join(isJoin: isJoin)
    }
    
    func join(isJoin: Bool) {
        if isJoin {
            joinButton.setTitle("行く", for: .normal)
            joinButton.tintColor = .red
        } else {
            joinButton.setTitle("行かない", for: .normal)
            joinButton.tintColor = .black
        }
    }
    
    @IBAction func joinButtonTapped(_ sender: Any) {
        isJoin.toggle()
        join(isJoin: isJoin)
    }
}
