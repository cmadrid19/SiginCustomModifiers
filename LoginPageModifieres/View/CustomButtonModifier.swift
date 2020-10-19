//
//  CustomButtonModifier.swift
//  LoginPageModifieres
//
//  Created by Maxim Macari on 19/10/2020.
//

import SwiftUI

struct CustomButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        
        return content
            .foregroundColor(.white)
            .padding(.vertical)
            .padding(.horizontal, 35)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("yellow-light"), Color("yellow")]), startPoint: .leading, endPoint: .trailing)
            )
            .clipShape(Capsule())
        
    }
    
    
}


