//
//  ViewController.swift
//  ETHIOPIA
//
//  Created by AsgeY on 2018. 04. 12..
//  Copyright © 2018. AsgeY. All rights reserved.
//

import UIKit

class ViewController: CollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.title = "ETHIOPIA"
        
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.view.tintColor = UIColor.white
        
        let places = [
            Tour(region: "OMO Regions", name: "OMO", image: "C01"),
            Tour(region: "South Regions", name: "South", image: "C02"),
            Tour(region: "Amhara Regions", name: "Amhara", image: "C03"),
            Tour(region: "Tigray Regions", name: "Tigray", image: "C04"),
            Tour(region: "Oromo Regions", name: "Oromo", image: "C05"),
            Tour(region: "Afar Regions", name: "Afar", image: "C06"),
            Tour(region: "Semen Mountain", name: "Semen Mountain", image: "E07"),
            Tour(region: "Religion", name: "Religion", image: "E03"),
            Tour(region: "Lucy", name: "Lucy", image: "C07"),
            Tour(region: "Walia ibex", name: "Walia", image: "C08"),
            Tour(region: "Ethiopian wolf", name: "Red Fox", image: "C09"),
            Tour(region: "Dallol Afar", name: "Dallol", image: "C10"),
            
        ]
        
        let grid = Grid(columns: 4, margin: UIEdgeInsets(all: 8))
        
        let ethiopiaSection = CollectionViewSection(items: [self.createHorizontal()])
        ethiopiaSection.header = HeaderViewModel("places To Visit")
        
        let items = places.map { places -> placesViewModel in
            let viewModel = placesViewModel(places)
            viewModel.delegate = self
            return viewModel
        }
        let placesSection = CollectionViewSection(items: items)
        placesSection.header = HeaderViewModel("CULUTURE")
        
        self.source  = CollectionViewSource(grid: grid, sections: [ethiopiaSection, placesSection])
        self.collectionView.reloadData()
    }
    
    func createHorizontal() -> CollectionViewModel {
        let ethiopias = [
            ethiopia(name: "Lalibela", image: "E09"),
            ethiopia(name: "Ethiopian Coffee", image: "E10"),
            ethiopia(name: "Axum", image: "E11"),
            ethiopia(name: "Gonder Castel", image: "E12"),
            ethiopia(name: "Nile River", image: "E13"),
            ethiopia(name: "Addis Ababa", image: "E14"),
            ethiopia(name: "Ethiopian Air Lines", image: "E15"),
            ethiopia(name: "Erta Ale Active Volcano", image: "E16"),
            ]
        
        let items = ethiopias.map { ethiopia -> HorizontalethiopiaViewModel in
            let viewModel = HorizontalethiopiaViewModel(ethiopia)
            viewModel.delegate = self
            return viewModel
        }
        
        let grid = Grid(columns: 4, margin: UIEdgeInsets(all: 8))
        let section = CollectionViewSection(items: items)
        let source  = CollectionViewSource(grid: grid, sections: [section])
        
        return CollectionViewModel(source)
    }
}

extension ViewController: ethiopiaViewModelDelegate {
    
    func didSelect(ethiopia: ethiopia) {
        let viewController = ethiopiaViewController(nibName: nil, bundle: nil)
        viewController.ethiopia = ethiopia
        self.show(viewController, sender: nil)
    }
}


extension ViewController: placesViewModelDelegate {
    
    func didSelect(places: places) {
        let viewController = placesViewController(nibName: nil, bundle: nil)
        viewController.places = places
        self.show(viewController, sender: nil)
    }
}
