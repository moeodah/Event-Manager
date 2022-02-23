//
//  ContentView.swift
//  Event Manager
//
//  Created by Osamah Alqahtaini on 2022-02-21.
//

import SwiftUI

struct ContentView: View {
    @State var isHover = false
    @State var isHover2 = false
    var body: some View {
        NavigationView{
            ZStack{
                
                RadialGradient( stops:[
                    .init(color:Color(red:0.018,green:0.2488889,blue:0.298), location: 0.3),
                    .init(color:Color(red:0.507,green:0.99,blue:0.92), location: 0.3),
                ],center: .top,startRadius: 320 , endRadius: 700).ignoresSafeArea()
                VStack{
                    Image("Logo")
                    Spacer()
                    Spacer()
                    Spacer()
                    VStack{
                        
                        
                        NavigationLink(destination: SignIn(),label:{
                            Text("Sign in")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            .padding(.all).frame(width: 150.0).foregroundColor(Color(red:0.1,green:0.4,blue:0.6)).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/).opacity(0.7).cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/) .contentShape(RoundedRectangle(cornerRadius: 10, style: .continuous))})
                        
                        
                        NavigationLink(destination: SignUp(),label:{
                            Text("Sign Up")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            .padding(.all).frame(width: 150.0).foregroundColor(Color(red:0.1,green:0.4,blue:0.6)).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/).opacity(0.7).cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/).contentShape(RoundedRectangle(cornerRadius: 10, style: .continuous))})
                        
                    }.frame(width: 300, height: 300, alignment: .center).background(Color(red:0.018,green:0.288889,blue:0.342222)).opacity(0.7).cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/).ignoresSafeArea()
                    Spacer()
                    Spacer()
                    
                }
            }
        }
    }
}



struct SignIn : View{
    @State private var userName = "Username"
    @State private var password = "Password"
    var body : some View{
            ZStack{
                
                RadialGradient( stops:[
                    .init(color:Color(red:0.018,green:0.2488889,blue:0.298), location: 0.3),
                    .init(color:Color(red:0.507,green:0.99,blue:0.92), location: 0.3),
                ],center: .top,startRadius: 300 , endRadius: 700).ignoresSafeArea()
                VStack{
                    Spacer()
                    Text("Username")
                        .font(.title)
                        .foregroundColor(Color(red:0.507,green:0.99,blue:0.92))
                        .padding(.all)
                    TextField("", text: $userName)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: 250.0)
                        .background(Color(red:0.507,green:0.99,blue:0.92))
                        .cornerRadius(/*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                    Text("Password")
                        .font(.title)
                        .foregroundColor(Color(red:0.507,green:0.99,blue:0.92))
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    TextField("", text: $password)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: 250.0)
                        .background(Color(red:0.507,green:0.99,blue:0.92))
                        .cornerRadius(/*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Button{
                        
                    }label: {
                        Text("Sign In")
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: 180.0)
                            .background(Color(red:0.507,green:0.99,blue:0.92))
                            .cornerRadius(/*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                    }
                    Button{
                        
                    }label: {
                        Text("Forget Password ?")
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: 180.0)
                            .background(Color(red:0.507,green:0.99,blue:0.92))
                            .cornerRadius(/*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    Spacer()
                }.frame(width: 350, height: 660, alignment: .center).background(Color(red:0.018,green:0.288889,blue:0.342222)).opacity(0.9).cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/).ignoresSafeArea().navigationTitle("Sign In")
                
            
        }
    }
}
struct SignUp : View{
    var body : some View{
            ZStack{
                
                RadialGradient( stops:[
                    .init(color:Color(red:0.018,green:0.2488889,blue:0.298), location: 0.3),
                    .init(color:Color(red:0.507,green:0.99,blue:0.92), location: 0.3),
                ],center: .top,startRadius: 300 , endRadius: 700).ignoresSafeArea()
                VStack{
                }.frame(width: 350, height: 660, alignment: .center).background(Color(red:0.018,green:0.288889,blue:0.342222)).opacity(0.9).cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/).ignoresSafeArea().navigationTitle("Sign Up")
                
            
        }
    }
}


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
