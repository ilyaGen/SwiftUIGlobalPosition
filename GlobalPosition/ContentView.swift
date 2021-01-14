//
//  ContentView.swift
//  GlobalPosition
//
//  Created by Илья Амбражевич on 14.01.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Set my position!")
            .background(Color.red)
            .padding()
            .globalPosition(.zero)
    }
}
