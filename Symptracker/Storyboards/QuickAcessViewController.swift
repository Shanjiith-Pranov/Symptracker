//
//  QuickAcessViewController.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 22/8/20.
//  Copyright :copyright: 2020 sst. All rights reserved.
//

import UIKit



class QuickAcessViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    
    //,UITableViewDelegate, UITableViewDataSource
    
    var rows = 1
    
    var viruses = [Viruses(name: "Covid-19", cases: 57022, deaths: 27, change: 34, local: 3, imported: 2),Viruses(name: "Dengue", cases: 17249, deaths: 19, change: 76, local: 0, imported: 0),Viruses(name: "Zika", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Hand, Foot and Mouth Disease", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Yellow Fever", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Ebola", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Influenza", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Avian Influenza", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Tuberculosis", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Novel Coronavirus Infection (MERS-COV)", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Norovirus Gastroenteritis (Gastric Flu)", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Hepatitis A", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Hepatitis E", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Hepatitis B", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Hepatitis C", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Campylobacteriosis", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Chikungunya Fever", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Conjunctivitis", cases: 0, deaths: 0, change: 0, local: 0, imported: 0),Viruses(name: "Mumps", cases: 0, deaths: 0, change: 0, local: 0, imported: 0)
    ]
    
    var facts = true
    var currentVirus = 0
    @IBOutlet weak var cases: UILabel!
    @IBOutlet weak var casesInt: UILabel!
    @IBOutlet weak var deaths: UILabel!
    @IBOutlet weak var deathsInt: UILabel!
    @IBOutlet weak var change: UILabel!
    @IBOutlet weak var changeInt: UILabel!
    @IBOutlet weak var local: UILabel!
    @IBOutlet weak var localInt: UILabel!
    @IBOutlet weak var imported: UILabel!
    @IBOutlet weak var importedInt: UILabel!
    
    
    
    @IBOutlet weak var currentVirusText: UILabel!
    
    @IBOutlet weak var casesUIView: UIView!
    @IBOutlet weak var selector: UIView!
    
    @IBOutlet weak var selectorPicker: UIPickerView!
    @IBOutlet weak var done: UIButton!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return viruses.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return viruses[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currentVirus = row
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        getData(from: url)
        

        
        // Do any additional setup after loading the view.
        
        
        selectorPicker.delegate = self
        selectorPicker.dataSource = self
        setValues()
    }
    



    
//    private func getData(from url:String) {
//
//        let getData = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
//
//            guard let data = data, error == nil else {
//                print("Uh oh, There has been some error")
//                return
//            }
//
//            /// have data
//            var result: Response?
//            do {
//                result = try JSONDecoder().decode(Response.self, from: data)
//            }
//            catch{
//                print("failed t  convert \(error.localizedDescription)")
//            }
//
//            guard let json = result else {
//                return
//            }
//
//            print(json.status)
//            print(json.totalResults)
//
//
//            })
//
//            getData.resume()
//    }
    
    
    
    
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        
        setValues()
        
        
    }
    
    
    
    func setValues(){
        currentVirusText.text = viruses[currentVirus].name
        if viruses[currentVirus].cases == 0 {
            casesInt.text = "-"
        } else {
            casesInt.text = String(viruses[currentVirus].cases)
        }
        
        if viruses[currentVirus].deaths == 0 {
            deathsInt.text = "-"
        } else {
            deathsInt.text = String(viruses[currentVirus].deaths)
        }
        
        if viruses[currentVirus].change == 0 {
            changeInt.text = "-"
        } else {
            changeInt.text = String(viruses[currentVirus].change)
        }
        
        if viruses[currentVirus].local == 0 {
            localInt.text = "-"
        } else {
            localInt.text = String(viruses[currentVirus].local)
        }
        
        if viruses[currentVirus].imported == 0 {
            importedInt.text = "-"
        } else {
            importedInt.text = String(viruses[currentVirus].imported)
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

