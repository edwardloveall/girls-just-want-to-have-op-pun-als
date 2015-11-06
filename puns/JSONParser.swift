//
//  RhymeParser.swift
//  puns
//
//  Created by Edward Loveall on 11/6/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

class JSONParser {
    static func parse(data: NSData) -> Array<AnyObject>? {
        let json: Array<AnyObject>?

        do {
            json = try NSJSONSerialization.JSONObjectWithData(data, options: []) as? Array<AnyObject>
        } catch {
            json = nil
        }
        return json
    }
}
