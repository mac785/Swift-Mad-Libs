//
//  ViewControllerV.swift
//  JBM_MadLibs
//
//  Created by Jamie Moseley on 2/23/17.
//  Copyright © 2017 Jamie Moseley. All rights reserved.
//

import UIKit

class ViewControllerV: UIViewController {

    @IBOutlet var responseTextView:UITextView!
    var responseInfo: MadLibWordstuffs?
    override func viewWillAppear(_ animated: Bool){
        print("candy")
        if let info = responseInfo{
            print("Hello")
            if  let noun0 = info.noun_0,
                let verb0 = info.verb_0,
                let singularNoun = info.singularNoun_0,
                let number = info.number_0,
                let location = info.location_0,
                let verb1 = info.verb_1,
                let adjective0 = info.adjective_0,
                let lb3 = info.lb3_0,
                let adverb = info.adverb_0,
                let musicalInstrument = info.musicalInstrument_0,
                let adjective1 = info.adjective_1,
                let verb2 = info.verb_2{
                
                print("help")
                
                let responseString = "Once upon a time, there was a young \(noun0). This \(noun0) loved to \(verb0) with their pet \(singularNoun). \(number) times a day, the two would go to the \(location) and go \(verb1). Their favourite thing to do was to go see the Lovetts. Their favourite was the \(adjective0) \(lb3). After that, they would go \(adverb) play their favourite musical instrument, the \(musicalInstrument). They would play until they were \(adjective1) and then \(verb2) back home."
                responseTextView.text = responseString
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
