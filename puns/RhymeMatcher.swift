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

    init(json: Array<AnyObject>?) {
        rhymes = [Rhyme]()
        if let sickRhymes = json {
            for rhymeElement in sickRhymes {
                let rhymeDict = rhymeElement
                let rhyme: Rhyme = Rhyme.decode(rhymeDict)
                rhymes.append(rhyme)
            }
        }
    }

    func matches(minimumScore: Int = 300) -> [Rhyme] {
        let theSickestRhymes = rhymes.filter({ (rhyme: Rhyme) -> Bool in
            return rhyme.score >= minimumScore
        })
        return theSickestRhymes
    }
}
