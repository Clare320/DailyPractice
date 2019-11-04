//
//  PrintSandboxViewController.swift
//  DailyPractice
//
//  Created by Kede on 2019/11/4.
//  Copyright © 2019 Clare. All rights reserved.
//

import UIKit

class PrintSandboxViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "沙盒"
        
        // Do any additional setup after loading the view.
        
        printAppSandboxPath()
    }
    

    func printAppSandboxPath() {
        let path = Bundle.main.bundlePath
        print("Sandbox-->\(path)")
        
        /**
         Document、iTunes会同步，常用存储用户内容
         Library、Caches、 iTunes不会同步，适合存体积大、不需要备份的非重要数据
         Preferences、 itunes会同步，一般保存应用的设置信息
         tmp 临时文件
         */
        
        
        /**
         case applicationDirectory
         
         case demoApplicationDirectory
         
         case developerApplicationDirectory
         
         case adminApplicationDirectory
         
         case libraryDirectory
         
         case developerDirectory
         
         case userDirectory
         
         case documentationDirectory
         
         case documentDirectory
         
         case coreServiceDirectory
         
         @available(iOS 4.0, *)
         case autosavedInformationDirectory
         
         case desktopDirectory
         
         case cachesDirectory
         
         case applicationSupportDirectory
         
         @available(iOS 2.0, *)
         case downloadsDirectory
         
         @available(iOS 4.0, *)
         case inputMethodsDirectory
         
         @available(iOS 4.0, *)
         case moviesDirectory
         
         @available(iOS 4.0, *)
         case musicDirectory
         
         @available(iOS 4.0, *)
         case picturesDirectory
         
         @available(iOS 4.0, *)
         case printerDescriptionDirectory
         
         @available(iOS 4.0, *)
         case sharedPublicDirectory
         
         @available(iOS 4.0, *)
         case preferencePanesDirectory
         
         
         @available(iOS 4.0, *)
         case itemReplacementDirectory
         
         case allApplicationsDirectory
         
         case allLibrariesDirectory
         
         @available(iOS 11.0, *)
         case trashDirectory
         */
        let fileManager = FileManager.default
        let documentPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first
        print("documentPaths-->\(documentPath)")
        
    }

}
