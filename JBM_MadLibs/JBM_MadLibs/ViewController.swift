//
//  ViewController.swift
//  JBM_MadLibs
//
//  Created by Jamie Moseley on 2/21/17.
//  Copyright © 2017 Jamie Moseley. All rights reserved.
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
    
    @IBAction func unwindSegueToFirstView(segue: UIStoryboardSegue)
    {
        print("unwinding to 1.")
    }

}

