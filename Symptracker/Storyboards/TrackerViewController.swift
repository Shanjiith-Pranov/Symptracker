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
    
    let questions = [Questions(question: "Do you have any chronic diseases?", yesOrNo: false, button1Text: "Yes", button2Text: "No", button3Text: "Yes: on Dialysis/Chemotherapy", button4Text: "-"), Questions(question: "Do you live in a communal setting? Example: Hostel, dormitory, boarding school, SAF camp, nursing home etc", yesOrNo: true, button1Text: "yes", button2Text: "_", button3Text: "No", button4Text: "_"),Questions(question: "During the full period of 14 days before you felt symptoms, were you at any time outside of Singapore?", yesOrNo: true, button1Text: "Yes", button2Text: "_", button3Text: "No", button4Text: "-"), Questions(question: "Have you been in contact with a person who has been confirmed/suspected to have COVID-19?", yesOrNo: true, button1Text: "Yes", button2Text: "-", button3Text: "No", button4Text: "-"),Questions(question: "Do you have difficulty breathing?", yesOrNo: true, button1Text: "Yes", button2Text: "-", button3Text: "No", button4Text: "-"),Questions(question: "Do you have dry cough?", yesOrNo: true, button1Text: "Yes", button2Text: "-", button3Text: "No", button4Text: "-"),Questions(question: "Do you have a fever ove 37.5ºC?", yesOrNo: true, button1Text: "Yes", button2Text: "-", button3Text: "No", button4Text: "-"),Questions(question: "Do you have a sore throat", yesOrNo: true, button1Text: "Yes", button2Text: "-", button3Text: "No", button4Text: "-")]
    
    
    
    var currentQuestions = 0
    
//    func getData(row:Int){
            
//            let urlString = "https://newsapi.org/v2/top-headlines?country=sg&category=health&apiKey=79f4b55069f24fe4bfbd959a914a29af"
//            let urlLink = URL(string: urlString)
//
//            
//            let session = URLSession.shared
//            
//            let dataTask = session.dataTask(with: urlLink!) { (data, response, error) in
//                if error == nil && data != nil {
//                    do {
//                        let jsonDictionary = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any]
//                        let articlesDictionary = jsonDictionary!["articles"] as! [[String:Any]]
//                        self.articles = articlesDictionary.map{
//                            Article(author: $0["author"] as? String , title: $0["title"] as? String , description: $0["description"] as? String , url: $0["url"] as? String , urlToImage: $0["urlToImage"] as? String )
//
//                        }
//                        
//                        
//                        self.author = self.articles![row].author ?? "-"
//                        self.titleString = self.articles![row].title ?? "-"
//                        self.descriptionString = self.articles![row].description ?? "-"
//                        self.url = self.articles![row].url ?? "-"
//                        self.urlToImage = self.articles![row].urlToImage ?? "-"
//                        
//                        print("\(self.author),\(self.titleString) ,\(self.descriptionString), \(self.url), \(self.urlToImage)")
//                        
//                        
//                        self.rows = self.articles?.count ?? 0
//    //                    print(articlesDictionary)
//                        
//                    } catch {
//                        print(error.localizedDescription)
//                    }
//                }
//            }

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
        button1.setTitle(questions[currentQuestions].button1Text, for: .normal)
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


