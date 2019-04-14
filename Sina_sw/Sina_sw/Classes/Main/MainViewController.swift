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
                
        addChild(childVCName: "HomeViewController", title: "首页", image: "tabbar_home")
        addChild(childVCName: "MessageViewController", title: "消息", image: "tabbar_message_center")
        addChild(childVCName: "DiscoverViewController", title: "发现", image: "tabbar_discover")
        addChild(childVCName: "ProfileViewController", title: "我的", image: "tabbar_profile")

    }
    
//    根据字符串创建VC
    private func addChild(childVCName: String, title:String, image:String) {
        
//        在info.plist 找到项目名称（命名空间）
        guard let nameSpace = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String else {
            return
        }
        
//        通过反射机制创建Anyclass （命名空间+.+className）
        guard let vcClass = NSClassFromString(nameSpace + "." + childVCName) else {
            print("没有找到class")
            return
        }
        
//      AnyClass 转换成 UIViewController
        guard let childVcType = vcClass as? UIViewController.Type else{
            return
        }
        
//        初始化UIViewController
        let childVC = childVcType.init()
        
        childVC.title = title
        childVC.tabBarItem.image = UIImage(named: image)
        childVC.tabBarItem.selectedImage = UIImage(named: image + "_highlighted")
        let childNav = UINavigationController(rootViewController: childVC)
        addChild(childNav)
    }
}
