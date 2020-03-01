//
//  NewsListCell.swift
//  NewsApp2
//
//  Created by Melvin Asare  on 09/01/2020.
//  Copyright © 2020 Melvin Asare . All rights reserved.
//

import UIKit

class NewsListCell: UITableViewCell {
    
    let newsTitle: UILabel = {
        let title = UILabel()
        title.numberOfLines = 0
        title.textAlignment = .center
        title.adjustsFontSizeToFitWidth = true
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
        addSubview(newsTitle)
        addSubview(newsUrlToImage)
        addSubview(newsDescription)
        newsTitle.translatesAutoresizingMaskIntoConstraints = false
        newsTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
//        newsTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
        newsTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
        newsTitle.widthAnchor.constraint(equalToConstant: 415).isActive = true
        newsTitle.heightAnchor.constraint(equalToConstant: 50).isActive = true
        newsTitle.backgroundColor = UIColor.blue
        
        newsUrlToImage.translatesAutoresizingMaskIntoConstraints = false
        newsUrlToImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
       
        newsUrlToImage.topAnchor.constraint(equalTo: newsTitle.bottomAnchor, constant: 0).isActive = true
        newsUrlToImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        newsUrlToImage.widthAnchor.constraint(equalToConstant: 415).isActive = true
        
        newsDescription.translatesAutoresizingMaskIntoConstraints = false
        newsDescription.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50).isActive = true
//       newsDescription.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
        newsDescription.topAnchor.constraint(equalTo: newsUrlToImage.bottomAnchor, constant: 0).isActive = true
        newsDescription.heightAnchor.constraint(equalToConstant: 110).isActive = true
        newsDescription.widthAnchor.constraint(equalToConstant: 415).isActive = true
        newsDescription.backgroundColor = .purple
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
