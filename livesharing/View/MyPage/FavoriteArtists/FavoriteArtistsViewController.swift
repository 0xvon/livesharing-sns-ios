//
//  FavoriteArtistsViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit

class FavoriteArtistsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var seeMoreButton: UIButton!
    @IBOutlet weak var favoriteArtistTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "FavoriteArtistCell", bundle: nil), forCellWithReuseIdentifier: "FavoriteArtistCell")
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: self.view.bounds.width / 3 - 10, height: self.view.bounds.width / 3 - 10)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        collectionView.collectionViewLayout = layout
        
        favoriteArtistTitle.tintColor = .blue
    }
    
    @IBAction func seeMoreButtonTapped(_ sender: Any) {
    }
}

extension FavoriteArtistsViewController {
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavoriteArtistCell", for: indexPath) as! FavoriteArtistCellViewController
        return cell
    }
}
