//
//  main.swift
//  puns
//
//  Created by Edward Loveall on 11/1/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

guard let rhyme = Process.arguments[safe: 1],
      let phrasePath = Process.arguments[safe: 2] else {
    print("Usage: puns <word to pun on> <file o' phrases>")
    exit(1)
}

let jsonData = RhymeFetcher(rhyme: rhyme).fetch()
guard let json = JSONParser.parse(jsonData) else {
    fatalError("RhymeBrain JSON was not parseable :(")
}
let rhymes = RhymeMatcher(json: json).matches()
let phraseList = File.open(phrasePath)
let phraseMatches = PhraseMatcher(phraseList: phraseList).containing(rhymes)
var puns = [Pun]()
for phrase in phraseMatches {
    puns.append(Punifier(phrase: phrase, swapWord: rhyme, rhymes: rhymes).pun)
}

for pun in puns {
    print(pun.display)
}
