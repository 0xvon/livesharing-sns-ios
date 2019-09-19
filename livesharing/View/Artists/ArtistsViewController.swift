//
//  ArtistsViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/01.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit

class ArtistsViewController: UIViewController, UIScrollViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var favoriteArtistCollectionView: UICollectionView!
    @IBOutlet weak var recommendButton: UIButton!
    @IBOutlet weak var genreButton: UIButton!
    @IBOutlet weak var horizontalScrollView: UIScrollView!
    @IBOutlet weak var viewWidthConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewWidthConstraint.constant = self.view.bounds.width * 2
        horizontalScrollView.delegate = self
        horizontalScrollView.contentOffset.x = 0
        favoriteArtistCollectionView.delegate = self
        favoriteArtistCollectionView.dataSource = self
        favoriteArtistCollectionView.register(UINib(nibName: "ArtistBalloon", bundle: nil), forCellWithReuseIdentifier: "ArtistBalloon")
        
        recommendButton.tintColor = .red
        genreButton.tintColor = .gray
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func recommendButtonTapped(_ sender: Any) {
        horizontalScrollView.contentOffset.x = 0
        recommendButton.tintColor = .red
        genreButton.tintColor = .gray
    }
    @IBAction func genreButtonTapped(_ sender: Any) {
        horizontalScrollView.contentOffset.x = 414
        recommendButton.tintColor = .gray
        genreButton.tintColor = .red
    }
    
}

extension ArtistsViewController {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = favoriteArtistCollectionView.dequeueReusableCell(withReuseIdentifier: "ArtistBalloon", for: indexPath) as! ArtistBalloonViewController
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == horizontalScrollView {
            if horizontalScrollView.contentOffset.x < 207 {
                recommendButton.tintColor = .red
                genreButton.tintColor = .gray
            } else {
                recommendButton.tintColor = .gray
                genreButton.tintColor = .red
            }
        }
    }
}
