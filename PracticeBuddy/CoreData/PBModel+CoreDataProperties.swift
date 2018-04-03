//
//  PBModel+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBModel {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBModel> {
        return NSFetchRequest<PBModel>(entityName: "PBModel")
    }

    @NSManaged public var files: NSObject?
    @NSManaged public var users: PBUser?
    @NSManaged public var uuid: UUID?
    @NSManaged public var currentUser: PBUser?
    @NSManaged public var themes: NSOrderedSet?

}

// MARK: Generated accessors for themes
extension PBModel {

    @objc(insertObject:inThemesAtIndex:)
    @NSManaged public func insertIntoThemes(_ value: PBTheme, at idx: Int)

    @objc(removeObjectFromThemesAtIndex:)
    @NSManaged public func removeFromThemes(at idx: Int)

    @objc(insertThemes:atIndexes:)
    @NSManaged public func insertIntoThemes(_ values: [PBTheme], at indexes: NSIndexSet)

    @objc(removeThemesAtIndexes:)
    @NSManaged public func removeFromThemes(at indexes: NSIndexSet)

    @objc(replaceObjectInThemesAtIndex:withObject:)
    @NSManaged public func replaceThemes(at idx: Int, with value: PBTheme)

    @objc(replaceThemesAtIndexes:withThemes:)
    @NSManaged public func replaceThemes(at indexes: NSIndexSet, with values: [PBTheme])

    @objc(addThemesObject:)
    @NSManaged public func addToThemes(_ value: PBTheme)

    @objc(removeThemesObject:)
    @NSManaged public func removeFromThemes(_ value: PBTheme)

    @objc(addThemes:)
    @NSManaged public func addToThemes(_ values: NSOrderedSet)

    @objc(removeThemes:)
    @NSManaged public func removeFromThemes(_ values: NSOrderedSet)

}
