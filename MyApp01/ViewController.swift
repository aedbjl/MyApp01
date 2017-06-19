//
//  ViewController.swift
//  MyApp01
//
//  Created by iii-user on 2017/6/19.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var btnClick: UIButton!
    @IBOutlet weak var lableMesg: UILabel!
    @IBAction func sayYA(_ sender: Any) {
        lableMesg.text = createLottery()
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createLottery() ->String{
        var setLottery:Set<Int> = []
        var a:Int

        while setLottery.count < 6 {
            a = Int(arc4random_uniform(49)) + 1
            setLottery.insert(a)
        }
        
        
        var strLottery = ""
        for lottery in setLottery {
            strLottery.append("\(lottery) ")
        }
        let arrayLottery = Array(setLottery)
        label1.text = String(arrayLottery [0])
        label2.text = String(arrayLottery [1])
        label3.text = String(arrayLottery [2])
        label4.text = String(arrayLottery [3])
        label5.text = String(arrayLottery [4])
        label6.text = String(arrayLottery [5])
        
        return strLottery
    }


}

