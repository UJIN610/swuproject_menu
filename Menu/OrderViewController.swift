//
//  OrderViewController.swift
//  Menu
//
//  Created by 백유진 on 06/04/2019.
//  Copyright © 2019 백유진. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    var info :String?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            print(info)
            if let contentString = info{
                infoLabel.text = contentString
            }
            // Do any additional setup after loading the view.
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

