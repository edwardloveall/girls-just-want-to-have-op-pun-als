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

    func containing(rhymes: [Rhyme]) -> [String] {
        return phrases.filter { phrase in
            var contained = false
            let words = phrase.componentsSeparatedByString(" ")
            for rhyme in rhymes {
                if words.contains(rhyme.word) {
                    contained = true
                    break
                }
            }
            return contained
        }
    }
}
