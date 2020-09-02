//
//  QuickAcessViewController.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 22/8/20.
//  Copyright :copyright: 2020 sst. All rights reserved.
//

import UIKit



class QuickAcessViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    var viruses = ["Covid","Hello","oh no its corona time"]
    var facts = true

    @IBOutlet var tap: UITapGestureRecognizer!
    @IBOutlet weak var news: UITableView!
    @IBOutlet weak var cases: UIView!
    @IBOutlet weak var virusTable: UITableView!
    @IBOutlet weak var newsTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        virusTable.isHidden = true
        
        
    }
    
    @IBAction func tapped(_ sender: Any) {
//        if facts { virusTable.isHidden = false } else { virusTable.isHidden = true }
//        facts = !facts
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viruses.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "virusCell", for: indexPath)

        if let cell = cell as? VirusTableViewCell{
               cell.virus.text = "\(viruses[indexPath.row])"
        } else if let cell = cell as? NewsTableViewController{
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
