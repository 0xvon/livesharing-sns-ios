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


class CalendarViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var account: AccountModel!
    var auth: Auth!
    
    @IBOutlet weak var calendarTableView: UITableView!
    @IBOutlet weak var narrowButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        auth = Auth.auth()
        let user = auth.currentUser!
        account = AccountModel(data: ["id": user.providerID])
        
        narrowButton.setTitle("絞り込み", for: .normal)
        narrowButton.tintColor = .blue
        
        calendarTableView.delegate = self
        calendarTableView.dataSource = self
        calendarTableView.register(UINib(nibName: "CalendarCell", bundle: nil), forCellReuseIdentifier: "CalendarCell")
    }
}

extension CalendarViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = calendarTableView.dequeueReusableCell(withIdentifier: "CalendarCell", for: indexPath) as! CalendarCellViewController
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "8月21日"
        return label
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toLivePage", sender: nil)
    }
    
}
