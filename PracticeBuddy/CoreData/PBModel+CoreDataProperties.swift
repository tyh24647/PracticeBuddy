//
//  PBModel+CoreDataProperties.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/4/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData


extension PBModel {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PBModel> {
        return NSFetchRequest<PBModel>(entityName: "PBModel")
    }

    @NSManaged public var files: PBFile?
    @NSManaged public var theme: PBTheme?

}
