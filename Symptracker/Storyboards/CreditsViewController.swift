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
        credits.text = "This is our Team:\n\nHong Tuck Yan Christopher: Marketer (Under ADMT)\n\nJerick Seng: Business Developer (Under INE)\n\nShanjiith Pranov: Coder (Under ICT)\n\nSung Yeji: Marketer (Under ADMT)\n\n\n\nWe will like to take this moment to thank our Teachers fro the Changemaker department\n\nArtsDesignMediaTechnology: Mr Soh Wee Peng\n\nInnovation&Entrepreneurship : Mr Lam Him Chew\n\nInfoCommTechnology: Mr Robin Pang\n\n They have put in their heart and soul into assisting us with the right techniques in order to accomplish our tasks,  and they also helped with with any problems we had, being very patient. The feedback they provided were very honest and effective in our succession.\n"
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
