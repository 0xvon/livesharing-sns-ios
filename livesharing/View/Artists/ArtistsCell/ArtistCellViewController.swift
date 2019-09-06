//
//  ArtistCellViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/06.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit


class ArtistCellViewController: UICollectionViewCell {
    @IBOutlet weak var artistImageView: UIImageView!
    @IBOutlet weak var artistNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        artistImageView.image = UIImage(named: "myfirststory")
        artistNameLabel.text = "MY FIRST STORY"
    }
}
