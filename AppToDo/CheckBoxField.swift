//
//  CheckBoxField.swift
//  AppToDo
//
//  Created by Gáudio Ney on 11/09/20.
//  Copyright © 2020 Gáudio Ney. All rights reserved.
//

import SwiftUI

struct CheckBoxField: View {
    
    @State private var isMarked = false    
    let onToggle: (Bool)->Void
    
    var body: some View {
        Button(action: {self.isMarked.toggle()
            self.onToggle(self.isMarked)},
               label:{
                HStack(alignment: .center, spacing: 10){
                    Image(systemName: self.isMarked ? "checkmark.square" : "square").renderingMode(.original).resizable().aspectRatio(1, contentMode: .fit)
                }
                
        })
    }
}

struct CheckBoxField_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxField(onToggle: seraQueFoi)
    }
    static func seraQueFoi (valor:Bool){
        print ("FOI EIN")
    }
    
}
