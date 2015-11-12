//
//  File.swift
//  puns
//
//  Created by Edward Loveall on 11/12/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

class File {
    class func open (path: NSString, encoding utf8: NSStringEncoding = NSUTF8StringEncoding) -> NSString? {
        let expandedPath = path.stringByStandardizingPath
        let fileURL = NSURL(fileURLWithPath: expandedPath)

        return try? NSString(contentsOfURL: fileURL, encoding: utf8)
    }
}
