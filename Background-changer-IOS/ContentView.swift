//
//  ContentView.swift
//  Background-changer-IOS
//
//  Created by Ondřej Losenský on 17.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State var barevneSChema = "Světlý režim"
    @State var x = true
    @State var barva = ColorScheme.light
    var body: some View {
        NavigationView {
        Button(
            action: {
                if x == true {
                    barevneSChema = "Tmavý režim"
                    barva = .dark
                    self.x.toggle()
                } else {
                    barevneSChema = "Světlý režim"
                    barva = .light
                    self.x.toggle()
                }
                    
            },
            label:{ Text("Změň barevné schéma aplikace")
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .padding(20)
                    .background(Color.red)
                    .cornerRadius(60)
                
                
            }
        )
        .navigationTitle(barevneSChema)
    }
        .preferredColorScheme(barva)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
