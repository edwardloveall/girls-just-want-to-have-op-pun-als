//
//  RhymeFetcher.swift
//  puns
//
//  Created by Edward Loveall on 11/6/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

class RhymeFetcher {
    let word: String
    let baseURL = "http://rhymebrain.com/talk?function=getRhymes&word="

    init(rhyme word: String) {
        self.word = word
    }

    func fetch() -> NSData {
        guard
            let url = NSURL(string: "\(baseURL)\(word)"),
            let data = NSData(contentsOfURL: url)
            else {
                exit(1)
            }

        return data
    }
}