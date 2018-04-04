//
//  PBUser+CoreDataClass.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//
//

import Foundation
import CoreData

@objc(PBUser)
public class PBUser: NSManagedObject {
    
    public static var current: PBUser! {
        get {
            return { () -> PBUser in
                return PBSharedData.user ?? { () -> PBUser in
                    let tmpUser = PBUser()
                    tmpUser.username = "TESTT!!! TMP DELETE MEH PLZ!!!"
                    tmpUser.email = "tyh24647@gmail.com"
                    tmpUser.isDebug = true
                    return tmpUser
                }()
            }()
        }
    }
 
}
