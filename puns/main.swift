//
//  main.swift
//  puns
//
//  Created by Edward Loveall on 11/1/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

let rhyme = "heart"
let jsonData = RhymeFetcher(rhyme: rhyme).fetch()
let json = JSONParser.parse(jsonData)
let rhymes = RhymeMatcher(json: json).matches()
let phraseList = File.open("~/Documents/Text/wikipedia-idioms.txt")
let phraseMatches = PhraseMatcher(phraseList: phraseList).containing(rhymes)
var puns = [Pun]()
for phrase in phraseMatches {
    puns.append(Punifier(phrase: phrase, swapWord: rhyme, rhymes: rhymes).pun())
}

for pun in puns {
    print(pun.display)
}
