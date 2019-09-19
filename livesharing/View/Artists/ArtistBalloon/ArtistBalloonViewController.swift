//
//  ArtistBalloonViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/19.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit

class ArtistBalloonViewController: UICollectionViewCell {
    
    @IBOutlet weak var artistImage: UIImageView!
    @IBOutlet weak var bandName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        artistImage.image = UIImage(named: "antithese")
        artistImage.layer.cornerRadius = artistImage.frame.size.width / 2
        artistImage.clipsToBounds = true
    }
}
