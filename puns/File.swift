//
//  File.swift
//  puns
//
//  Created by Edward Loveall on 11/12/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

class File {
    class func open (path: NSString, encoding utf8: NSStringEncoding = NSUTF8StringEncoding) -> String {
        let expandedPath = path.stringByStandardizingPath
        let fileURL = NSURL(fileURLWithPath: expandedPath)

        do {
            return try NSString(contentsOfURL: fileURL, encoding: utf8) as String
        } catch {
            print(error)
        }
        exit(1)
    }
}
