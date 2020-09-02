//
//  CreditsViewController.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 1/9/20.
//  Copyright © 2020 sst. All rights reserved.
//

import UIKit

class CreditsViewController: UIViewController {

    @IBOutlet weak var credits: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        credits.text = ""
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
