//
//  CommentModel.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation

struct CommentModel {
    var live: LiveModel
    var user: UserModel
    var text: String
    var sentTime: TimeZone
    var isFavorite: Bool
}
