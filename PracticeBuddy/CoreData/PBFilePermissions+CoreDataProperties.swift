//
//  PBFilePermissions+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBFilePermissions {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBFilePermissions> {
        return NSFetchRequest<PBFilePermissions>(entityName: "PBFilePermissions")
    }

    @NSManaged public var canDuplicate: Bool
    @NSManaged public var canMove: Bool
    @NSManaged public var canRead: Bool
    @NSManaged public var canRename: Bool
    @NSManaged public var canWrite: Bool
    @NSManaged public var user: PBUser?

}
