//
//  TabBarController.swift
//  NewsApp2
//
//  Created by melvin asare on 26/01/2020.
//  Copyright © 2020 Melvin Asare . All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    func newsListTitle() {
        let pageOne = NewsList()
        pageOne.navigationItem.title = "Articles"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsListTitle()
        self.navigationController?.navigationBar.prefersLargeTitles = true

        let tabBar = UITabBarController()
        let pageOne = NewsList()
        let pageTwo = FavouriteArticles()
        let pageThree = Recommended()
        let pageFour = Settings()
        
        pageOne.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        pageTwo.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        pageThree.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: 2)
        pageFour.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 3)
        
        let tabBarList = [pageOne, pageTwo, pageThree, pageFour]
        viewControllers = tabBarList
        
        view.backgroundColor = .white
        
    }
}
