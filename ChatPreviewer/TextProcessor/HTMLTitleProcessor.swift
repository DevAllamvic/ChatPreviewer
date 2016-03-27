//
//  HTMLTitleProcessor.swift
//  ChatPreviewer
//
//  Created by Ahmed Essam on 3/26/16.
//  Copyright © 2016 Ahmed Essam. All rights reserved.
//

import Foundation

class HTMLTitleProcessor: TextProcessorExtension {
    func definePattern() -> String{
        return "<title>(.+?)</title>"
    }
    func matchFound(fonudText :String) -> AnyObject?{
        let range = Range(fonudText.startIndex.advancedBy(7)...fonudText.endIndex.advancedBy(-9))
        return fonudText.substringWithRange(range)
    }
    func processorName() -> String{
        return "title"
    }

}
