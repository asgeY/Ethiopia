//
//  HeaderCell.swift
//  ETHIOPIA
//
//  Created by AsgeY on 2018. 04. 13..
//  Copyright © 2018. AsgeY. All rights reserved.
//

import UIKit

class HeaderCell: CollectionViewCell {
    
    @IBOutlet weak var textLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.textLabel.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        self.textLabel.textColor = .white
       
        
    }
    
    override func reset() {
        super.reset()
        
        self.textLabel.text = nil
    }
}
