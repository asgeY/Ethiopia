//
//  CollectionViewCell.swift
//  ETHIOPIA
//
//  Created by AsgeY on 12/18/2018
//  Copyright © 2018. AsgeY. All rights reserved.
//

import UIKit

open class CollectionViewCell: UICollectionViewCell {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.initialize()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.initialize()
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        
        self.reset()
    }
    
    open override func prepareForReuse() {
        super.prepareForReuse()
        
        self.reset()
    }
    
    // MARK: - API

    open func initialize() {
        
    }
    
    open func reset() {
        
    }
}
