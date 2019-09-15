//
//  ArtistAPIRequest.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/14.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import Firebase
import FirebaseFirestore


struct ArtistAPIRequest {
    func getArtist(id: String) {
        let db = Firestore.firestore()
        db.collection("artists").document(id).getDocument() { (snap, error) in
            if let error = error {
                fatalError("\(error)")
            } else {
                guard let document = snap?.data() else { return }
                print(document)
            }
        }
    }
    
    func getArtists() {
        let db = Firestore.firestore()
        db.collection("artists").getDocuments() { (snaps, error) in
            if let error = error {
                fatalError("\(error)")
            } else {
                guard let documents = snaps?.documents else { return }
                print(documents)
            }
        }
    }
    
    func registerNewArtist(data: [String: Any]) {
        let db = Firestore.firestore()
        db.collection("artists").addDocument(data: data) { error in
            if let error = error {
                print("\(error)")
            } else {
                return
            }
        }
    }
    
    func favorite(id: String) {
        let db = Firestore.firestore()
        db.collection("artists").document(id).updateData(["isFavorite": true]) { error in
            if let error = error {
                print("\(error)")
            } else {
                return
            }
        }
    }
    
    func unfavorite() {
        let db = Firestore.firestore()
        db.collection("artists").document(id).updateData(["isFavorite": false]) { error in
            if let error = error {
                print("\(error)")
            } else {
                return
            }
        }
    }
}
