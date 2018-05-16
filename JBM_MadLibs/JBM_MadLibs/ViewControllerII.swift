//
//  ViewControllerII.swift
//  JBM_MadLibs
//
//  Created by Jamie Moseley on 2/23/17.
//  Copyright © 2017 Jamie Moseley. All rights reserved.
//

import UIKit

class ViewControllerII: UIViewController, UITextFieldDelegate {
    
    var myInfo: MadLibWordstuffs?
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()  // make the keyboard go away.
        return true  // I've handled this!
    } 
    
    @IBOutlet var nounField:UITextField!
    @IBOutlet var verbField:UITextField!
    @IBOutlet var singularNounField:UITextField!
    @IBOutlet var numberSlider:UISlider!
    @IBOutlet var sliderValueLabel:UILabel!
    
    func textFeildShouldReturn(_ textFeild: UITextField)-> Bool{
        textFeild.resignFirstResponder()
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        print("Heading 3nd view")
        
        if myInfo == nil{
           myInfo = MadLibWordstuffs()
        }
        if let tempInfo = myInfo{
            tempInfo.noun_0 = nounField.text
            tempInfo.verb_0 = verbField.text
            tempInfo.singularNoun_0 = singularNounField.text
            tempInfo.number_0 = Int(numberSlider.value)
            
            if (segue.identifier == "goToThirdView"){
                if let thirdVC = segue.destination as? ViewControllerIII{
                    thirdVC.myInfo = myInfo
                }
                else{
                    print("Could not find ThirdVC")
                }
            }
        }
    }
    
    @IBAction func sliderChanged(Sender:UISlider){
        let sliderVal = numberSlider.value
        sliderValueLabel.text = String(format: "%d", Int(sliderVal))
        
    }
    
    @IBAction func userTappedView(_ sender: Any) {
        view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindSegueToSecondView(segue: UIStoryboardSegue)
    {
        print("unwinding to 2.")
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
