//
//  ThirdView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct ThirdView: View {

    @State private var searchText: String = ""

    private var searchresult: [appstruct] {
        let result = appstructArray.all()
        if searchText.isEmpty { return result }
        return result.filter {
            $0.appname.lowercased().contains(searchText.lowercased()) || $0.appname.contains(searchText)
        }
    }
   
    var body: some View {
        
           
            
           // NavigationView {
                
                    

              VStack {
                  List{
                                     ForEach(searchresult) { app in
                                         
                                         HStack {
                                             NavigationLink(destination: DetailView2(username: app.username, password: app.password, email: app.email, phonenumb: app.phonenumb)) {
                                                 
                                                 Text(app.appname)
                                                     .foregroundColor(.black)
                                                     .font(.system(size: 22, weight: .medium, design: .default))
                                                 
                                                 Spacer()
                                                 
                                                 Image(systemName: "folder.badge.person.crop")
                                                     .foregroundColor(.black)
                                                 
                                                 
                                                     
                                             }.navigationTitle("Your Information")
                                                 .padding()
                                                 .searchable(text: $searchText)
                                    
                                         }
                                             
                                     }
                        
                    }
                
              }
          //  }
      
      
        
            }
}
struct AppsDetailView: View {
    let Appstruct: appstruct
    
    var body: some View{
        HStack {
            VStack(alignment: .leading) {
                Text("\(Appstruct.appname)")
                    .foregroundColor(.black)
                    .font(.system(size: 22, weight: .medium, design: .default))
                    
                Spacer()
            }
            Spacer()
        } .padding([.leading, .trailing], 24)
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
