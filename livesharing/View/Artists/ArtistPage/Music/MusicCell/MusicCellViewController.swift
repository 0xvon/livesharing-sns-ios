//
//  MusicCellViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit

class MusicCellViewController: UITableViewCell {
    
    var isFavorite: Bool = false
    var isListening: Bool = false
    
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var musicName: UILabel!
    @IBOutlet weak var listenButton: UIButton!
    @IBOutlet weak var albumName: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        albumImage.image = UIImage(named: "antithese")
        musicName.text = "Home"
        albumName.text = "ANTITHESE"
        albumName.textColor = .blue
        listenButton.setTitle("iTunesで再生", for: .normal)
        favoriteButton.setImage(UIImage(named: "star"), for: .normal)
        listen(isListening: isListening)
        favorite(isFavorite: isFavorite)
    }
    
    func favorite(isFavorite: Bool) {
        if isFavorite {
            favoriteButton.tintColor = .red
        } else {
            favoriteButton.tintColor = .black
        }
    }
    
    func listen(isListening: Bool) {
        if isListening {
            listenButton.tintColor = .blue
        } else {
            listenButton.tintColor = .black
        }
    }
    
    @IBAction func listenButtonTapped(_ sender: Any) {
        isListening.toggle()
        listen(isListening: isListening)
    }
    @IBAction func favoriteButtonTapped(_ sender: Any) {
        isFavorite.toggle()
        favorite(isFavorite: isFavorite)
    }
}
