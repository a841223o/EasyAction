//
//  ViewController.swift
//  EasyAction
//
//  Created by leo on 05/30/2019.
//  Copyright (c) 2019 leo. All rights reserved.
//

import UIKit
import EasyAction
class ViewController: UIViewController {
    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btn.touchUpInside {
           print("touchUpInside")
        }
        btn.touchDown {
            print("touchDown")
        }
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

