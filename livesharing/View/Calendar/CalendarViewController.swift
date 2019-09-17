//
//  CalendarViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/01.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit
import Firebase


class CalendarViewController: UIViewController, UIScrollViewDelegate {
    
    var account: AccountModel!
    var auth: Auth!
    
    let display: CGRect = UIScreen.main.bounds
    @IBOutlet weak var narrowButton: UIButton!
    @IBOutlet weak var dateButton: UIButton!
    @IBOutlet weak var mapButton: UIButton!
    @IBOutlet weak var viewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var horizontalScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        auth = Auth.auth()
        guard let user: User = auth.currentUser else {
            return
        }
        account = AccountModel(data: ["id": user.providerID])
        
        narrowButton.setTitle("絞り込み", for: .normal)
        narrowButton.tintColor = .blue
        horizontalScrollView.delegate = self
        horizontalScrollView.contentOffset.x = 0
        viewWidthConstraint.constant = display.size.width * 2
        dateButton.tintColor = .red
        mapButton.tintColor = .gray
        
    }
    
    @IBAction func dateButtonTapped(_ sender: Any) {
        horizontalScrollView.contentOffset.x = 0
        dateButton.tintColor = .red
        mapButton.tintColor = .gray
    }
    
    @IBAction func mapButtonTapped(_ sender: Any) {
        horizontalScrollView.contentOffset.x = 414
        dateButton.tintColor = .gray
        mapButton.tintColor = .red
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == horizontalScrollView {
            print(scrollView.contentOffset.x)
            if scrollView.contentOffset.x < 207 {
                dateButton.tintColor = .red
                mapButton.tintColor = .gray
            } else {
                dateButton.tintColor = .gray
                mapButton.tintColor = .red
            }
        }
    }
}
