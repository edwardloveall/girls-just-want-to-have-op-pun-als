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
let phraseList = File.open("~/Documents/Text/wikipedia-idioms.txt")
let idioms = PhraseMatcher(phraseList: phraseList).containing(rhyme)
let rhymes = RhymeMatcher(json: json).matches()

print(idioms)
