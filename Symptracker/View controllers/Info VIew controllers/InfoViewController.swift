//
//  InfoViewController.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 19/8/20.
//  Copyright © 2020 sst. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var GraphView: UIView!
    @IBOutlet weak var NewsView: UIView!
    @IBOutlet weak var ChooseGraphOrNews: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func segmentedCtrl(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            GraphView.isHidden = false
            NewsView.isHidden = true
            
            break
            
        case 1:
            GraphView.isHidden = true
            NewsView.isHidden = false
            
            break
            
        default:
            break
        }
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
