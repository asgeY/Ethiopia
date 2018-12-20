//
//  placesViewModel.swift
//  ETHIOPIA
//
//  Created by AsgeY on 2018. 04. 12..
//  Copyright © 2018. AsgeY. All rights reserved.
//

import UIKit

protocol placesViewModelDelegate: class {
    func didSelect(places: places)
}

class placesViewModel: CollectionViewViewModel<placesCell, places> {

    weak var delegate: placesViewModelDelegate?
    
    override func config(cell: placesCell, data: places, indexPath: IndexPath, grid: Grid) {
        cell.textLabel.text = data.places
        cell.textLabel.textColor = .white
        cell.detailTextLabel.text = data.name
        cell.imageView.image = UIImage(named: data.image)
    }
    
    override func size(data: places, indexPath: IndexPath, grid: Grid, view: UIView) -> CGSize {
        if
            (view.traitCollection.userInterfaceIdiom == .phone && view.traitCollection.verticalSizeClass == .compact) ||
            view.traitCollection.userInterfaceIdiom == .pad
        {
            return grid.size(for: view, ratio: 1.2, items: grid.columns / 4, gaps: grid.columns - 1)
        }
        if grid.columns == 1 {
            return grid.size(for: view, ratio: 1.1)
        }
        return grid.size(for: view, ratio: 1.2, items: grid.columns / 2, gaps: grid.columns - 1)
    }

    override func callback(data: places, indexPath: IndexPath) {
        self.delegate?.didSelect(places: data)
    }
}
