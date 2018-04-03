//
//  PBDataController+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBDataController {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBDataController> {
        return NSFetchRequest<PBDataController>(entityName: "PBDataController")
    }

    @NSManaged public var allData: NSObject?
    @NSManaged public var dictionaryRepresentation: PBDataDictionary?
    @NSManaged public var stringValue: PBDataString?

}
