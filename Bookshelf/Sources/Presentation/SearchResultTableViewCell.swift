//
//  SearchResultTableViewCell.swift
//  Bookshelf
//
//  Created by Mario on 26/4/18.
//  Copyright © 2018 Mario Negro. All rights reserved.
//

import UIKit

class SearchResultTableViewCell: UITableViewCell {
    static let reuseIdentifier = "SearchResultTableViewCell"
    static let nibName = "SearchResultTableViewCell"
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorsLabel: UILabel!
    
    func configure(with book: Book) {
        titleLabel.text = book.title
        authorsLabel.text = book.authors.joined(separator: ", ")
        DispatchQueue.global().async {
            guard let url = book.coverImageUrl else { return }
            guard let data = try? Data(contentsOf: url) else { return }
            DispatchQueue.main.async {
                self.coverImageView.image = UIImage(data: data)
            }
        }
    }
    
    override func prepareForReuse() {
        titleLabel.text = nil
        authorsLabel.text = nil
        coverImageView.image = nil
    }
}
