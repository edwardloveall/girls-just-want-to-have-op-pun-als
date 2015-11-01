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
    let data = NSData(contentsOfURL: url) else { exit(1) }

print(NSString(data: data, encoding: NSUTF8StringEncoding))

