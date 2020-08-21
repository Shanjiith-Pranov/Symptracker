//
//  InfoViewController.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 19/8/20.
//  Copyright © 2020 sst. All rights reserved.
//

import UIKit

class InfoViewController: UISimpleSlidingTabController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

        // Do any additional setup after loading the view.
        
    }
    private func setupUI(){
        // view
        view.backgroundColor = .white
        
        // navigation
        navigationItem.title = "Sliding Tab Example"
        navigationController?.navigationBar.barTintColor = .orange
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barStyle = .black
        
        // slidingTab
        addItem(item: InfoGraphViewController(), title: "Graph") // add second ite
        addItem(item: InfoNewsViewController(), title: "News") // add first item
        
        setHeaderActiveColor(color: .white) // default blue
        setHeaderInActiveColor(color: .lightText) // default gray
        setHeaderBackgroundColor(color: .orange) // default white
        setCurrentPosition(position: 1) // default 0
        setStyle(style: .fixed) // default fixed
        build() // build
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
