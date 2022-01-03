//
//  ToDoFile.swift
//  AppToDo
//
//  Created by Gáudio Ney on 16/09/20.
//  Copyright © 2020 Gáudio Ney. All rights reserved.
//

import Foundation
import SwiftUI

struct ToDoItem {
    var descricao:String
    var deadLine:Date
    var done:Bool = false{
        didSet{
            if self.done {
                self.doneDate = Date()
            }
            else {
                self.doneDate = nil
            }
        }
    }
    private(set) var doneDate:Date? //15/09
    var recurring:Bool = false
}
