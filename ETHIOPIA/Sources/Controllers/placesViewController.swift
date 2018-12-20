//
//  DetailViewController.swift
//  ETHIOPIA
//
//  Created by AsgeY on 2018. 04. 13..
//  Copyright © 2018. AsgeY. All rights reserved.
//

import UIKit

class placesViewController: CollectionViewController {
    
    var places: places!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.places.name

        let placesSection = CollectionViewSection(items: [placesViewModel(self.places)])
        placesSection.header = HeaderViewModel(self.places.name)

        let facts = Array<tour>(repeating: tour(name: "Lorem ipsum dolor sit amet", duration: "04:13"), count: 12)
        let items = facts.map { tourViewModel($0) }
        let newItems: [CollectionViewViewModelProtocol] = Array(items.map { [$0] }
                                                            .joined(separator: [SeparatorViewModel(2)]))

        let factsection = CollectionViewSection(items: newItems)
        factsection.header = HeaderViewModel("facts")

        let grid = Grid(columns: 1, margin: UIEdgeInsets(all: 8))
        self.source = CollectionViewSource(grid: grid, sections: [placesSection, factsection])
        self.collectionView.reloadData()
    }
    
}
