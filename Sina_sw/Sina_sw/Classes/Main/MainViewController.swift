//
//  MainViewController.swift
//  Sina_sw
//
//  Created by C.z on 2019/4/14.
//  Copyright © 2019 C.z. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        addChild(childVC: HomeViewController(), title: "首页", image: "tabbar_home")
        addChild(childVC: MessageViewController(), title: "消息", image: "tabbar_message_center")
        addChild(childVC: DiscoverViewController(), title: "发现", image: "tabbar_discover")
        addChild(childVC: ProfileViewController(), title: "我的", image: "tabbar_profile")

    }
    
    private func addChild(childVC: UIViewController, title:String, image:String) {
        
        guard   else {
            <#statements#>
        }
        
        childVC.title = title
        childVC.tabBarItem.image = UIImage(named: image)
        childVC.tabBarItem.selectedImage = UIImage(named: image + "_highlighted")
        let childNav = UINavigationController(rootViewController: childVC)
        addChild(childNav)
    }
}
