//
//  ViewController.swift
//  GSAlertView
//
//  Created by greenSyntax on 03/16/2018.
//  Copyright (c) 2018 greenSyntax. All rights reserved.
//

import UIKit
import GSAlertView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)


    }
    @IBAction func buttonClicked(_ sender: Any) {

        let imageSample = UIImage(named: "sample")

        let alert = GSAlertView(title: "Hello India", image: imageSample!)
        //let alert = GSAlertView(title: "Hello World", description: "When there is no water in this word, then all thirsty people will die with thirst")
        alert.show(animated: true)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

