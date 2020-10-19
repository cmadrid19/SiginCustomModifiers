//
//  Register.swift
//  LoginPageModifieres
//
//  Created by Maxim Macari on 19/10/2020.
//

import SwiftUI

struct Register: View {
    
    @State var email = ""
    @State var password = ""
    @State var name = ""
    @State var number = ""
    
    @Binding var show: Bool
    @Namespace var animation
    
    
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            
            VStack{
                HStack{
                    
                    Button(action: {
                        show.toggle()
                    }, label: {
                        Image(systemName: "arrow.left")
                            .font(.largeTitle)
                            .foregroundColor(.gray)
                    })
                    
                    Spacer()
                    
                }
                .padding()
                .padding(.leading)
                
                HStack{
                    Text("Create account")
                        .font(.system(size:  40))
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                    
                    Spacer(minLength: 0)
                    
                }
                .padding()
                .padding(.leading)
                
                CustomTextField(image: "person", title: "Full name", value: $name, animaiton: animation)
                
                CustomTextField(image: "envelope", title: "Email", value: $email, animaiton: animation)
                    .padding(.top, 5)
                
                CustomTextField(image: "lock", title: "Password", value: $password, animaiton: animation)
                    .padding(.top, 5)
                
                CustomTextField(image: "phone.fill", title: "Phone number", value: $number, animaiton: animation)
                    .padding(.top, 5)
                
                HStack{
                    Spacer()
                    
                    Button(action: {}) {
                        HStack (spacing: 10){
                            Text("Sign UP")
                                .fontWeight(.heavy)
                            
                            Image(systemName: "arrow.right")
                                .font(.title2)
                        }
                        //If a view consists of several modifiers and same are used in another view, then we can create custom modifier. This custommodifiers includes all the modifiers that we will  reuse in any other view. This will also reduce the lines of code.
                        .modifier(CustomButtonModifier())
                        
                    }
                }
                .padding()
                .padding(.top)
                .padding(.trailing)
                
                HStack{
                    
                    Text("Already have an account?")
                        .fontWeight(.heavy)
                        .foregroundColor(.gray)
                    
                    Button(action: {
                        show.toggle()
                    }, label: {
                        Text("Sign in")
                            .fontWeight(.heavy)
                            .foregroundColor(Color("yellow"))
                    })
                    
                }
                .padding()
                .padding(.top, 10)
                
                
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

