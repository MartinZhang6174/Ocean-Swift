//
//  Captain.swift
//  Ocean-Swift
//
//  Created by Martin Zhang on 2016-08-03.
//  Copyright © 2016 com.lighthouse-labs. All rights reserved.
//

import Foundation

class Captain: captainDelegate {
    
    enum CaptainType {
        case Normal
        case Drunk
    }
    
    var captainType: CaptainType

    init(captainType: CaptainType) {
        self.captainType = captainType
    }
    
    func goFish(ocean: Ocean, depth: Int, tile: Int) -> Fish? {
        switch captainType {
        case .Normal:
            for tuple in ocean.board {
                if tuple.0 == depth && tuple.1 == tile {
                    if tuple.2 == .Salmon {
                        let aGiantSalmon = GiantSalmon()
                        return aGiantSalmon
                    } else if tuple.2 == .Tuna {
                        let aGiantTuna = GiantTuna()
                        return aGiantTuna
                    } else {
                        return nil
                    }
                }
            }
            break
            
        default:
            break
        }
        return nil
    }
}