//
//  Pun.swift
//  puns
//
//  Created by Edward Loveall on 11/18/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

class Punifier {
    let phrase: String
    let swapWord: String
    let rhymes: [Rhyme]
    let regex: String

    init(phrase: String, swapWord: String, rhymes: [Rhyme]) {
        self.phrase = phrase
        self.swapWord = swapWord
        self.rhymes = rhymes
        let rhymeWords = rhymes.map({ $0.word }).joinWithSeparator("|")
        regex = "\\b\(rhymeWords)\\b"
    }

    func pun() -> Pun {
        let range = phrase.rangeOfString(regex, options: .RegularExpressionSearch) ?? phrase.startIndex..<phrase.startIndex
        let punPhrase = phrase.stringByReplacingCharactersInRange(range, withString: swapWord)
        return Pun(originalPhrase: phrase, punPhrase: punPhrase)
    }
}
