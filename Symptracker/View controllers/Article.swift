//
//  Article.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 12/9/20.
//  Copyright © 2020 sst. All rights reserved.
//

import Foundation

internal var articles = [Article]()
internal var rows:Int = 0

struct Article:Codable {
    var author:String
    var title:String
    var description:String
    var url:String
    var urlToImage:String
}
