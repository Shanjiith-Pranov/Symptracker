//
//  QuickAcessViewController.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 22/8/20.
//  Copyright © 2020 sst. All rights reserved.
//

import UIKit

class QuickAcessViewController: UIViewController {
    
    
    var viruses = ["Covid","Hello","oh no its corona time"]

    @IBOutlet var tap: UITapGestureRecognizer!
    @IBOutlet weak var news: UITableView!
    @IBOutlet weak var cases: UIView!
    @IBOutlet weak var virusSelector: UIView!
    @IBOutlet weak var virusTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        virusSelector.isHidden = true
    }
    
    @IBAction func tapped(_ sender: Any) {
        virusSelector.isHidden = false
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viruses.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "virusCells", for: indexPath)

        let currentVirus = viruses[indexPath.row]
        if let cell = cell as? Virus{
            cell.nameLabel.text = currentFriend.name
            cell.ageLabel.text = "\(currentFriend.age)"
            cell.schoolLabel.text = currentFriend.school
            cell.profileImageView.image = UIImage(named: currentFriend.imageName)
        }

        return cell
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
