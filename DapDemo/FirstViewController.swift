//
//  FirstViewController.swift
//  DapDemo
//
//  Created by YJ Park on 14/11/22.
//  Copyright (c) 2014年 AngelDnD. All rights reserved.
//

import UIKit
import DapLua

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        DapLuaState.sharedState().bootstrap()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

