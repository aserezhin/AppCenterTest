//
//  ContentView.swift
//  AppCenterTest
//
//  Created by Алексей Серёжин on 14.04.2020.
//  Copyright © 2020 Akvelon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = "Hello, World!"
    var body: some View {
        VStack {
            Text(self.text)
            Button(
                action: { self.text = "Touched"},
                label: { Text("Button")}
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
