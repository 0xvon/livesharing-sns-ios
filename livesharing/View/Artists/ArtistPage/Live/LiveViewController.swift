//
//  LiveViewController.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit


class LiveViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var liveTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        liveTableView.delegate = self
        liveTableView.dataSource = self
        liveTableView.register(UINib(nibName: "LiveCell", bundle: nil), forCellReuseIdentifier: "LiveCell")
    }
}

extension LiveViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = liveTableView.dequeueReusableCell(withIdentifier: "LiveCell", for: indexPath) as! LiveCellViewController
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toLivePage", sender: nil)
    }
}
