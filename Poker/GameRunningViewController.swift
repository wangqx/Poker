//
//  GameRunningViewController.swift
//  Poker
//
//  Created by wangqingxin on 15/4/12.
//  Copyright (c) 2015年 Danbo. All rights reserved.
//

import UIKit

class GameRunningViewController: UIViewController {
    
    let POKER_NUMBER_COUNT = 13
    let POKER_COLOR_COUNT = 4
    
    var pokerCount = 0
    var rememberTime = 0
    var currentIndex = 0
    var pokerList: [Poker] = []
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initPokerList()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func clickNextButton(sender: AnyObject) {
        if (currentIndex < pokerCount) {
            currentIndex++
            println(currentIndex)
        }
        
    }
    
    @IBAction func clickPreviousButton(sender: AnyObject) {
        if (currentIndex > 0) {
            currentIndex--
            println(currentIndex)
        }
    }
    
    func initPokerList() {
        generateSortedPokerList()
        
        shufflePokerList()
    }
    
    func generateSortedPokerList() {
        for indexNumber in 1...POKER_NUMBER_COUNT {
            var pokerNumber = Poker.Number(rawValue: indexNumber)
            for indexColor in 1...POKER_COLOR_COUNT {
                var pokerColor = Poker.Color(rawValue: indexColor)
                var poker = Poker(number: pokerNumber!, color: pokerColor!)
                pokerList.append(poker)
            }
        }
    }
    
    func shufflePokerList() {
        let pokerAmount = pokerList.count
        for index in 0...(pokerAmount - 1) {
            var randomIndex = Int(arc4random_uniform(UInt32(pokerAmount - index - 1)))
            var tempPoker = pokerList[pokerAmount-index - 1]
            pokerList[pokerAmount-index-1] = pokerList[randomIndex]
            pokerList[randomIndex] = tempPoker
        }
        
    }
    
}
