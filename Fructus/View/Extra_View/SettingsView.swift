//
//  SetttingView.swift
//  Fructus
//
//  Created by Asem on 01/07/2022.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dissimis
    @AppStorage("isOnBoarding") private var isOnBoarding = true
    var body: some View {
        NavigationView{
            ScrollView{
                
                VStack(spacing: 10.0){
                    
                    //Box 1
                    GroupBox("fructus".uppercased()) {
                        Divider().padding(.horizontal,8)
                        HStack(alignment: .center, spacing: 10.0){
                            Image("logo").resizable().scaledToFit().frame(width: 80, height: 80).cornerRadius(12)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are source of many essential nutrients, including potassium, dietary fibar, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }//End Box 1
                    
                    GroupBox("Application".uppercased()) {
                        //normal Text
                        ExtraViewContentWithTextOrLinkOrEmpty(title: "Developer",contentText: "Asem Elkhouli")
                        ExtraViewContentWithTextOrLinkOrEmpty(title: "Designer",contentText: "Lora Edoandy")
                        ExtraViewContentWithTextOrLinkOrEmpty(title: "Compatibillty",contentText: "iOS 15") 
                        //Link Text
                        ExtraViewContentWithTextOrLinkOrEmpty(title: "WebSite", contentLink: "apple", contentWebLink: "apple.com")
                        //normal Text
                        ExtraViewContentWithTextOrLinkOrEmpty(title: "SwiftUI",contentText: "3.0")
                        ExtraViewContentWithTextOrLinkOrEmpty(title: "Version",contentText: "1.0.0")
                    }
                   
                    Button{ dissimis(); isOnBoarding=true
                        
                    } label: {
                        Text("Restart").padding(5)
                    }.buttonStyle(.borderedProminent).tint(.pink).padding()
                    
                }
                
                
                .toolbar{ ToolbarItem(placement: .navigationBarTrailing) {
                        Button( action: { dissimis() } ) { Image(systemName: "xmark") }
                    } }//ToolBar End
                
            }.navigationTitle("Settings").padding()
        }
       
    }
}


struct SetttingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

struct ExtraViewContentWithTextOrLinkOrEmpty:View{
    var title:String
    var contentText:String?
    var contentLink:String?
    var contentWebLink:String?
    var body: some View{
        
        VStack {
            Divider().padding(.horizontal,8)
            HStack{
                Text(title).foregroundColor(.secondary)
                Spacer()
                //is it text or link
                if let subTitle = contentText { Text(subTitle).font(.subheadline)   }else if (contentLink != nil && contentWebLink != nil) {
                    Link(destination: URL(string: "https://"+contentWebLink!)!) { //(text with image)
                        HStack{Text(contentLink!); Image(systemName: "arrow.up.right.square").foregroundColor(.pink) }
                    }
                }else{ EmptyView() }
            }
        }
    }
}
