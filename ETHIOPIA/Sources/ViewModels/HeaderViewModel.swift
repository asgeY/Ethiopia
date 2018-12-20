//
//  HeaderViewModel.swift
//  ETHIOPIA
//
//  Created by AsgeY on 2018. 04. 13..
//  Copyright © 2018. AsgeY. All rights reserved.
//

import UIKit

class HeaderViewModel: CollectionViewViewModel<HeaderCell, String> {
    
    override func config(cell: HeaderCell, data: String, indexPath: IndexPath, grid: Grid) {
        cell.textLabel.text = data
        cell.textLabel.textColor = .white
    }
    
    override func size(data: String, indexPath: IndexPath, grid: Grid, view: UIView) -> CGSize {
        return grid.size(for: view, height: 48)
    }
    
}
