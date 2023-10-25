//
//  Password_Check_TDDApp.swift
//  Password Check TDD
//
//  Created by Vito Borghi on 25/10/2023.
//
import SwiftData
import SwiftUI

@main
struct Password_Check_TDDApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
