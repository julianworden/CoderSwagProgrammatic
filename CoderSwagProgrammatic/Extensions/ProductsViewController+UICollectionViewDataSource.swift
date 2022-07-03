//
//  ProductsViewController+UICollectionViewDataSource.swift
//  CoderSwagProgrammatic
//
//  Created by Julian Worden on 7/3/22.
//

import Foundation
import UIKit

extension ProductsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "ProductCollectionViewCell",
            for: indexPath) as? ProductCollectionViewCell {
                cell.updateUi(withProduct: products[indexPath.item])
                return cell
        } else {
            return UICollectionViewCell()
        }
    }
}
