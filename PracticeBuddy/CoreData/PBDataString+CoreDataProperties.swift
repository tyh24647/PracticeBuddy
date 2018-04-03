//
//  PBDataString+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBDataString {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBDataString> {
        return NSFetchRequest<PBDataString>(entityName: "PBDataString")
    }

    @NSManaged public var controller: PBDataController?

}
