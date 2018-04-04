//
//  PBSharedData.swift
//  SmileFiles
//
//  Created by Tyler hostager on 3/28/18.
//  Copyright © 2018 Tyler hostager. All rights reserved.
//

import Foundation
import CoreData
import UIKit

public struct PBSharedData {
    
    /*
    private static var _model: PBModel!
    static var model: PBModel! {
        get {
            return _model ?? ({ () -> PBModel in
                var tmpModel: PBModel!
                
                do {
                    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "PBModel")
                    let result = try ManagedObjectContext.current.fetch(fetchRequest) as! [PBModel]
                    
                    fetchRequest.returnsObjectsAPBaults = false
                    
                    if result[0].users != nil {
                        tmpModel = result[0]
                    }
                } catch {
                    let fetchErr = error as NSError
                    print(fetchErr)
                }
                
                return tmpModel
                }()
            )
        } set {
            _model = newValue ?? PBModel()
        }
    }
 */
    
    
    private static var _instance: AppDelegate!
    static var instance: AppDelegate! {
        get {
            return _instance ?? UIApplication.shared.delegate as! AppDelegate
        } set {
            _instance = newValue ?? UIApplication.shared.delegate as? AppDelegate ?? AppDelegate()
        }
    }
    
    private static var _user: PBUser! = { () -> PBUser? in
        (PBSharedData.instance.preloadData() ? PBSharedData._user : PBSharedData.user) ?? nil
        
        // EXECUTE FETCH REQUEST AFTER LOADING FROM THE SAVED DATA!!!!!!!!!!!!!!!!!!!!
        // TODO TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST change me!
        // TODO TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST change me!
        //PBSharedData.
        //return PBSharedData._user ? PBSharedData.user : nil
        //return  PBSharedData._user ??  nil
        //return nil
        //return nil
        //    : nil
        // TODO TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST change me!
        // TODO TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST change me!
        
        
        }() ?? nil
    
    static var user: PBUser! {
        get {
            var usr: PBUser! = nil
            if _user != nil {
                usr = _user
            } else {
                usr = ({ () -> PBUser? in
                    var PBTmpUser: PBUser! = nil
                    if ManagedObjectContext.current != nil {
                        do {
                            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "PBUser")
                            let sortDescriptor = NSSortDescriptor(key: "username", ascending: true)
                            
                            fetchRequest.sortDescriptors = [sortDescriptor]
                            fetchRequest.returnsObjectsAsFaults = false
                            
                            
                            
                            let result = try ManagedObjectContext.current.fetch(fetchRequest) as! [PBUser]
                            
                            // test and see if valid user with username
                            if result[0].value(forKey: "username") != nil {
                                PBTmpUser = result[0]
                                return PBTmpUser
                            }
                            
                            
                            /*
                             let result = try mObjContext.fetch(fetchRequest)
                             for data in result as! [NSManagedObject] {
                             NSLog("[PBSharedData] Fetched object data: \"%@", data)
                             }
                             
                             let tmpResult = try mObjContext.fetch(fetchRequest) as! [NSManagedObject]
                             for var i in 0..<tmpResult.count {
                             var test = tmpResult[i] as! PBUser
                             if test.value(forKey: "username") != nil {
                             PBTmpUser = test
                             }
                             
                                PBTmpUser = PBUser()
                            
                            // TODO - Get rid of this once you allow username entry!!!
                            
                            
                            
                             PBTmpUser.username = "TESSSSSTTTT!!!"
                             
                             print("Initializing test user: \(PBTmpUser)")
                             //return PBTmpUser
 
                            
                        usr = PBTmpUser
 */
                            
                            return PBTmpUser ?? _user ?? PBUser()
                        } catch {
                            let fetchError = error as NSError
                            print(fetchError)
                        }
                    }
                    
                    return _user ?? PBUser()
                    }()
                )
                
                instance.saveContext()
                
            }
            
            return usr
        }
        
        set {
            var tmpUser = newValue ?? PBUser()
            
            //tmpUser.username = "TEEEEEEESSSSSSSSTTTTT!!!!!!!"
            
            ///var usr U
            //usr.initWithDefaults()
            
            ///*
            if self.user == nil {
                #if DEBUG
                tmpUser = User.createPBUserCoreDataObj(
                    forUser: User(),
                    usesDefaultValues: true,
                    withCustomValues: { () -> [KeyValuePair] in
                        return [
                            //KeyValuePair(boolValue: false, forKey: "isVerified")
                            KeyValuePair(
                                value: false,
                                forKey: "isVerified"
                            )
                        ]
                }())
                #else
                tmpUser = User.createPBUserCoreDataObj(
                    forUser: User()
                )
                #endif
            }
            //*/
            
            _user = tmpUser
        }
    }
}
