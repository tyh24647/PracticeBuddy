//
//  PBFileAttribute+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBFileAttribute {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBFileAttribute> {
        return NSFetchRequest<PBFileAttribute>(entityName: "PBFileAttribute")
    }

    @NSManaged public var permissions: NSObject?
    @NSManaged public var file: PBFile?

}
