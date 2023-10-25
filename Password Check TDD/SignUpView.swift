//
//  SignUpView.swift
//  Password Check TDD
//
//  Created by Vito Borghi on 25/10/2023.
//
import SwiftData
import SwiftUI

struct SignUpView: View {
    //@Query var database: [User]
    @Environment(\.dismiss) var dismissView
    private let viewModel = ViewModel()

    @State private var username = ""
    @State private var password = ""
    @State private var passwordDoubleCheck = ""
    
    var body: some View {
        NavigationStack{
            Form {
                VStack {
                    HStack{
                        Text("Insert your username: ")
                        Spacer()
                        TextField("Username", text: $username)
                    }
                    HStack{
                        Text("Insert your password: ")
                        TextField("Password", text: $password)
                    }
                    VStack{
                        HStack{
                            Text("Insert your password your password again: ")
                            TextField("Password", text: $passwordDoubleCheck)
                        }
                        if passwordDoubleCheck == password {
                            Text("Correct Match.")
                                .foregroundStyle(.green)
                        }
                    }
                }
            }
            
            Button("Create Account"){
                viewModel.createAccount(username: username, password: password)
            }
            
            .navigationTitle("Sign Up")
        }
    }
}

#Preview {
    SignUpView()
}
