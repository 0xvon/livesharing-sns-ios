//
//  NotificationModel.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation

struct NotificationModel {
    let notificationType: NotificationType
    let createTime: TimeZone
    var isRead: Bool
}

enum NotificationType {
    case artist
    case live
    case userAction
}
