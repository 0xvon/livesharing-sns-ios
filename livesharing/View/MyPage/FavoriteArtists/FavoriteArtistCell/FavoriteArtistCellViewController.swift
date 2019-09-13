//
//  FavoriteArtistCellViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit

class FavoriteArtistCellViewController: UICollectionViewCell {
    
    @IBOutlet weak var favoriteArtistImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        favoriteArtistImage.image = UIImage(named: "antithese")
    }
}
