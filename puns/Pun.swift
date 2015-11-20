//
//  Pun.swift
//  puns
//
//  Created by Edward Loveall on 11/19/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

struct Pun {
    let originalPhrase: String
    let punPhrase: String

    var display: String {
        return "\(punPhrase) (pun of \(originalPhrase))"
    }
}
