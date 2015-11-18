//
//  main.swift
//  puns
//
//  Created by Edward Loveall on 11/1/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

let rhyme = "shit"
let jsonData = RhymeFetcher(rhyme: rhyme).fetch()
let json = JSONParser.parse(jsonData)
let phraseList = File.open("~/Documents/Text/wikipedia-idioms.txt")
let rhymes = RhymeMatcher(json: json).matches()
let idioms = PhraseMatcher(phraseList: phraseList).containing(rhymes)

let rhymeWords = rhymes.map({ $0.word })
let wordsForRegex = rhymeWords.joinWithSeparator("|")
let regex = "\\b\(wordsForRegex)\\b"
var puns = [String]()

for idiom in idioms {
    if let range = idiom.rangeOfString(regex, options: .RegularExpressionSearch) {
        puns.append(idiom.stringByReplacingCharactersInRange(range, withString: rhyme))
    }
}

print(puns)
