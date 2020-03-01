//
//  Articles.swift
//  NewsApp2
//
//  Created by Melvin Asare  on 09/01/2020.
//  Copyright © 2020 Melvin Asare . All rights reserved.
//

import Foundation

struct ArticleList: Codable {
    var articles : [Article]
}

struct Article: Codable {
    var title: String?
    var description: String?
    var urlToImage: String?
    var url: String?
}
