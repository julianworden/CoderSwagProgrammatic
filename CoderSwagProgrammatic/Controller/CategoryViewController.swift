//
//  ViewController.swift
//  CoderSwagProgrammatic
//
//  Created by Julian Worden on 7/2/22.
//

import UIKit

class CategoryViewController: UIViewController {

    let dataService = DataService.instance

    let shopByCategoryLabel = UILabel()
    let categoryTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(CategoryTableViewCell.self, forCellReuseIdentifier: "CategoryTableViewCell")
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        configureViews()
        layoutViews()
    }

    func configureViews() {
        categoryTableView.delegate = self
        categoryTableView.dataSource = self

        title = "CODER SWAG"

        shopByCategoryLabel.text = "SHOP BY CATEGORY"
        shopByCategoryLabel.textAlignment = .left
        shopByCategoryLabel.style(as: .subtitle)
    }

    func layoutViews() {
        view.addSubview(shopByCategoryLabel)
        view.addSubview(categoryTableView)

        shopByCategoryLabel.translatesAutoresizingMaskIntoConstraints = false
        categoryTableView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            shopByCategoryLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            shopByCategoryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            categoryTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            categoryTableView.topAnchor.constraint(equalTo: shopByCategoryLabel.bottomAnchor, constant: 13),
            categoryTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            categoryTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
