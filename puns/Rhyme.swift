//
//  Rhyme.swift
//  puns
//
//  Created by Edward Loveall on 11/1/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

struct Rhyme {
    var word: String,
        freq: Int,
        score: Int,
        flags: String,
        syllables: String

    static func decode(json: AnyObject) -> Rhyme {
        guard let word = json["word"] as? String,
              let freq = json["freq"] as? Int,
              let score = json["score"] as? Int,
              let flags = json["flags"] as? String,
              let syllables = json["syllables"] as? String
            else { exit(1) }

        return Rhyme(word: word,
                     freq: freq,
                     score: score,
                     flags: flags,
                     syllables: syllables)
    }
}
