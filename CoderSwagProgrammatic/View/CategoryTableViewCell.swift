//
//  CategoryCell.swift
//  CoderSwagProgrammatic
//
//  Created by Julian Worden on 7/2/22.
//

import Foundation
import UIKit

class CategoryTableViewCell: UITableViewCell {
    let categoryLabel = UILabel()
    let backgroundImage = UIImageView()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubview(backgroundImage)
        contentView.addSubview(categoryLabel)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            categoryLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            categoryLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),

            backgroundImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            backgroundImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
            backgroundImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }

    func updateUi(with category: Category) {
        backgroundImage.image = UIImage(named: category.imageName)
        backgroundImage.clipsToBounds = true
        backgroundImage.contentMode = .scaleAspectFill

        categoryLabel.text = category.title
        categoryLabel.textAlignment = .center
        categoryLabel.style(as: .title)
    }
}
