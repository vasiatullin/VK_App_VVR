//
//  ProfileViewController.swift
//  VK_App_VVR
//
//  Created by vadim vasiatullin on 09.07.2023.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let cells = ["Друзья", "Группы", "Музыка"]
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //этот метод показывает сколько строк будет в нашей таблице
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {//этот метод показывает нумирайцию в нашей таблице
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileTableViewCell
        cell.nameMenu.text = cells[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return HeaderView.instantiate()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 110
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
}
