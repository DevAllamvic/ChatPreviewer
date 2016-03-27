//
//  MentionsProcessor.swift
//  ChatPreviewer
//
//  Created by Ahmed Essam on 3/26/16.
//  Copyright © 2016 Ahmed Essam. All rights reserved.
//

import Foundation

class MentionsProcessor: TextProcessorExtension {
    func definePattern() -> String{
        return "\\S*@\\w+"
    }
    func matchFound(fonudText :String) -> AnyObject?{
        if fonudText.hasPrefix("@"){
            return fonudText.substringFromIndex(fonudText.startIndex.advancedBy(1))
        }
        return nil
    }
    func processorName() -> String{
        return "mentions"
    }
}
