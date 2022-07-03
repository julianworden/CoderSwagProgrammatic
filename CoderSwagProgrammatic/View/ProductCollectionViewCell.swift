//
//  ProductCollectionViewCell.swift
//  CoderSwagProgrammatic
//
//  Created by Julian Worden on 7/3/22.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = "ProductCollectionViewCell"

    var productImageView = UIImageView()
    var productNameLabel = UILabel()
    var productPriceLabel = UILabel()

    var product: Product?

    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.addSubview(productImageView)
        contentView.addSubview(productNameLabel)
        contentView.addSubview(productPriceLabel)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func updateUi(withProduct product: Product) {
        productImageView.image = UIImage(named: product.imageName)
        productImageView.contentMode = .scaleAspectFit
        productImageView.clipsToBounds = true

        productNameLabel.text = product.title
        productNameLabel.textAlignment = .left
        productNameLabel.numberOfLines = 0
        productNameLabel.style(as: .body)

        productPriceLabel.text = product.price
        productPriceLabel.textAlignment = .left
        productPriceLabel.style(as: .faded)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        productImageView.translatesAutoresizingMaskIntoConstraints = false
        productNameLabel.translatesAutoresizingMaskIntoConstraints = false
        productPriceLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            productImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            productImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            productImageView.widthAnchor.constraint(equalToConstant: contentView.frame.size.width - 70),
            productImageView.heightAnchor.constraint(equalToConstant: contentView.frame.size.height - 70),

            productNameLabel.topAnchor.constraint(equalTo: productImageView.bottomAnchor),
            productNameLabel.leadingAnchor.constraint(equalTo: productImageView.leadingAnchor),
            productNameLabel.trailingAnchor.constraint(equalTo: productImageView.trailingAnchor),

            productPriceLabel.topAnchor.constraint(equalTo: productNameLabel.bottomAnchor),
            productPriceLabel.leadingAnchor.constraint(equalTo: productImageView.leadingAnchor)
//            productPriceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 5),
//            productPriceLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
}
