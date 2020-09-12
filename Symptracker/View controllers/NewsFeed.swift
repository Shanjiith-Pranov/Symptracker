//
//  NewsFeed.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 12/9/20.
//  Copyright © 2020 sst. All rights reserved.
//

import Foundation

struct NewsFeed:Codable {
    var status: String
    var totalResults: Int
    var articles: [Article]?
    
}

