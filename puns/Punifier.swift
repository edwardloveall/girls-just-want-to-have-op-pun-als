//
//  Pun.swift
//  puns
//
//  Created by Edward Loveall on 11/18/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

struct Punifier {
    let phrase: String
    let swapWord: String
    let rhymes: [Rhyme]

    var regex: String {
        let rhymeWords = rhymes.map { $0.word }.joinWithSeparator("|")
        return "\\b\(rhymeWords)\\b"
    }

    var pun: Pun {
        let range = phrase.rangeOfString(regex, options: .RegularExpressionSearch)
        let punPhrase = range.map { phrase.stringByReplacingCharactersInRange($0, withString: swapWord) } ?? phrase
        return Pun(originalPhrase: phrase, punPhrase: punPhrase)
    }
}
