//
//  ArtistModel.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import Firebase

struct ArtistModel {
    var id: String
    var bandName: String
    var createdAt: Timestamp
    var member: Dictionary<[Part], String>
    var music: [MusicModel]
    var wiki: WikiModel
    var isFavorite: Bool
}

enum Part {
    case Bo
    case Ba
    case Gt
    case Dr
    case Key
}
