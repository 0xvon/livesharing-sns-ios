//
//  NotificationViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/01.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class NotififcationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var auth: Auth!
    var account: AccountModel!
    var notification: NotificationModel!
    
    @IBOutlet weak var notificationTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        auth = Auth.auth()
        guard let user: User = auth.currentUser else {
            return
        }
        account = AccountModel(data: ["id": user.providerID])
        
        notificationTableView.delegate = self
        notificationTableView.dataSource = self
        notificationTableView.register(UINib(nibName: "NotificationCell", bundle: nil), forCellReuseIdentifier: "NotificationCell")
    }
}

extension NotififcationViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = notificationTableView.dequeueReusableCell(withIdentifier: "NotificationCell", for: indexPath) as! NotificationCellViewController
        return cell
    }
}
