//
//  ethiopiaViewController.swift
//  ETHIOPIA
//
//  Created by AsgeY on 2018. 04. 13..
//  Copyright © 2018. AsgeY. All rights reserved.
//

import UIKit

class ethiopiaViewController: CollectionViewController {
    
    var ethiopia: ethiopia!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.ethiopia.name
        
        let his = """
        Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nulla vitae elit libero, a pharetra augue. Maecenas sed diam eget risus varius blandit sit amet non magna.

        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis risus eget urna mollis ornare vel eu leo. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

        Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Donec sed odio dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.

        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Curabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.
        """
        
        let grid = Grid(columns: 1, margin: UIEdgeInsets(all: 8))

        let bioSection = CollectionViewSection(items: [DynamicTextViewModel(his)])
        bioSection.header = HeaderViewModel("History")
        
        let placess = [
            places(region: "Oromo women", name: "Beauty", image: "E06"),
        ]
        
        let items = placess.map { placesViewModel($0) }
        let placesSection = CollectionViewSection(items: items)
        placesSection.header = HeaderViewModel("Places")
        
        self.source = CollectionViewSource(grid: grid, sections: [bioSection, placesSection])
        self.collectionView.reloadData()
    }
    
}

