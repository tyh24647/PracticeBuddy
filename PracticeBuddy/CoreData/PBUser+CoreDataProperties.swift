//
//  PBUser+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBUser {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBUser> {
        return NSFetchRequest<PBUser>(entityName: "PBUser")
    }

    @NSManaged public var canSaveAudio: Bool
    @NSManaged public var isLoggedIn: Bool
    @NSManaged public var name: String?
    @NSManaged public var theme: PBTheme?
    @NSManaged public var current: PBUser?
    @NSManaged public var email: String?
    @NSManaged public var nickname: String?
    @NSManaged public var username: String?
    @NSManaged public var canChangeTheme: Bool
    @NSManaged public var dataDidChange: Bool
    @NSManaged public var didCompleteOnboarding: Bool
    @NSManaged public var hasFiles: Bool
    @NSManaged public var hasOfflineFiles: Bool
    @NSManaged public var hasCloudFiles: Bool
    @NSManaged public var isDebug: Bool
    @NSManaged public var isVerified: Bool
    @NSManaged public var shouldSendEmail: Bool
    @NSManaged public var uuid: UUID?
    @NSManaged public var preferences: NSObject?
    @NSManaged public var selectedTheme: PBTheme?
    @NSManaged public var currentAppModel: PBModel?
    @NSManaged public var files: NSOrderedSet?
    @NSManaged public var permissions: NSOrderedSet?

}

// MARK: Generated accessors for files
extension PBUser {

    @objc(insertObject:inFilesAtIndex:)
    @NSManaged public func insertIntoFiles(_ value: PBFile, at idx: Int)

    @objc(removeObjectFromFilesAtIndex:)
    @NSManaged public func removeFromFiles(at idx: Int)

    @objc(insertFiles:atIndexes:)
    @NSManaged public func insertIntoFiles(_ values: [PBFile], at indexes: NSIndexSet)

    @objc(removeFilesAtIndexes:)
    @NSManaged public func removeFromFiles(at indexes: NSIndexSet)

    @objc(replaceObjectInFilesAtIndex:withObject:)
    @NSManaged public func replaceFiles(at idx: Int, with value: PBFile)

    @objc(replaceFilesAtIndexes:withFiles:)
    @NSManaged public func replaceFiles(at indexes: NSIndexSet, with values: [PBFile])

    @objc(addFilesObject:)
    @NSManaged public func addToFiles(_ value: PBFile)

    @objc(removeFilesObject:)
    @NSManaged public func removeFromFiles(_ value: PBFile)

    @objc(addFiles:)
    @NSManaged public func addToFiles(_ values: NSOrderedSet)

    @objc(removeFiles:)
    @NSManaged public func removeFromFiles(_ values: NSOrderedSet)

}

// MARK: Generated accessors for permissions
extension PBUser {

    @objc(insertObject:inPermissionsAtIndex:)
    @NSManaged public func insertIntoPermissions(_ value: PBFilePermissions, at idx: Int)

    @objc(removeObjectFromPermissionsAtIndex:)
    @NSManaged public func removeFromPermissions(at idx: Int)

    @objc(insertPermissions:atIndexes:)
    @NSManaged public func insertIntoPermissions(_ values: [PBFilePermissions], at indexes: NSIndexSet)

    @objc(removePermissionsAtIndexes:)
    @NSManaged public func removeFromPermissions(at indexes: NSIndexSet)

    @objc(replaceObjectInPermissionsAtIndex:withObject:)
    @NSManaged public func replacePermissions(at idx: Int, with value: PBFilePermissions)

    @objc(replacePermissionsAtIndexes:withPermissions:)
    @NSManaged public func replacePermissions(at indexes: NSIndexSet, with values: [PBFilePermissions])

    @objc(addPermissionsObject:)
    @NSManaged public func addToPermissions(_ value: PBFilePermissions)

    @objc(removePermissionsObject:)
    @NSManaged public func removeFromPermissions(_ value: PBFilePermissions)

    @objc(addPermissions:)
    @NSManaged public func addToPermissions(_ values: NSOrderedSet)

    @objc(removePermissions:)
    @NSManaged public func removeFromPermissions(_ values: NSOrderedSet)

}
