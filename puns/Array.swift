//
//  Array.swift
//  puns
//
//  Created by Edward Loveall on 11/19/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

extension Array {
    subscript(safe index: Int) -> Element? {
        return indices ~= index ? self[index] : .None
    }
}
