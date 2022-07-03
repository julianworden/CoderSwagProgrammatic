//
//  CategoryViewController+UITableViewDelegate.swift
//  CoderSwagProgrammatic
//
//  Created by Julian Worden on 7/2/22.
//

import Foundation
import UIKit

extension CategoryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let categories = dataService.getCategories()

        tableView.deselectRow(at: indexPath, animated: true)

        let productsViewController = ProductsViewController()
        productsViewController.products = dataService.getProducts(forCategory: categories[indexPath.row])
        productsViewController.category = categories[indexPath.row]
        navigationController?.pushViewController(productsViewController, animated: true)
    }
}
