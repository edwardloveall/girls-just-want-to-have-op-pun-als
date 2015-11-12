//
//  PhraseMatcher.swift
//  puns
//
//  Created by Edward Loveall on 11/12/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

class PhraseMatcher {
    var phrases: [String]
    let matchWord: String

    init(phraseList: String, matching: String) {
        phrases = phraseList.componentsSeparatedByString("\n")
        matchWord = matching
    }

    func matches() -> [String] {
        return phrases.filter({ (phrase: String) in
            let words = phrase.componentsSeparatedByString(" ")
            return words.contains(matchWord)
        })
    }
}
