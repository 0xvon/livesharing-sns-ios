//
//  GenreViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/19.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit

class GenreViewController: UIViewController {
    
    @IBOutlet weak var genreCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        genreCollectionView.delegate = self
        genreCollectionView.dataSource = self
        genreCollectionView.register(UINib(nibName: "GenreCell", bundle: nil), forCellWithReuseIdentifier: "GenreCell")
    }
}

extension GenreViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = genreCollectionView.dequeueReusableCell(withReuseIdentifier: "GenreCell", for: indexPath) as! GenreCellViewController
        return cell
    }
    
    
}
