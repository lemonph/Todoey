//
//  Item.swift
//  Todoey
//
//  Created by PinHsuan Chen on 2018/6/6.
//  Copyright © 2018年 PinHsuan Chen. All rights reserved.
//

import Foundation
import RealmSwift

class Item : Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc var dateCreated : Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
