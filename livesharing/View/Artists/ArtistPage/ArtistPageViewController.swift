//
//  ArtistPageViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/07.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit


class ArtistPageViewController: UIViewController, UIScrollViewDelegate {
    
    let display: CGRect = UIScreen.main.bounds
    @IBOutlet weak var artistImageView: UIImageView!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var bandMember: UILabel!
    @IBOutlet weak var unerLineView: UIView!
    @IBOutlet weak var underLineLeftConstraint: NSLayoutConstraint!
    @IBOutlet weak var underLineWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var musicTabButton: UIButton!
    @IBOutlet weak var liveTabButton: UIButton!
    @IBOutlet weak var wikiTabButton: UIButton!
    @IBOutlet weak var horizontalScrollView: UIScrollView!
    @IBOutlet weak var musicContinerView: UIView!
    @IBOutlet weak var liveContainerView: UIView!
    @IBOutlet weak var wikiContainerView: UIView!
    @IBOutlet weak var musicWidhConstraint: NSLayoutConstraint!
    @IBOutlet weak var liveWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var wikiWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var viewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var headerTopConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        artistImageView.image = UIImage(named: "myfirststory")
        artistName.text = "MY FIRST STORY"
        bandMember.text = "Vo. Hiro, Gt. Teru, Ba. Nobu, Dr. Kid'z"
        bandMember.textColor = .gray
        horizontalScrollView.delegate = self
        musicWidhConstraint.constant = display.size.width
        liveWidthConstraint.constant = display.size.width
        wikiWidthConstraint.constant = display.size.width
        viewWidthConstraint.constant = display.size.width * 3
        underLineWidthConstraint.constant = display.size.width / 3
        tabButton()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tabButton() {
        if horizontalScrollView.contentOffset.x < 207 {
            musicTabButton.setTitleColor(.red, for: .normal)
            liveTabButton.setTitleColor(.black, for: .normal)
            wikiTabButton.setTitleColor(.black, for: .normal)
        } else if horizontalScrollView.contentOffset.x < 621 {
            musicTabButton.setTitleColor(.black, for: .normal)
            liveTabButton.setTitleColor(.red, for: .normal)
            wikiTabButton.setTitleColor(.black, for: .normal)
        } else {
            musicTabButton.setTitleColor(.black, for: .normal)
            liveTabButton.setTitleColor(.black, for: .normal)
            wikiTabButton.setTitleColor(.red, for: .normal)
        }
    }
    
    @IBAction func musicTabButtonTapped(_ sender: Any) {
        print("hello")
        horizontalScrollView.contentOffset.x = 0
        underLineLeftConstraint.constant = horizontalScrollView.contentOffset.x / 3
        tabButton()
    }
    
    @IBAction func liveTabButtonTapped(_ sender: Any) {
        print("goodbye")
        horizontalScrollView.contentOffset.x = 414
        underLineLeftConstraint.constant = horizontalScrollView.contentOffset.x / 3
        tabButton()
    }
    
    @IBAction func wikiTabButtonTapped(_ sender: Any) {
        print("thank you")
        horizontalScrollView.contentOffset.x = 828
        underLineLeftConstraint.constant = horizontalScrollView.contentOffset.x / 3
        tabButton()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(horizontalScrollView.contentOffset.x)
        if scrollView == self.horizontalScrollView {
            underLineLeftConstraint.constant = scrollView.contentOffset.x / 3
            tabButton()
        } else {
            print(scrollView.contentOffset)
            headerTopConstraint.constant = max(-(scrollView.contentOffset.y), +50)
        }
    }
    
}
