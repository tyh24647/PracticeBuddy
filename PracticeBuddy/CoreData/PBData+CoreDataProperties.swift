//
//  PBData+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBData> {
        return NSFetchRequest<PBData>(entityName: "PBData")
    }

    @NSManaged public var attributes: NSObject?
    @NSManaged public var data: NSData?
    @NSManaged public var dictionaryRepresentation: NSDictionary?
    @NSManaged public var id: NSObject?
    @NSManaged public var stringRepresentation: String?
    @NSManaged public var uri: URL?
    @NSManaged public var file: PBFile?

}
