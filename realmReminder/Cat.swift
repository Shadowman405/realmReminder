//
//  Cat.swift
//  realmReminder
//
//  Created by Maxim Mitin on 27.11.21.
//

import Foundation
import RealmSwift

class Cat: Object {
    @objc dynamic var name: String?
    @objc dynamic var color: String?
    @objc dynamic var gender: String?
    
}
