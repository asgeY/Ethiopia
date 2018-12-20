//
//  ethiopiaViewModel.swift
//  ETHIOPIA
//
//  Created by AsgeY on 2018. 04. 13..
//  Copyright © 2018. AsgeY. All rights reserved.
//

import UIKit

protocol ethiopiaViewModelDelegate: class {
    func didSelect(ethiopia: ethiopia)
}

class ethiopiaViewModel: CollectionViewViewModel<ethiopiaCell, ethiopia> {
    
    weak var delegate: ethiopiaViewModelDelegate?
    
    override func config(cell: ethiopiaCell, data: ethiopia, indexPath: IndexPath, grid: Grid) {
        cell.textLabel.text = data.name
        cell.imageView.image = UIImage(named: data.image)
        cell.textLabel.textColor = .white
    }
    
    override func size(data: ethiopia, indexPath: IndexPath, grid: Grid, view: UIView) -> CGSize {
        // note: this is a "complex" displaying the same cell in multiple grids, never done this like before haha
        if grid.columns == 1 {
            return grid.size(for: view, ratio: 1.2)
        }
        if
            (view.traitCollection.userInterfaceIdiom == .phone &&
                view.traitCollection.verticalSizeClass == .compact) ||
            view.traitCollection.userInterfaceIdiom == .pad
        {
            return grid.size(for: view, ratio: 1.2, items: 1, gaps: 3)
        }
        return grid.size(for: view, ratio: 1.2, items: 2, gaps: 1)
    }
    
    override func callback(data: ethiopia, indexPath: IndexPath) {
        self.delegate?.didSelect(ethiopia: data)
    }
}

class HorizontalethiopiaViewModel: ethiopiaViewModel {

    override func size(data: ethiopia, indexPath: IndexPath, grid: Grid, view: UIView) -> CGSize {
        return CGSize(width: 140, height: 164)
    }
}
