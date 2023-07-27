//
//  TabbarController.swift
//  VK_App_VVR
//
//  Created by vadim vasiatullin on 09.07.2023.
//

import UIKit

class TabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true // тем самым мы скрываем кнопку назад
    }

}
