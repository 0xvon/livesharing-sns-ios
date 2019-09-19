//
//  RecommendArtistViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/19.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit

class RecommendArtistViewController: UIViewController {
    
    @IBOutlet weak var recommendArtistCollectionView: UICollectionView!
    @IBOutlet weak var topicTableView: UITableView!
    @IBOutlet weak var recommendViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var topicViewWidthConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recommendArtistCollectionView.delegate = self
        recommendArtistCollectionView.dataSource = self
        recommendArtistCollectionView.register(UINib(nibName: "RecommendArtistCell", bundle: nil), forCellWithReuseIdentifier: "RecommendArtistCell")
        
        topicTableView.delegate = self
        topicTableView.dataSource = self
        topicTableView.register(UINib(nibName: "TopicCell", bundle: nil), forCellReuseIdentifier: "TopicCell")
    }
}

extension RecommendArtistViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = recommendArtistCollectionView.dequeueReusableCell(withReuseIdentifier: "RecommendArtistCell", for: indexPath) as! RecommendArtistCellViewController
        return cell
    }
    
    
}

extension RecommendArtistViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = topicTableView.dequeueReusableCell(withIdentifier: "TopicCell", for: indexPath) as! TopicCellViewController
        return cell
    }
    
    
}
