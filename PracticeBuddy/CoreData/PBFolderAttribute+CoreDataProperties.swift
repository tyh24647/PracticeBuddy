//
//  PBFolderAttribute+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBFolderAttribute {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBFolderAttribute> {
        return NSFetchRequest<PBFolderAttribute>(entityName: "PBFolderAttribute")
    }


}
