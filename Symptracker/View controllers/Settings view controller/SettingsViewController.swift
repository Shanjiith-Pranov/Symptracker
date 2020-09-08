//
//  SettingsViewController.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 19/8/20.
//  Copyright © 2020 sst. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    var name = "Name"
    var date = ""

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profilepic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLabel.text = name
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindToShow(_ sender: UIStoryboardSegue){
        nameLabel.text = name
    }

}
