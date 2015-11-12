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

    init(phraseList: String) {
        phrases = phraseList.componentsSeparatedByString("\n")
    }

    func containing(word: String) -> [String] {
        return phrases.filter({ (phrase: String) in
            let words = phrase.componentsSeparatedByString(" ")
            return words.contains(word)
        })
    }
}
