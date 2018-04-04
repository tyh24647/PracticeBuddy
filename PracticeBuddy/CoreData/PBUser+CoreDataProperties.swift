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

