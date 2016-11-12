//
//  ZShape.swift
//  swiftris
//
//  Created by zero plus on 2016/2/20.
//  Copyright © 2016年 zero plus. All rights reserved.
//

class ZShape:Shape {
    /*
    
    Orientation 0
    
      • | 0 |
    | 1 | 2 |
    | 3 |
    
    Orientation 90
    
    | 0 |•1 |
        | 2 | 3 |
    
    Orientation 180
    
      • | 0 |
    | 1 | 2 |
    | 3 |
    
    Orientation 270
    
    | 0 |•1 |
        | 2 | 3 |
    
    • marks the row/column indicator for the shape
    
    */
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero:       [ (1, 0), (0, 1), (1, 1), (0, 2)],
            Orientation.Ninety:     [(-1, 0), (0, 0), (0, 1), (1, 1)],
            Orientation.OneEighty:  [ (1, 0), (0, 1), (1, 1), (0, 2)],
            Orientation.TwoSeventy: [(-1, 0), (0, 0), (0, 1), (1, 1)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:       [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety:     [blocks[FirstBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty:  [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}
