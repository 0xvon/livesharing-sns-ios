//
//  MusicModel.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import Firebase

struct MusicModel {
    var title: String
    var album: String
    var releaseDate: Timestamp
    var url: URL
    var isFavorite: Bool
}
