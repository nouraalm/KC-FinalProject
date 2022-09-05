//
//  ThirdView.swift
//  InfoSaver
//
//  Created by Noura on 01/09/2022.
//

import SwiftUI

struct ThirdView: View {

    @State private var searchText: String = ""
    
 @State var appstructArray2 =  [
    //    static func all() -> [appstruct] {
    //
    //        return [
       appstruct(appname: "Instagram", username: "@noura", password: "1234jt7g", email: "xampleemail@gmail.com", phonenumb: "98655786"),
       appstruct(appname: "Snapchat", username: "@noura7", password: "456kjh8", email: "xampleemail@gmail.com", phonenumb: "9786578"),
       appstruct(appname: "TikTok", username: "@nosh", password: "234iuy8h", email: "xampleemail@gmail.com", phonenumb: "94865886"),
       appstruct(appname: "YouTube", username: "@noura almethin", password: "7890087j", email: "exampleemail@gmail.com", phonenumb: "98646537"),
       appstruct(appname: "WhatsApp", username: "Nothing", password: "3436kj9kh", email: "exampleemail@gmail.com", phonenumb: "99887766"),
       appstruct(appname: "Facebook", username: "@noura90", password: "8Asd976235", email: "exampleemail@gmail.com", phonenumb: "99335466"),
       appstruct(appname: "Discord", username: "@ghost", password: "ko223344", email: "exampleemail@gmail.com", phonenumb: "92233674"),
       appstruct(appname: "Telegram", username: "@nourah676", password: "akjfgch87", email: "exampleemail@gmail.com", phonenumb: "97744320")
    ]

//    private var searchresult: [appstruct] {
//        let result = appstructArray.all()
//        if searchText.isEmpty { return result }
//        return result.filter {
//            $0.appname.lowercased().contains(searchText.lowercased()) || $0.appname.contains(searchText)
//        }
//    }
    @State var NewItem = ""
   
    var body: some View {
        
           
            
         // NavigationView {
                
                    

        VStack {
            
                 
                  
            List {
//                      Button {
//                          //
//                      } label: {
//                          Image(systemName: "plus")
//                              .frame(width: 310, height: 40)
//                              .background(.green)
//                              .foregroundColor(.white)
//                              .cornerRadius(10)
//
//                      }
                      ForEach(appstructArray2){ app in

                                         
                                     HStack {
                                         
                                         
                                         NavigationLink(destination: DetailView2(username: app.username, password: app.password, email: app.email, phonenumb: app.phonenumb)) {
                                                 
                                                 Text(app.appname)
                                                 
                                         
                                                     .foregroundColor(.black)
                                                     .font(.system(size: 22, weight: .medium, design: .default))
                                             
                                                     

                                                     
                                                 
                                                 Spacer()
                                                 
                                                 Image(systemName: "apps.iphone")
                                                     .foregroundColor(.black)
                                                 
                                                     .navigationTitle("Your Apps")
                                                 
                                                     
                                         }
                                                 .padding()
                                                 .searchable(text: $searchText)
                                    
                                     }
                                     
                                             
                                     }
                                     .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                                         Button("Delete"){
                                             
                                         }
                                         .tint(.red)
                                         Button("Favourite"){
                                             
                                         }
                                         .tint(.green)
                    }
                                     .swipeActions(edge: .leading, allowsFullSwipe: true) {
                                         Button("Pin"){
                                             
                                         }
                                         .tint(.orange)
                                     }
                      
                                     

                  
              }
          // }
                  
                  
      
        
        
           } .navigationBarItems(trailing:
                                                                            
                                        Button("Add") {
                                            //print("Add new Item")
               appstructArray2.append(appstruct(appname: "Twitter", username: "noura80", password: "7788123AS#", email: "exampleemail@gamail.com", phonenumb: "-"))
                                        }
            .tint(.green)
                                    
                                )
//    func delete(index: IndexSet){
//
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
