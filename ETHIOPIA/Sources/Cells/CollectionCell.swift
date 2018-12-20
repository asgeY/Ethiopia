//
//  CollectionCell.swift
//  ETHIOPIA
//
//  Created by AsgeY on 2018. 04. 13..
//  Copyright © 2018. AsgeY. All rights reserved.
//

import UIKit

class CollectionCell: CollectionViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    open var source: CollectionViewSource? = nil {
        didSet {
            self.source?.register(itemsFor: self.collectionView)
            
            self.collectionView.dataSource = self.source
            self.collectionView.delegate = self.source
            self.collectionView.backgroundColor = .black
        }
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.collectionView.showsHorizontalScrollIndicator = false
    }
    
    override func reset() {
        super.reset()
        
        self.source = nil
    }
}
