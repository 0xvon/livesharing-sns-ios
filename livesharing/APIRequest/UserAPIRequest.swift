//
//  UserAPIRequest.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/14.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import Firebase


struct UserAPIRequest {
    
    func getUser(id: String) {
        
        let db = Firestore.firestore()
        db.collection("users").document(id).getDocument() { (snap, error) in
            if let error = error {
                fatalError("\(error)")
            } else {
                guard let document = snap?.data() else { return }
                print(document)
            }
        }
    }
    
    func getFollower(id: String) {
        
        let db = Firestore.firestore()
        db.collection("users").whereField("isFollower", isEqualTo: true).getDocuments() { (snap, error) in
            if let error = error {
                fatalError("\(error)")
            } else {
                guard let documents = snap?.documents else { return }
                print(documents)
            }
            
        }
    }
    
    func getFollowingUser() {
        
        let db = Firestore.firestore()
        db.collection("users").whereField("isFollowingUser", isEqualTo: true).getDocuments() { (snap, error) in
            if let error = error {
                fatalError("\(error)")
            } else {
                guard let documents = snap?.documents else { return }
                print(documents)
            }
            
        }
    }
    
    func update(id: String, data: [String: Any]) {
        let db = Firestore.firestore()
        db.collection("users").document(id).setData(data) { error in
            if let error = error {
                print("\(error)")
            } else {
                return
            }
        }
    }
    
    func follow(id: String) {
        let db = Firestore.firestore()
        db.collection("users").document(id).updateData(["isFollowing": true]) { error in
            if let error = error {
                print("\(error)")
            } else {
                return
            }
        }
    }
    
    func unfollow(id: String) {
        let db = Firestore.firestore()
        db.collection("users").document(id).updateData(["isFollowing": false]) { error in
            if let error = error {
                print("\(error)")
            } else {
                return
            }
        }
    }
}
