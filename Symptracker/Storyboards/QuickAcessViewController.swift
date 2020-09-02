//
//  QuickAcessViewController.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 22/8/20.
//  Copyright :copyright: 2020 sst. All rights reserved.
//

import UIKit



class QuickAcessViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    //,UITableViewDelegate, UITableViewDataSource
    
    
    var viruses = ["Covid","Hello","oh no its corona time"]
    var facts = true
    var currentVirus = ""

    @IBOutlet weak var currentVirusText: UILabel!
    @IBOutlet var tap: UITapGestureRecognizer!
    @IBOutlet weak var news: UITableView!
    @IBOutlet weak var cases: UIView!
    @IBOutlet weak var selector: UIView!
    
    @IBOutlet weak var selectorPicker: UIPickerView!
    @IBOutlet weak var done: UIButton!
    @IBOutlet weak var newsTable: UITableView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return viruses.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        currentVirus = viruses[row]
        return viruses[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        selector.isHidden = true
        
        selectorPicker.delegate = self
        selectorPicker.dataSource = self
        currentVirusText.text = currentVirus
        
    }
    
    @IBAction func tapped(_ sender: Any) {
        selector.isHidden = false
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        selector.isHidden = true
        print(currentVirus)
        currentVirusText.text = currentVirus
    }
    

    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return UITableViewCell
//    }
    



    
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
