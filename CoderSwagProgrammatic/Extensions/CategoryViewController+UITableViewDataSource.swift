//
//  CategoryViewController+UITableViewDataSource.swift
//  CoderSwagProgrammatic
//
//  Created by Julian Worden on 7/2/22.
//

import Foundation
import UIKit

extension CategoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataService.getCategories().count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(
            withIdentifier: "CategoryTableViewCell",
            for: indexPath
        ) as? CategoryTableViewCell {
            cell.updateUi(with: dataService.getCategories()[indexPath.row])
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
