//
//  RhymeMatcher.swift
//  puns
//
//  Created by Edward Loveall on 11/12/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

class RhymeMatcher {
    var rhymes: [Rhyme]

    init(json: [AnyObject]) {
        rhymes = json.map { Rhyme.decode($0) }
    }

    func matches(minimumScore: Int = 300) -> [Rhyme] {
        return rhymes.filter({ rhyme in
            return rhyme.score >= minimumScore
        })
    }
}
