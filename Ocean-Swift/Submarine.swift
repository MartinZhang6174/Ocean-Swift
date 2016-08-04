//
//  Submarine.swift
//  Ocean-Swift
//
//  Created by Martin Zhang on 2016-08-03.
//  Copyright © 2016 com.lighthouse-labs. All rights reserved.
//

import Foundation

class Submarine {
    
    // MARK: Properties
    var depth: Int = 0
    var tile: Int = 0
    var captainDelegate: Captain?
    
    func dive() {
        if self.depth == 0 {
            self.depth += 1
        }
    }
    
    func surface() {
        if self.depth == 1 {
            self.depth = 0
        }
    }
    
    func descend() {
        if self.depth < Ocean.kMAX_DEPTH && self.depth != 0 {
            self.depth += 1
        }
    }
    
    func ascend() {
        if self.depth > 1 {
            self.depth -= 1
        }
    }
    
    func forward() {
        if self.depth != 0 && self.depth < 5 {
            self.tile += 1
        }
    }
    
    func backwards() {
        if self.depth != 0 && self.tile > 0 {
            self.tile -= 1
        }
    }
    
    func goFish(ocean: Ocean, depth: Int, tile: Int) -> Fish? {
        return self.captainDelegate?.goFish(ocean, depth: depth, tile: tile)
    }

//    init(){
//        
//    }
}
