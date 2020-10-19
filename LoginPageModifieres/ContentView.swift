//
//  ContentView.swift
//  LoginPageModifieres
//
//  Created by Maxim Macari on 19/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            Login()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
