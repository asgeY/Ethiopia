//
//  CollectionViewViewModel.swift
//  ETHIOPIA
//
//  Created by AsgeY on 12/18/2018
//  Copyright © 2018. AsgeY. All rights reserved.
//

import UIKit

public protocol CollectionViewViewModelProtocol {

    var cell: CollectionViewCell.Type { get }
    var value: Any { get }
    
    func config(cell: CollectionViewCell, data: Any, indexPath: IndexPath, grid: Grid)
    func size(data: Any, indexPath: IndexPath, grid: Grid, view: UIView) -> CGSize
    func callback(data: Any, indexPath: IndexPath)
}

open class CollectionViewViewModel<Cell, Data>: CollectionViewViewModelProtocol where Cell: CollectionViewCell, Data: Any {
    
    public var data: Data
    public var cell: CollectionViewCell.Type { return Cell.self }
    public var value: Any { return self.data }
    
    public init(_ data: Data) {
        self.data = data
        self.initialize()
    }
    
    // MARK: - CollectionViewViewModelProtocol
    
    public func config(cell: CollectionViewCell, data: Any, indexPath: IndexPath, grid: Grid) {
        guard let data = data as? Data, let cell = cell as? Cell else {
            return
        }
        return self.config(cell: cell, data: data, indexPath: indexPath, grid: grid)
    }
    
    public func size(data: Any, indexPath: IndexPath, grid: Grid, view: UIView) -> CGSize {
        guard let data = data as? Data else {
            return .zero
        }
        return self.size(data: data, indexPath: indexPath, grid: grid, view: view)
    }
    
    public func callback(data: Any, indexPath: IndexPath) {
        guard let data = data as? Data else {
            return
        }
        return self.callback(data: data, indexPath: indexPath)
    }
    
    // MARK: - API
    
    open func initialize() {
        
    }
    
    open func config(cell: Cell, data: Data, indexPath: IndexPath, grid: Grid) {
        
    }
    
    open func size(data: Data, indexPath: IndexPath, grid: Grid, view: UIView) -> CGSize {
        return .zero
    }
    
    open func callback(data: Data, indexPath: IndexPath) {
        
    }
}
