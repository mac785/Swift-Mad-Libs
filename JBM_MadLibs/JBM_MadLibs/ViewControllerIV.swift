//
//  ViewControllerIV.swift
//  JBM_MadLibs
//
//  Created by Jamie Moseley on 2/23/17.
//  Copyright © 2017 Jamie Moseley. All rights reserved.
//

import UIKit

class ViewControllerIV: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var adverbField:UITextField!
    @IBOutlet var musicalInstrumentField:UITextField!
    @IBOutlet var adjectiveField:UITextField!
    @IBOutlet var verbField:UITextField!
    
    var myInfo:MadLibWordstuffs?


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        print("Heading Fifth view")
        if let tempInfo = myInfo{
            tempInfo.adverb_0 = adverbField.text
            tempInfo.musicalInstrument_0 = musicalInstrumentField.text
            tempInfo.adjective_1 = adjectiveField.text
            tempInfo.verb_2 = verbField.text
            
            if (segue.identifier == "goToFifthView"){
                if let fifthVC = segue.destination as? ViewControllerV{
                    fifthVC.responseInfo = myInfo
                }
                else{
                    print("Could not find FifthVC")
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindSegueToFourthView(segue: UIStoryboardSegue)
    {
        print("unwinding to 4.")
    }
    @IBAction func userTappedView(_ sender: Any) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()  // make the keyboard go away.
        return true  // I've handled this!
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
