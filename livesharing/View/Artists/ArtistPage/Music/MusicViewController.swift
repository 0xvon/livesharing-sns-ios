//
//  MusicViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit


class MusicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var musicTableView: UITableView!
    @IBOutlet weak var albumCollectionView: UICollectionView!
    @IBOutlet weak var artistCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicTableView.delegate = self
        musicTableView.dataSource = self
        musicTableView.register(UINib(nibName: "MusicCell", bundle: nil), forCellReuseIdentifier: "MusicCell")
        
        albumCollectionView.delegate = self
        albumCollectionView.dataSource = self
        albumCollectionView.register(UINib(nibName: "AlbumCell", bundle: nil), forCellWithReuseIdentifier: "AlbumCell")
        
        let albumLayout = UICollectionViewFlowLayout()
        albumLayout.itemSize = CGSize(width: self.view.bounds.width / 4 - 15, height: self.view.bounds.width / 4 - 15)
        albumLayout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        albumCollectionView.collectionViewLayout = albumLayout
        
        artistCollectionView.delegate = self
        artistCollectionView.dataSource = self
        artistCollectionView.register(UINib(nibName: "ArtistBalloon", bundle: nil), forCellWithReuseIdentifier: "ArtistBalloon")
        
    }
}

extension MusicViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = musicTableView.dequeueReusableCell(withIdentifier: "MusicCell", for: indexPath) as! MusicCellViewController
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == albumCollectionView {
            return 4
        } else {
            return 20
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == albumCollectionView {
            let cell: UICollectionViewCell = albumCollectionView.dequeueReusableCell(withReuseIdentifier: "AlbumCell", for: indexPath) as! AlbumCellViewController
            return cell
        } else {
            let cell: UICollectionViewCell = artistCollectionView.dequeueReusableCell(withReuseIdentifier: "ArtistBalloon", for: indexPath) as! ArtistBalloonViewController
            return cell
        }
    }
}
