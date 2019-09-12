//
//  ArtistsViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/01.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit

class ArtistsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
    
    var artists: [String] = []
    var result: [String] = []
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var registerArtistButton: UIButton!
    @IBOutlet weak var artistSearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerArtistButton.setTitle("登録", for: .normal)
        registerArtistButton.tintColor = .blue
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "ArtistCell", bundle: nil), forCellWithReuseIdentifier: "ArtistCell")
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: self.view.bounds.width / 2 - 20, height: 300)
        layout.sectionInset = UIEdgeInsets(top: 30, left: 15, bottom: 30, right: 15)
        collectionView.collectionViewLayout = layout
        
        artistSearchBar.delegate = self
        artistSearchBar.searchBarStyle = .default
        artistSearchBar.showsSearchResultsButton = false
        artistSearchBar.placeholder = "検索"
        artistSearchBar.setValue("キャンセル", forKey: "_cancelButtonText")

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension ArtistsViewController {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArtistCell", for: indexPath) as! ArtistCellViewController
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toArtistPage", sender: nil)
    }
    
    // 検索ボタンが押された時に呼ばれる
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.view.endEditing(true)
        searchBar.showsCancelButton = true
        self.result = artists.filter{
            // 大文字と小文字を区別せずに検索
            $0.lowercased().contains(searchBar.text!.lowercased())
        }
        self.collectionView.reloadData()
    }
    
    // キャンセルボタンが押された時に呼ばれる
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.showsCancelButton = false
        self.view.endEditing(true)
        searchBar.text = ""
        self.collectionView.reloadData()
    }
    
    // テキストフィールド入力開始前に呼ばれる
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        searchBar.showsCancelButton = true
        return true
    }
    
}
