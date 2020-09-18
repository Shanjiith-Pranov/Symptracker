//
//  AppDelegate.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 14/8/20.
//  Copyright © 2020 sst. All rights reserved.
//


//Shanjiith Pranov Gayathri Vijayaraghavan
//S2-08
//25

import UIKit

@UIApplicationMain
 class AppDelegate: UIResponder, UIApplicationDelegate {
        
    
    
    func getData(){

            
            let urlString = "https://newsapi.org/v2/top-headlines?country=sg&category=health&apiKey=79f4b55069f24fe4bfbd959a914a29af"
            let urlLink = URL(string: urlString)
            
            
            let session = URLSession.shared
            
            let dataTask = session.dataTask(with: urlLink!) { (data, response, error) in
                if error == nil && data != nil {
                    do {
                        let jsonDictionary = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any]
                        let articlesDictionary = jsonDictionary!["articles"] as! [[String:Any]]
                        articles = articlesDictionary.map{
                            Article(author: ($0["author"] as? String) ?? "-" , title: ($0["title"] as? String) ?? "-" , description: ($0["description"] as? String) ?? "-" , url: ($0["url"] as? String) ?? "-" , urlToImage: ($0["urlToImage"] as? String) ?? "-" )
                            
                            
                        }
                        rows = articles.count
                        print(articles)
                        
                        
    //                    self.author = self.articles[self.row].author
    //                    self.titleString = self.articles[ self.row].title ?? "-"
    //                    self.descriptionString = self.articles[ self.row].description ?? "-"
    //                    self.url = self.articles[ self.row].url ?? "-"
    //                    self.urlToImage = self.articles[ self.row].urlToImage ?? "-"
                        
                    } catch {
                        print(error.localizedDescription)
                    }

                }
                
            }
            
            dataTask.resume()
            

            
            //        print((articles?[1].title))
    //        return (author,titleString,descriptionString, url, urlToImage)
            
            
            
            
            
            
        }



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        getData()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

