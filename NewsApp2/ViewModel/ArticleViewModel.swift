//
//  ArticleViewModel.swift
//  NewsApp2
//
//  Created by melvin asare on 25/01/2020.
//  Copyright © 2020 Melvin Asare . All rights reserved.
//

import UIKit
import Foundation

struct ArticleViewModel {
    private let article: Article
}

struct ArticleListViewModel {
    var articles: [Article]
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        return self.article.title!
    }
    
    var description: String {
        return self.article.description!
    }
    
    var url : String {
        return self.article.url!
    }

    var urlToString: String {
        return self.article.urlToImage!
    }
}


extension ArticleListViewModel {
    var numberOfSection: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return articles.count
    }
    
    func articlesAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
    
}
