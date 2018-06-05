//
//  Item.swift
//  Todoey
//
//  Created by PinHsuan Chen on 2018/6/3.
//  Copyright © 2018年 PinHsuan Chen. All rights reserved.
//

import Foundation
//class Item : Encodable, Decodable{
class Item : Codable {
    var title : String = ""
    var done : Bool = false
    
}
