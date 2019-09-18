//
//  LivePageViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit

class LivePageViewController: UIViewController, UIScrollViewDelegate {
    
    let display: CGRect = UIScreen.main.bounds
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var tourName: UILabel!
    @IBOutlet weak var liveImage: UIImageView!
    @IBOutlet weak var infoTabButton: UIButton!
    @IBOutlet weak var setlistTabButton: UIButton!
    @IBOutlet weak var commentTabButton: UIButton!
    @IBOutlet weak var underLineView: UIView!
    @IBOutlet weak var underLineWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var underLineLeftConstraint: NSLayoutConstraint!
    @IBOutlet weak var headerTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var horizontalScrollView: UIScrollView!
    @IBOutlet weak var viewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var infoContainerView: UIView!
    
    @IBOutlet weak var setListContainerView: UIView!
    @IBOutlet weak var commentContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        horizontalScrollView.delegate = self
        dateLabel.text = "2019/08/21"
        dateLabel.tintColor = .gray
        tourName.text = "MY FIRST STORY TOUR 2019"
        liveImage.image = UIImage(named: "myfirststory")
        
        viewWidthConstraint.constant = display.size.width * 3
        underLineWidthConstraint.constant = display.size.width / 3
    }
    
    func tabButton() {
        if horizontalScrollView.contentOffset.x < 207 {
            infoTabButton.setTitleColor(.red, for: .normal)
            setlistTabButton.setTitleColor(.black, for: .normal)
            commentTabButton.setTitleColor(.black, for: .normal)
        } else if horizontalScrollView.contentOffset.x < 621 {
            infoTabButton.setTitleColor(.black, for: .normal)
            setlistTabButton.setTitleColor(.red, for: .normal)
            commentTabButton.setTitleColor(.black, for: .normal)
        } else {
            infoTabButton.setTitleColor(.black, for: .normal)
            setlistTabButton.setTitleColor(.black, for: .normal)
            commentTabButton.setTitleColor(.red, for: .normal)
        }
    }
    
    @IBAction func infoTabButtonTapped(_ sender: Any) {
        horizontalScrollView.contentOffset.x = 0
        underLineLeftConstraint.constant = horizontalScrollView.contentOffset.x / 3
        tabButton()
    }
    
    @IBAction func setlistTabButtonTapped(_ sender: Any) {
        horizontalScrollView.contentOffset.x = 414
        underLineLeftConstraint.constant = horizontalScrollView.contentOffset.x / 3
        tabButton()
    }
    
    @IBAction func commentTabButtonTapped(_ sender: Any) {
        horizontalScrollView.contentOffset.x = 828
        underLineLeftConstraint.constant = horizontalScrollView.contentOffset.x / 3
        tabButton()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == self.horizontalScrollView {
            underLineLeftConstraint.constant = scrollView.contentOffset.x / 3
            tabButton()
        } else {
            headerTopConstraint.constant = max(-(scrollView.contentOffset.y), +50)
        }
    }
}
