//
//  LiveSchedule.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit


class LiveScheduleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var liveScheduleTitle: UILabel!
    @IBOutlet weak var liveScheduleTableView: UITableView!
    @IBOutlet weak var liveScheduleSeeMoreButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        liveScheduleTableView.delegate = self
        liveScheduleTableView.dataSource = self
        liveScheduleTableView.register(UINib(nibName: "LiveScheduleCell", bundle: nil), forCellReuseIdentifier: "LiveScheduleCell")
    }
    
    @IBAction func liveScheduleSeeMoreButtonTapped(_ sender: Any) {
    }
}

extension LiveScheduleViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = liveScheduleTableView.dequeueReusableCell(withIdentifier: "LiveScheduleCell", for: indexPath) as! LiveScheduleCellViewController
        return cell
    }
}
