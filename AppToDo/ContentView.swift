//
//  ContentView.swift
//  AppToDo
//
//  Created by Gáudio Ney on 04/09/20.
//  Copyright © 2020 Gáudio Ney. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var lista:[String] = ["Fazer esboço do App","Entregar MVP","Evoluir To Do List", "Preparar apresentação"]
    
    var body: some View {
        VStack{
            HStack {
                Spacer()
                Text("To do List").bold().multilineTextAlignment(.leading)
                Spacer()
                Image(systemName: "plus.circle")
            }.font(.title)
            ForEach(0..<lista.count) { indice in
                HStack(){
                    CheckBoxField{ newValue in
                        print(newValue)
                    }.frame(maxWidth:20)
                    Text(self.lista[indice])
                    Spacer()
                }
            }
            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
