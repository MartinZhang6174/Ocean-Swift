//
//  Captain Delegate.swift
//  Ocean-Swift
//
//  Created by Martin Zhang on 2016-08-03.
//  Copyright © 2016 com.lighthouse-labs. All rights reserved.
//

import Foundation

protocol captainDelegate {
    func goFish(_: Ocean, depth: Int, tile: Int) -> Fish?
}