//
//  TrackerViewController.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 1/9/20.
//  Copyright © 2020 sst. All rights reserved.
//

import UIKit
import SafariServices

class TrackerViewController: UIViewController {
    
    let questions = [Questions(question: "Is you ok?", yesOrNo: true, button1Text: "Yes", button2Text: "-", button3Text: "No", button4Text: "-")]

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

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

}
