//
//  tourViewModel.swift
//  ETHIOPIA
//
//  Created by AsgeY on 2018. 04. 13..
//  Copyright © 2018. AsgeY. All rights reserved.
//

import UIKit

class tourViewModel: CollectionViewViewModel<TourCell, tour> {
    
    override func config(cell: TourCell, data: tour, indexPath: IndexPath, grid: Grid) {
        cell.numberLabel.text = "\(indexPath.row + 1)."
        cell.textLabel.text = data.name
        cell.textLabel.textColor = .white
    }
    
    override func size(data: tour, indexPath: IndexPath, grid: Grid, view: UIView) -> CGSize {
        return grid.size(for: view, height: 44, items: grid.columns)
    }
}
