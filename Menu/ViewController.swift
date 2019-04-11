//
//  ViewController.swift
//  Menu
//
//  Created by 백유진 on 06/04/2019.
//  Copyright © 2019 백유진. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var InputName: UITextField!
    @IBOutlet var PIckerMenu: UIPickerView!
    
    let dishrArray: Array<String> = ["짜장덮밥, 짬뽕국", "계란말이, 된장국", "불고기덮밥, 계란국"]
    let drinktArray: [String] = ["화이트와인", "레드와인", "밀맥주","흑맥주"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return dishrArray.count
        } else {
            return drinktArray.count }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return dishrArray[row] }
        else {
            return drinktArray[row] }
    }
    
    @IBAction func getValue(_ sender: UIButton) {
        let dish: String = dishrArray[self.PIckerMenu.selectedRow(inComponent: 0)]
        let drink: String = drinktArray[self.PIckerMenu.selectedRow(inComponent: 1)]
        let name: String = InputName.text!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView" {
            let destVC = segue.destination as! OrderViewController
            let ordered: String! = InputName.text! + "님: " + dishrArray[self.PIckerMenu.selectedRow(inComponent: 0)] +
                "," + drinktArray[self.PIckerMenu.selectedRow(inComponent: 1)]
            destVC.title = InputName.text!
           print(ordered)
            var outString: String = "주문 내역은:\n"
            outString += ordered
            destVC.info = outString
        
            
        }
    }
    

}
