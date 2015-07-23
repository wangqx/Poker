//
//  GameViewController.swift
//  扑克记忆练习
//
//  Created by wangqingxin on 15/4/5.
//  Copyright (c) 2015年 Danbo. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    var pokerList: [Poker] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generatePokerList(10)
        
        println(pokerList.count)
        
        println(pokerList)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generatePokerList(var pokerCount: Int) {
        for index in 0...pokerCount {
            var poker = Poker(number: Poker.PokerNumber.Ace, color: Poker.PokerColor.Spade)
            pokerList.append(poker)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
