//
//  main.swift
//  puns
//
//  Created by Edward Loveall on 11/1/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

let jsonData = RhymeFetcher(rhyme: "magic").fetch()
let json = JSONParser.parse(jsonData)

var rhymes = [Rhyme]()

if let sickRhymes = json {
    for rhymeElement in sickRhymes {
        let rhymeDict = rhymeElement
        let rhyme: Rhyme = Rhyme.decode(rhymeDict)
        rhymes.append(rhyme)
    }
}

let theSickestRhymes = rhymes.filter({ (rhyme: Rhyme) -> Bool in
    return rhyme.score >= 300
})

print(theSickestRhymes)
