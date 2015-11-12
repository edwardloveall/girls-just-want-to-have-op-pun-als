//
//  main.swift
//  puns
//
//  Created by Edward Loveall on 11/1/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

let rhyme = "all"
let jsonData = RhymeFetcher(rhyme: rhyme).fetch()
let json = JSONParser.parse(jsonData)
let idioms = File.open("~/Documents/Text/wikipedia-idioms.txt")

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

guard let idioms = idioms?.componentsSeparatedByString("\n") else {
    print("No idioms match your rhyme :(")
    exit(0)
}

let matchingIdioms = idioms.filter({ (idiom: String) -> Bool in
    let words = idiom.componentsSeparatedByString(" ")
    return words.contains(rhyme)
})

print(matchingIdioms)