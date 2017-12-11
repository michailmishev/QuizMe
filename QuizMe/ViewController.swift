//
//  ViewController.swift
//  QuizMe
//
//  Created by Michail Mishev on 11/12/17.
//  Copyright © 2017 Michail Mishev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var progressBar: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        progressBar.frame.size.width = (view.frame.size.width / 12) * 6
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

