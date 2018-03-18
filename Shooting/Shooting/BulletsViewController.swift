//
//  BulletsViewController.swift
//  Shooting
//
//  Created by Kang Zhe  on 18/03/2018.
//  Copyright © 2018 MC. All rights reserved.
//

import UIKit

class BulletsViewController: UIViewController {
    
    struct Bullet {
        let name: String
        let power: Int
    }
    
    let bullets = [Bullet(name: "Bullet1", power: 1),
                   Bullet(name: "Bullet2", power: 2),
                   Bullet(name: "Bullet3", power: 3),
                   Bullet(name: "Bullet4", power: 4)]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
    }
}

extension BulletsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bullets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "bulletCell") else {fatalError("No resuable cell.")}
        
        let bullet = bullets[indexPath.row]
        
        cell.textLabel?.text = bullet.name
        cell.detailTextLabel?.text = "power: \(bullet.power)"
        
        return cell
    }
}
