//
//  BulletsViewController.swift
//  Shooting
//
//  Created by Kang Zhe  on 18/03/2018.
//  Copyright © 2018 MC. All rights reserved.
//

import UIKit

struct BulletDto {
    let name: String
    let power: Int
}

class BulletsViewController: UIViewController {
    
    let bullets = [BulletDto(name: "Bullet1", power: 1),
                   BulletDto(name: "Bullet2", power: 2),
                   BulletDto(name: "Bullet3", power: 3),
                   BulletDto(name: "Bullet4", power: 4)]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
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

extension BulletsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.visibleCells.forEach { (cell) in
            cell.accessoryType = .none
        }
        guard let cell = tableView.cellForRow(at: indexPath) else {return}
        cell.accessoryType = .checkmark
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
