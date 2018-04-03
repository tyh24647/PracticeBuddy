//
//  PBPreference+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBPreference {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBPreference> {
        return NSFetchRequest<PBPreference>(entityName: "PBPreference")
    }


}
