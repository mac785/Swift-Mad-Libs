//
//  ViewControllerIII.swift
//  JBM_MadLibs
//
//  Created by Jamie Moseley on 2/23/17.
//  Copyright © 2017 Jamie Moseley. All rights reserved.
//

import UIKit

class ViewControllerIII: UIViewController, UITextFieldDelegate, UIPickerViewDataSource {
    
    @IBOutlet var locationField:UITextField!
    @IBOutlet var verbField:UITextField!
    @IBOutlet var adjectiveField:UITextField!
    @IBOutlet var lovettBakerPicker:UIPickerView!
    
    var myInfo:MadLibWordstuffs?
    
    var listOfLB3s:[String] = ["LB3","LB3G","LB3GETSOME","Lovett","Lovett Baker","Lovettomundo","Lovettina","LBMontana","Lovett Baker III","Lovett Baker the Third","LOVIT"]

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        if pickerView == lovettBakerPicker
        {
            if component == 0
            {
                return listOfLB3s.count
            }
        }
        return 0  // again, we shouldn't get here.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        if pickerView == lovettBakerPicker
        {
            return 1
        }
        else
        {
            return 0 // a dummy value that indicates something's wrong.
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if pickerView == lovettBakerPicker
        {
            if component == 0
            {
                return listOfLB3s[row]
            }
        }
        return "error!"  // again, we shouldn't get here, but is important to
        // know if we do..
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        print("Heading 4nd view")
        
        if let tempInfo = myInfo{
            tempInfo.location_0 = locationField.text
            tempInfo.verb_1 = verbField.text
            tempInfo.adjective_0 = adjectiveField.text
            let selectedRow = lovettBakerPicker.selectedRow(inComponent: 0)
            let selectedString = listOfLB3s[selectedRow]
            tempInfo.lb3_0 = selectedString
            
            if (segue.identifier == "goToFourthView"){
                if let fourthVC = segue.destination as? ViewControllerIV{
                    fourthVC.myInfo = myInfo
                }
                else{
                    print("Could not find FourthVC")
                }
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
    
    @IBAction func unwindSegueToThirdView(segue: UIStoryboardSegue)
    {
        print("unwinding to 3.")
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
