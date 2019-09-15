//
//  NotificationAPIRequest.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/14.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import Firebase


struct NotificationAPIRequest {
    func getNotification() {
        let db = Firestore.firestore()
        db.collection("notification").getDocuments() { (snaps, error) in
            if let error = error {
                print("\(error)")
            } else {
                return
            }
        }
        //        TODO: push notification method
    }
    
    func readNotification(id: String) {
        let db = Firestore.firestore()
        db.collection("notification").document(id).updateData(["isRead": true]) { error in
            if let error = error {
                print("\(error)")
            } else {
                return
            }
        }
    }
}
