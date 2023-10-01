//
//  ContentView.swift
//  Overwatch
//
//  Created by Dmitiy Myachin on 01.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            VStack{
                List{
                    ForEach(0..<30) { index in
                        HStack{
                            Text("\(index)")
                            Spacer()
                        }
                    }
                }.listStyle(.inset).safeAreaInset(edge: .bottom, spacing: 0) {
                    VStack{
                        Rectangle()
                            .frame(height: 50)
                            .cornerRadius(10)
                            .foregroundColor(.red)
                            .opacity(0.8)
                            .padding(5)
                    }
                }
            }.tabItem {
                Label("First", systemImage: "star")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
