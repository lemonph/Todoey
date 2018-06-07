//
//  Category.swift
//  Todoey
//
//  Created by PinHsuan Chen on 2018/6/6.
//  Copyright © 2018年 PinHsuan Chen. All rights reserved.
//

import Foundation
import RealmSwift

class Category : Object {
    @objc dynamic var name : String = ""
    let items = List<Item>()
}
