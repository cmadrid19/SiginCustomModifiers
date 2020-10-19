//
//  CustomTextField.swift
//  LoginPageModifieres
//
//  Created by Maxim Macari on 19/10/2020.
//

import SwiftUI

struct CustomTextField: View {
    
    var image: String
    var title: String
    @Binding var value: String
    var animaiton: Namespace.ID
    
    var body: some View {
        // Achieve a CustomTextField: With a Zstack that contains text and a textField overlaid. When the user starts typing the text moves up in an animation manner and the whole of it is wrapped into a HStack with the corresponding image.
        VStack {
            HStack(alignment: .bottom){
                Image(systemName: image)
                    .font(.system(size: 22))
                    .foregroundColor(value == "" ? .gray : .primary)
                    .frame(width: 35)
                
                VStack(alignment: .leading, spacing: 6){
                    
                    if value != ""{
                        Text("\(title)") // Best practice to avoid special carachters scape from var and making your app crash.
                            .font(.caption)
                            .fontWeight(.heavy)
                            .foregroundColor(.gray)
                            .matchedGeometryEffect(id: title, in: animaiton)
                    }
                    
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
                        
                        if value == ""{
                            Text("\(title)")
                                .font(.caption)
                                .fontWeight(.heavy)
                                .foregroundColor(.gray)
                                //GeometryEffect: When a view is set with Matched Geometry property ID it means that if that view is moved to another position in the future it will create a smooth and seamless animation.
                                .matchedGeometryEffect(id: title, in: animaiton)
                        }
                        
                        
                        
                        if title == "Password" {
                            SecureField("", text: $value)
                        } else {
                            TextField("", text: $value)
                            //phone number
                                .keyboardType(title == "Phone number" ? .numberPad : .default)
                        }
                        
                    }
                }
                
                
                }
            if value == "" {
                Divider()
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color("txtColor").opacity(value != "" ? 1 : 0))
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(value == "" ? 0 : 0.1), radius: 5, x: 5, y: 5 )
        .shadow(color: Color.black.opacity(value == "" ? 0 : 0.05), radius: 5, x: -5, y: -5 )
        .padding(.horizontal)
        .padding(.top)
        .animation(.linear)
    }
}

