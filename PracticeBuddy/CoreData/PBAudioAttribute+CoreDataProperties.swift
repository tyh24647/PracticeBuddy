//
//  PBAudioAttribute+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBAudioAttribute {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBAudioAttribute> {
        return NSFetchRequest<PBAudioAttribute>(entityName: "PBAudioAttribute")
    }

    @NSManaged public var audioController: PBAudioController?

}
