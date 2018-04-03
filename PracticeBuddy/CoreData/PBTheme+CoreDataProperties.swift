//
//  PBTheme+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBTheme {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBTheme> {
        return NSFetchRequest<PBTheme>(entityName: "PBTheme")
    }

    @NSManaged public var backgroundColor: NSObject?
    @NSManaged public var model: PBModel?

}
