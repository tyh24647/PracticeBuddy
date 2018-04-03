//
//  PBDataDictionary+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBDataDictionary {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBDataDictionary> {
        return NSFetchRequest<PBDataDictionary>(entityName: "PBDataDictionary")
    }

    @NSManaged public var controller: PBDataController?

}
