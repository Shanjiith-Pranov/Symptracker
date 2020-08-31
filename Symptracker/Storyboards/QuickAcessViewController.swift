//
//  QuickAcessViewController.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 22/8/20.
//  Copyright © 2020 sst. All rights reserved.
//

import UIKit

class QuickAcessViewController: UIViewController {

    @IBOutlet var tap: UITapGestureRecognizer!
    @IBOutlet weak var news: UITableView!
    @IBOutlet weak var cases: UIView!
    @IBOutlet weak var virusSelector: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        virusSelector.isHidden = true
        
    }
    
    @IBAction func tapped(_ sender: Any) {
        virusSelector.isHidden = false
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
