//
//  Login.swift
//  LoginPageModifieres
//
//  Created by Maxim Macari on 19/10/2020.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var password = ""
    @Namespace var animation
    @State var show = false
    
    var body: some View {
        
        VStack {
            
            Spacer(minLength: 0)
            
            HStack {
                VStack(alignment: .leading, spacing: 3){
                    Text("Login")
                        .font(.system(size: 40, weight: .heavy ))
                        // for dark mode adoption
                        .foregroundColor(.primary)
                    
                    
                    Text("Please sig in to continue")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
                
                Spacer()
            }
            .padding()
            .padding(.leading)
            
            CustomTextField(image: "envelope", title: "Email", value: $email, animaiton: animation)
            
            CustomTextField(image: "lock", title: "Password", value: $password, animaiton: animation)
                .padding(.top, 5)
            
            HStack {
                Spacer(minLength: 0)
                
                VStack(alignment: .trailing, spacing: 20){
                    Button(action: {
                        
                    }, label: {
                        Text("Forgot")
                            .fontWeight(.heavy)
                            .foregroundColor(Color("yellow"))
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        HStack (spacing: 10){
                            Text("Login")
                                .fontWeight(.heavy)
                            
                            Image(systemName: "arrow.right")
                                .font(.title2)
                        }
                        //If a view consists of several modifiers and same are used in another view, then we can create custom modifier. This custommodifiers includes all the modifiers that we will  reuse in any other view. This will also reduce the lines of code.
                        .modifier(CustomButtonModifier())
                    })
                }
            }
            .padding()
            .padding(.top, 10)
            .padding(.trailing)
            
            Spacer(minLength: 0)
            
            HStack(spacing: 8){
                
                Text("Don't hace an account?")
                    .fontWeight(.heavy)
                    .foregroundColor(.gray)
                
                NavigationLink(
                    destination: Register(show: $show), isActive: $show){
                    
                    
                    Text("Sign up")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("yellow"))
                    
                }
            }
            .padding()
            
        }
    }
}

