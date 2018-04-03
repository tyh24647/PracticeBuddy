//
//  Document.swift
//  tmp
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 Tyler hostager. All rights reserved.
//

import UIKit

class Document: UIDocument {
    
    override func contents(forType typeName: String) throws -> Any {
        // Encode your document with an instance of NSData or NSFileWrapper
        return Data()
    }
    
    override func load(fromContents contents: Any, ofType typeName: String?) throws {
        // Load your document from contents
    }
}

