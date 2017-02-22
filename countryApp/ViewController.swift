//
//  ViewController.swift
//  countryApp
//
//  Created by Vinoth Sridharan on 2/22/17.
//  Copyright © 2017 Vinoth Sridharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet var country: UIImageView!
    
    
    @IBOutlet var currency: UIImageView!
    
    
    @IBOutlet var countryName: UILabel!
    
    @IBOutlet var currencyName: UILabel!
    
    
    @IBOutlet var message: UILabel!
    
    
    var list = [["India","USA","Qatar","London","Germany"],["Rupee","Dollar","Riyal","Pound","Euro"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return list.count
        
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        
        return list[component].count
    }
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
         return list[component][row]
        
    }

    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        
        let item1 =  list[0][pickerView.selectedRow(inComponent: 0)]
        let item2 = list[1][pickerView.selectedRow(inComponent: 1)]
        
        let india = UIImage(named: "india")
        let usa = UIImage(named: "usa")
        let qatar = UIImage(named: "qatar")
        let london = UIImage(named: "london")
        let germany = UIImage(named: "germany")
        
        let rupee = UIImage(named: "rupee")
        let dollar = UIImage(named: "dollar")
        let riyal = UIImage(named: "riyal")
        let pound = UIImage(named: "pound")
        let euro = UIImage(named: "euro")
        let correctMess = "The currency of \(item1) is \(item2)."
        let mess = "Match the country with currency"
        
        switch item1 {
        case "India":
            country.image = india
            countryName.text = "India"
        case "USA":
            country.image = usa
            countryName.text = "USA"
        case "Qatar":
            country.image = qatar
            countryName.text = "Qatar"
        case "London":
            country.image = london
            countryName.text = "LONDON"
        case "Germany":
            country.image = germany
            countryName.text = "germany"
            
        default:
            country.image = india
            countryName.text = "INDIA"
        }//end of switch
    
        switch item2 {
        case "Rupee":
            currency.image = rupee
            currencyName.text = "Rupee"
            
            if (countryName.text == "India"){
                
            message.text = correctMess
            } else{
                message.text = mess
            }
            
            case "Dollar":
            currency.image = dollar
            currencyName.text = "Dollar"
            
            if (countryName.text == "USA"){
                
                message.text = correctMess
            } else{
                message.text = mess
            }

            case "Riyal":
            currency.image = riyal
            currencyName.text = "Riyal"
            
            if (countryName.text == "Qatar"){
                
                message.text = correctMess
            } else{
                message.text = mess
            }

            case "Pound":
            currency.image = pound
            currencyName.text = "Pound"
            
            if (countryName.text == "LONDON"){
                
                message.text = correctMess
            } else{
                message.text = mess
            }

            case "Euro":
            currency.image = euro
            currencyName.text = "Euro"
            
            if (countryName.text == "germany"){
                
                message.text = correctMess
            } else{
                message.text = mess
            }


        default:
            currency.image = rupee
            currencyName.text = "Rupee"
            
        }
    }
    
    


}

