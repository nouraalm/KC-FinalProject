//
//  ProfileView.swift
//  InfoSaver
//
//  Created by Noura on 02/09/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
      ScrollView {
          HStack{
              Image("logo")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 50, height: 40)
                 
              
              Text("InfoSaver")
              Spacer()
              Image(systemName: "bell")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 30, height: 30)
                  .padding()
              
          } .padding(.top,20)
            Image("undraw_female_avatar_w3jk")
               
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 100)
            
               // .padding(.top,50)
            
            
            Text("@Noura")
               .font(.system(size: 30, weight: .bold, design: .rounded))
                .padding()
                //.frame(width: 140, height: 100)
           details(image: "membership", text: "My Membership")
         details(image: "phone", text: "Contact Us")
        details(image: "privacy", text: "PrivacyPolicy")
          details(image: "terms", text: "Terms And Condition")
          details(image: "logout", text: "Logout")
          
          
          
          
        
      }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct details: View {
    var image: String
    var text: String
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 50)

            
            Text(text)
                
            Spacer()
            
                
        } .padding()
        Divider()
    }
}
