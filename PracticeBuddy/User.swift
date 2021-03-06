//
//  User.swift
//  SmileFiles
//
//  Created by Tyler hostager on 3/28/18.
//  Copyright © 2018 Tyler hostager. All rights reserved.
//

import Foundation
import CoreData
import UIKit

public struct User {
    
    public static var hasCreatedPBObj: Bool = false
    
    private static var _current: PBUser! = PBUser(context: ManagedObjectContext.current)
    static var current: PBUser! {
        get {
            if _current != nil {
                //&& hasCreatedSFObj {
                return _current
            } else {
                if !hasCreatedPBObj {
                    return
                        { () -> PBUser? in
                            var tmpUser: User!
                            tmpUser = self.initWithDefaults(for: tmpUser)
                            //User.initWithDefaults()
                            
                            if tmpUser != nil {
                                return tmpUser.createPBUserCoreDataObj(forUser: tmpUser)
                            }
                            
                            return _current ?? PBUser()
                        }()
                } else {
                    return PBSharedData.user
                    //return nil
                }
            }
        } set {
            if newValue != nil && !hasCreatedPBObj && newValue != _current {
                _current = newValue ?? { (user: User!) -> PBUser in
                    var tmp: PBUser?
                    
                    tmp = { () -> PBUser in
                        if let tmp2: User = self.initWithDefaults(for: user) {
                            
                            //tmp2 = self.initWithDefaults(for: tmp2)
                            return tmp2.createPBUserCoreDataObj(
                                forUser: tmp2
                            )
                        }
                        
                        return PBUser.current ?? PBUser()
                    }()
                    
                    return tmp ?? user.createPBUserCoreDataObj(
                        forUser: user,
                        usesDefaultValues: true,
                        withCustomValues: nil
                    )
                    
                    }(User.initWithDefaults())
            }
        }
    }
    
    public var attributes: [KeyValuePair]!
    
    public var username: UserDataAttribute { get { return .username } }
    
    init() {
        
        
        /*
         self.attributes = { () -> [KeyValuePair] in
         return [
         KeyValuePair(boolValue: false, forKey: "isVerified"),
         KeyValuePair(value: "tytytytyty" as AnyObject, forKey: "username")
         ]
         }()
         */
        
        
        //var usr = self
        
        self.attributes = [
            KeyValuePair(value: false, forKey: "isVerified"),
            KeyValuePair(value: "tytytytyty" as AnyObject, forKey: "username")
        ]
        
        //self.initWithDefaults()
        
        PBSharedData.user = User.hasCreatedPBObj ? PBSharedData.user : self.createPBUserCoreDataObj(forUser: self.initWithDefaults())
        //self.createPBUserCoreDataObj()
        
        User.hasCreatedPBObj = true
        
    }
    
    @discardableResult
    public func createPBUserCoreDataObj(forUser user: User! = nil, usesDefaultValues useDefaults: Bool! = true, withCustomValues customValues: [KeyValuePair]! = nil) -> PBUser {
        if useDefaults == false && customValues != nil && customValues.count > 0 {
            initUserData(for: user, withArgs: customValues)
            
            for keyValuePair in customValues {
                do {
                    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "PBUser")
                    let sortDescriptor = NSSortDescriptor(key: keyValuePair.key, ascending: true)
                    
                    fetchRequest.sortDescriptors = [sortDescriptor]
                    fetchRequest.returnsObjectsAsFaults = false
                    
                    let result = try ManagedObjectContext.current.fetch(fetchRequest) as! [PBUser]
                    if result[0].value(forKey: keyValuePair.key) != nil {
                        
                        result[0].setValue(
                            //keyValuePair.isBoolean ? keyValuePair.boolValue :
                            keyValuePair.value,
                            forKey: keyValuePair.key
                        )
                        
                        return result[0]
                    }
                } catch {
                    print(error)
                    return PBUser.current
                }
            }
        }
        
        return PBUser.current
    }
    
    @discardableResult
    public static func createPBUserCoreDataObj(forUser user: User! = nil, usesDefaultValues useDefaults: Bool! = true, withCustomValues customValues: [KeyValuePair]! = nil) -> PBUser {
        return user.createPBUserCoreDataObj(
            forUser: user,
            usesDefaultValues: useDefaults,
            withCustomValues: customValues
        )
    }
    
    
    @discardableResult
    func initUserData(for user: User! = nil, withArgs args: [KeyValuePair]! = nil) -> User! {
        var tmpUser = user ?? User()
        
        if tmpUser.attributes == nil {
            tmpUser.attributes = args
        }
        
        if args != nil && args.count > 0 {
            for arg in args {
                if arg.key != nil {
                    tmpUser.attributes.append(arg)
                }
            }
        }
        
        return tmpUser
    }
    
    @discardableResult
    func initWithDefaults(for user: User! = nil) -> User! {
        var tmpUser: User! = user ?? User()
        
        if tmpUser.attributes == nil || tmpUser.attributes.count == 0 {
            tmpUser.attributes = self.attributes
        }
        
        // TODO
        
        return User.initWithDefaults(for: tmpUser)
    }
    
    
    
    @discardableResult
    static func initWithDefaults(for user: User! = nil) -> User! {
        var newUser: User! = user ?? User()
        
        if newUser.attributes == nil || newUser.attributes.count == 0 {
            newUser.attributes = [
                KeyValuePair(value: true, forKey: "shouldSendEmail")
            ]
        }
        
        return newUser ?? ({ (_ tmpUser: User!) -> User in
            var tmp: User! = tmpUser ?? User()
            var args: [KeyValuePair]!
            
            tmp = tmp ?? initWithDefaults(for: tmp) ?? User()
            //tmp.initWithDefaults()
            
            args = { () -> [KeyValuePair] in
                return [
                    KeyValuePair(value: true, forKey: "shouldSendEmail")
                ]
                
            }()
            
            
            if tmp.attributes == nil {
                tmp.attributes = args
            }
            
            tmp.initUserData(for: tmp, withArgs: args)
            
            return tmp
        })(newUser)
    }
}

