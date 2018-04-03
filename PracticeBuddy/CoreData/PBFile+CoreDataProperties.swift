//
//  PBFile+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBFile {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBFile> {
        return NSFetchRequest<PBFile>(entityName: "PBFile")
    }

    @NSManaged public var name: String?
    @NSManaged public var path: String?
    @NSManaged public var permissions: NSObject?
    @NSManaged public var type: NSObject?
    @NSManaged public var uri: URL?
    @NSManaged public var attributes: NSSet?
    @NSManaged public var data: PBData?
    @NSManaged public var owner: PBUser?

}

// MARK: Generated accessors for attributes
extension PBFile {

    @objc(addAttributesObject:)
    @NSManaged public func addToAttributes(_ value: PBFileAttribute)

    @objc(removeAttributesObject:)
    @NSManaged public func removeFromAttributes(_ value: PBFileAttribute)

    @objc(addAttributes:)
    @NSManaged public func addToAttributes(_ values: NSSet)

    @objc(removeAttributes:)
    @NSManaged public func removeFromAttributes(_ values: NSSet)

}
