//
//  main.swift
//  puns
//
//  Created by Edward Loveall on 11/1/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

guard
    let url = NSURL(string: "http://rhymebrain.com/talk?function=getRhymes&word=magic"),
    let data = NSData(contentsOfURL: url),
    let json = try? NSJSONSerialization.JSONObjectWithData(data, options: []) as? Array<AnyObject>
    else { exit(1) }

var rhymes = [Rhyme]()

if let sickRhymes = json {
    for rhymeElement in sickRhymes {
        let rhymeDict = rhymeElement as AnyObject
        let rhyme: Rhyme = Rhyme.decode(rhymeDict)
        rhymes.append(rhyme)
    }
}

print(rhymes)
