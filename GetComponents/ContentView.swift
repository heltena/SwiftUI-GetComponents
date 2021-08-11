//
//  ContentView.swift
//  GetComponents
//
//  Created by Helio Tejedor on 8/11/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedColor: Color = .clear
    @State var r: CGFloat = 0.0
    @State var g: CGFloat = 0.0
    @State var b: CGFloat = 0.0
    @State var a: CGFloat = 0.0
    
    func refresh(color: Color) {
        selectedColor = color
        UIColor(color).getRed(&r, green: &g, blue: &b, alpha: &a)
        print("\(r), \(g), \(b), \(a)")
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text("\(r)")
            Text("\(g)")
            Text("\(b)")
            Text("\(a)")
            HStack {
                Button("Red") { refresh(color: .red) }
                Button("Accent") { refresh(color: .accentColor) }
                Button("Green") { refresh(color: Color("ExampleColor")) }
            }
            HStack {
                selectedColor
                Color(.sRGB, red: Double(r), green: Double(g), blue: Double(b), opacity: Double(a))
            }
            .frame(height: 40)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
