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
}
