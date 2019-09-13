//
//  LiveModel.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation

struct LiveModel {
    var title: String
    var artist: ArtistModel
    var setlist: [MusicModel]
    var place: String
    var date: Date
    var startTime: TimeZone
    var endTime: TimeZone
    var isJoin: Bool
}
