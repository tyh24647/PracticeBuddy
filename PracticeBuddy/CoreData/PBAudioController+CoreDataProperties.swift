//
//  PBAudioController+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBAudioController {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBAudioController> {
        return NSFetchRequest<PBAudioController>(entityName: "PBAudioController")
    }

    @NSManaged public var audioFiles: NSObject?
    @NSManaged public var canSave: Bool

}
