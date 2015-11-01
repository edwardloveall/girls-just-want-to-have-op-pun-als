//
//  main.swift
//  puns
//
//  Created by Edward Loveall on 11/1/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

let url = NSURL(string: "http://rhymebrain.com/talk?function=getRhymes&word=magic")
let request = NSURLRequest(URL: url!)
let response: AutoreleasingUnsafeMutablePointer<NSURLResponse?> = nil
let error: NSErrorPointer
let data = try NSURLConnection.sendSynchronousRequest(request, returningResponse: response) as NSData
let string = NSString(data: data, encoding: NSUTF8StringEncoding)
print(string)