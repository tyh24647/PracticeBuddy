//
//  PBSettingsPreference+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBSettingsPreference {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBSettingsPreference> {
        return NSFetchRequest<PBSettingsPreference>(entityName: "PBSettingsPreference")
    }


}
