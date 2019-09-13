//
//  NotificationModel.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import Firebase

struct NotificationModel {
    let notificationType: NotificationType
    let createdAt: Timestamp
    var isRead: Bool
}

enum NotificationType {
    case artist
    case live
    case userAction
}
