//
//  PBAudioFile+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBAudioFile {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBAudioFile> {
        return NSFetchRequest<PBAudioFile>(entityName: "PBAudioFile")
    }

    @NSManaged public var file: NSObject?

}
