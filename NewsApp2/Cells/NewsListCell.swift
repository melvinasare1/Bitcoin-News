//
//  NewsListCell.swift
//  NewsApp2
//
//  Created by Melvin Asare  on 09/01/2020.
//  Copyright © 2020 Melvin Asare . All rights reserved.
//

import UIKit

class NewsListCell: UITableViewCell {
    
    let view: UIView = {
       let view = UIView()
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        return view
    }()
    
    let newsTitle: UILabel = {
        let title = UILabel()
        title.numberOfLines = 0
        title.textAlignment = .center
        title.lineBreakMode = .byWordWrapping
        return title
    }()
    
    let newsDescription: UILabel = {
        let title = UILabel()
        title.numberOfLines = 0
        title.sizeToFit()
        title.textAlignment = .center
        title.lineBreakMode = .byWordWrapping
        return title
    }()
    
    let newsURL: UILabel = {
        let title = UILabel()
        return title
    }()
    
    var newsUrlToImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        return image
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureUI() {
        addSubview(view)
        addSubview(newsTitle)
        addSubview(newsUrlToImage)
        addSubview(newsDescription)
        
        view.bringSubviewToFront(newsTitle)
        view.bringSubviewToFront(newsUrlToImage)
        view.bringSubviewToFront(newsDescription)

        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        newsTitle.translatesAutoresizingMaskIntoConstraints = false
        newsTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        newsTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        newsTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        newsTitle.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        newsUrlToImage.translatesAutoresizingMaskIntoConstraints = false
        newsUrlToImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        newsUrlToImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        newsUrlToImage.topAnchor.constraint(equalTo: newsTitle.bottomAnchor, constant: 0).isActive = true
        newsUrlToImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        newsDescription.translatesAutoresizingMaskIntoConstraints = false
        newsDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        newsDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        newsDescription.topAnchor.constraint(equalTo: newsUrlToImage.bottomAnchor, constant: 0).isActive = true
        newsDescription.heightAnchor.constraint(equalToConstant: 110).isActive = true
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        DispatchQueue.main.async {
            self.configureUI()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
