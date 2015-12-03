//
//  ViewController.swift
//  RealmAutoIncrement
//
//  Created by kotala tetsuya on 2015/12/03.
//  Copyright © 2015年 kotalab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pushButton(sender: AnyObject) {
        
        let myRealm = MyRealm()
        myRealm.createNewPerson("satou")
        
        print(myRealm.findAllPerson)
    }

}

