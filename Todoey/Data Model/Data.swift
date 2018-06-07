//
//  Data.swift
//  Todoey
//
//  Created by PinHsuan Chen on 2018/6/6.
//  Copyright © 2018年 PinHsuan Chen. All rights reserved.
//

import Foundation
import RealmSwift

class Data :Object {
    @objc dynamic var name : String = ""
    @objc dynamic var age : Int = 0
}
