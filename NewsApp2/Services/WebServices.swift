


//
//  WebServices.swift
//  NewsApp2
//
//  Created by melvin asare on 25/01/2020.
//  Copyright © 2020 Melvin Asare . All rights reserved.
//

import UIKit
import Foundation

class WebServices {

    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error
            in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
           //     print(data)
                let articleList = try?
                    JSONDecoder().decode(ArticleList.self, from: data)
                if let articleList = articleList {
                    completion(articleList.articles)
                }
           //     print(articleList?.articles)
            }
        }.resume()
    }
}
