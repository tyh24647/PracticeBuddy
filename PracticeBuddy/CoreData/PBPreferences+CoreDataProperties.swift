//
//  PBPreferences+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/4/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBPreferences {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBPreferences> {
        return NSFetchRequest<PBPreferences>(entityName: "PBPreferences")
    }

    @NSManaged public var allowsMediaSaving: Bool
    @NSManaged public var encryptFiles: Bool
    @NSManaged public var httpRequestsEnabled: Bool
    @NSManaged public var user: PBUser?
    @NSManaged public var savedUser: PBUser?

}
