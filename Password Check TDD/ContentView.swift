//
//  ContentView.swift
//  Password Check TDD
//
//  Created by Vito Borghi on 25/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Please log in.")
            
            Section{
                VStack  {
                    TextField("Username: ", text: <#T##Binding<String>#>)
                    SecureField("Password: ", text: <#T##Binding<String>#>)
                        .padding(.vertical, 10)
                    
                    HStack {
                        Text("Don't have an account? ")
                        Button("Sign up.", action: <#T##() -> Void#>)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
