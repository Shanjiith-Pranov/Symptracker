//
//  NewsTableViewController.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 12/9/20.
//  Copyright © 2020 sst. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController{
    
    var rows = 1
    var articles:[Article]?
    var author:String = ""
    var titleString:String = ""
    var descriptionString:String = ""
    var url:String = ""
    var urlToImage:String = ""
    
    
    
    func getData(row:Int){
        
        let urlString = "https://newsapi.org/v2/top-headlines?country=sg&category=health&apiKey=79f4b55069f24fe4bfbd959a914a29af"
        let urlLink = URL(string: urlString)

        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: urlLink!) { (data, response, error) in
            if error == nil && data != nil {
                do {
                    let jsonDictionary = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any]
                    let articlesDictionary = jsonDictionary!["articles"] as! [[String:Any]]
                    self.articles = articlesDictionary.map{
                        Article(author: $0["author"] as? String , title: $0["title"] as? String , description: $0["description"] as? String , url: $0["url"] as? String , urlToImage: $0["urlToImage"] as? String )

                    }
                    
                    
                    self.author = self.articles![row].author ?? "-"
                    self.titleString = self.articles![row].title ?? "-"
                    self.descriptionString = self.articles![row].description ?? "-"
                    self.url = self.articles![row].url ?? "-"
                    self.urlToImage = self.articles![row].urlToImage ?? "-"
                    
                    print("\(self.author),\(self.titleString) ,\(self.descriptionString), \(self.url), \(self.urlToImage)")
                    
                    
                    self.rows = self.articles?.count ?? 0
//                    print(articlesDictionary)
                    
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
        
        dataTask.resume()
        
        
        
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        getData(row: 2)
        
//        print(articles)
        
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "new", for: indexPath)
//        print("**************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************")
//
//        print("gotdata")
        
        
        
        if let cell = cell as? NewsTableViewCell{
            cell.titleText.text = (articles?[1].title)
            
//            print("printing data")
//            print(articles?[1].title!, "helllllllllllooooooooooooooooooo")
            
        }
        
        return cell
    }
    
    /*
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
