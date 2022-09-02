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
    @State var NewItem = ""
   
    var body: some View {
        
           
            
         // NavigationView {
                
                    

        VStack {
            
                 
                  
                  List{
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
                                     ForEach(searchresult) { app in

                                         
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
                                            print("Add new Item")
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
