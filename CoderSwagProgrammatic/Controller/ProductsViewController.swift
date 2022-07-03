//
//  ProductsViewController.swift
//  CoderSwagProgrammatic
//
//  Created by Julian Worden on 7/3/22.
//

import Foundation
import UIKit

class ProductsViewController: UIViewController {

    let dataService = DataService.instance
    var products = [Product]()
    var category: Category?

    let productsLabel = UILabel()
    lazy var productsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        layout.itemSize = CGSize(width: (view.frame.size.width / 2) - 1, height: (view.frame.size.width / 2) - 1)

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(ProductCollectionViewCell.self, forCellWithReuseIdentifier: ProductCollectionViewCell.reuseIdentifier)
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        configureViews()
        layoutViews()
    }

    func configureViews() {
        productsCollectionView.dataSource = self

        title = category?.title ?? "CODER SWAG"

        productsLabel.text = "PRODUCTS"
        productsLabel.textAlignment = .left
        productsLabel.style(as: .subtitle)
    }

    func layoutViews() {
        view.addSubview(productsLabel)
        view.addSubview(productsCollectionView)

        productsLabel.translatesAutoresizingMaskIntoConstraints = false
        productsCollectionView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            productsLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            productsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            productsCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            productsCollectionView.topAnchor.constraint(equalTo: productsLabel.bottomAnchor, constant: 13),
            productsCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            productsCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
