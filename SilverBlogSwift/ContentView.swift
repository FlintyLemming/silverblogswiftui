//
//  ContentView.swift
//  SilverBlogSwift
//
//  Created by 沐晨冉 on 2021/4/19.
//

import SwiftUI

struct ContentView: View {
    
    // 双向绑定
    @State private var serverAddress = ""
    @State private var password = ""
    
    var invalidInput: Bool{
        serverAddress.isEmpty || password.isEmpty
    }
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    HStack{
                        Text("Server")
                        TextField("Server Address", text: $serverAddress)
                    }
                    HStack{
                        Text("Password")
                        TextField("Password", text: $password)
                    }
                }
                Section {
                    Button("Enter") {
                        
                    }.disabled(invalidInput)
                    Button("Use the previous config") {
                        
                    }
                }
            }
            .navigationBarTitle("Login")
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
