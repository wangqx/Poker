//
//  GameViewController.swift
//  扑克记忆练习
//
//  Created by wangqingxin on 15/4/5.
//  Copyright (c) 2015年 Danbo. All rights reserved.
//

import UIKit

class GameSettingViewController: UIViewController {
    
    @IBOutlet weak var pokerCountInput: UITextField!
    @IBOutlet weak var rememberTimeInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var pokerCount = pokerCountInput.text.toInt()
        var rememberTime = rememberTimeInput.text.toInt()
    
        if segue.identifier == "startTraining" {
            if let gameRunningViewController = segue.destinationViewController as? GameRunningViewController {
                gameRunningViewController.pokerCount = pokerCount!
                gameRunningViewController.rememberTime = rememberTime!
            }
        }
    }
    

}
