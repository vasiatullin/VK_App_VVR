//
//  ViewController.swift
//  VK_App_VVR
//
//  Created by vadim vasiatullin on 05.07.2023.
//

import UIKit

class ViewController: UIViewController {
    //  как только загружается наш view будет осущественн переход. не заметный для пользователя. Благодаря этому у пользовател появятся и navigationBar  и tapBar
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Tabbar", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "Tabbar")
        // объявляем переход на view controller 
        self.navigationController?.pushViewController(vc, animated: false)
    }


}


