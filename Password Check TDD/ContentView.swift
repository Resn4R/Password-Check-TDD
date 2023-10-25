//
//  ContentView.swift
//  Password Check TDD
//
//  Created by Vito Borghi on 25/10/2023.
//
import SwiftData
import SwiftUI

struct ContentView: View {
    //@Query var database: [User]
    
    private var viewModel = ViewModel()
    
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding()
            Text("Please log in.")
                .padding(.vertical, 30)
            
            Form{
                VStack  {
                    TextField("Username: ", text: $username)
                    SecureField("Password: ", text: $password)
                    Button("Login"){
                        let user = User(username: username, password: password)
                        viewModel.userValidation(for: user)
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(.vertical, 30)
                }
            }
            
            Section{
                HStack {
                    Text("Don't have an account? ")
                    NavigationLink { SignUpView() } label: {
                        Button("Sign up.") {}
                            .buttonStyle(.borderless)
                            .foregroundStyle(.blue)
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
