//
//  BulletsViewController.swift
//  Shooting
//
//  Created by Kang Zhe  on 18/03/2018.
//  Copyright © 2018 MC. All rights reserved.
//

import UIKit

class BulletsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
    }
}

extension BulletsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "bulletCell") else {fatalError("No resuable cell.")}
        
        
        
        return cell
    }
}
