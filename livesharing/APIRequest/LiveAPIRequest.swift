//
//  LiveAPIRequest.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/14.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import Firebase


struct LiveAPIRequest {
    func getLive(id: String) {
        let db = Firestore.firestore()
        db.collection("lives").document(id).getDocument() { (snap, error) in
            if let error = error {
                fatalError("\(error)")
            } else {
                guard let document = snap?.data() else { return }
                print(document)
            }
        }
    }
    
    func getLives() {
        let db = Firestore.firestore()
        db.collection("lives").getDocuments() { (snaps, error) in
            if let error = error {
                fatalError("\(error)")
            } else {
                guard let documents = snaps?.documents else { return }
                print(documents)
            }
        }
    }
    
    func getSetlist(id: String) {
        let db = Firestore.firestore()
        db.collection("musics").whereField("liveId", isEqualTo: id).getDocuments() { (snaps, error) in
            if let error = error {
                fatalError("\(error)")
            } else {
                guard let documents = snaps?.documents else { return }
                print(documents)
            }
        }
    }
    
    func join(id: String) {
        let db = Firestore.firestore()
        db.collection("lives").document(id).updateData(["isJoin": true]) { error in
            if let error = error {
                print("\(error)")
            } else {
                return
            }
        }
    }
    
    func unjoin(id: String) {
        let db = Firestore.firestore()
        db.collection("lives").document(id).updateData(["isJoin": false]) { error in
            if let error = error {
                print("\(error)")
            } else {
                return
            }
        }
    }
}
