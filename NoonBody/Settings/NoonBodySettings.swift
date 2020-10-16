//
//  NoonBodySettings.swift
//  NoonBody
//
//  Created by Jen on 2020-10-11.
//

import SwiftUI

struct NoonBodySettings: View {
    
    @State var username: String = ""
    @State private var isPrivate: Bool = true
    @State private var notificationsEnable:Bool = false
    @State private var previewIndex = 0
    var previewOptions = ["Always", "When Unlocked", "Never"]
    
    @State private var isExpanded = false
    let sites = ["Site 1", "Site 2", "Site 3", "Site4"]
    @State private var isToggleNoonBody = true
    @State private var isToggleDiet = true
    @State private var isToggleFriend = false
    
    @State private var isToggleBreakfast = true
    @State private var isToggleLunch = false
    @State private var isToggleDinner = false
    
    init(){
                UITableView.appearance().backgroundColor = .clear
                
            }
    
    var body: some View {
            NavigationView {

                Form {
                    Section {
                        NavigationLink(destination: SettingsProfile()) {
                            HStack {
                                Image(systemName: "person.circle.fill")
                                    .font(.system(size: 65))
                                    .foregroundColor(.gray)
                                VStack(alignment:.leading, spacing: 3) {
                                    Text("UserName")
                                        .font(.system(size:16))
                                    Text("ID: abc123")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                    Text("오늘의 한마디: 팟팅!!")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                    }
                
                    
                    Section {
                        DisclosureGroup(
                            isExpanded: $isExpanded,
                            content: {
                                Toggle("눈바디 알림 수신", isOn: $isToggleNoonBody)
                                Toggle("식단 알림 수신", isOn: $isToggleDiet)
                                if isToggleDiet{
                                    Toggle("아침 알림 수신", isOn: $isToggleBreakfast)
                                    Toggle("점심 알림 수신", isOn: $isToggleLunch)
                                    Toggle("저녁 알림 수신", isOn: $isToggleDinner)
                                }
                                Toggle("친구 소식 알림 수신", isOn: $isToggleFriend)
                                
//                                ForEach(sites, id: \.self){site in
//                                    Text(site)
//                                }
                            },
                            label: {
                                HStack {
                                    ZStack {
                                        Image(systemName: "app.badge").font(.callout)
                                    }.frame(width: 28, height: 28).background(Color.white).cornerRadius(6)
                                    Text("알림 수신 설정")
                                }
                            }
                        ).padding(.all, 10)
                        
                        
                        
//                        NavigationLink(destination: SettingsNotification()) {
//                            HStack {
//                                ZStack {
//                                    Image(systemName: "app.badge").font(.callout)
//                                }.frame(width: 28, height: 28).background(Color.white).cornerRadius(6)
//                                Text("알림 설정")
//                            }
//                        }
                        
                        NavigationLink(destination: SettingsPhoto()) {
                            HStack {
                                ZStack {
                                    Image(systemName: "camera").font(.callout)
                                }.frame(width: 28, height: 28).background(Color.white).cornerRadius(6)
                                Text("사진 자동 저장")
                            }
                        }
                        
                        NavigationLink(destination: SettingsAbout()) {
                            HStack {
                                ZStack {
                                    Image(systemName: "gear").font(.callout)
                                }.frame(width: 28, height: 28).background(Color.white).cornerRadius(6)
                                Text("눈바디 1.0")
                            }
                        }
                    }
                }.background(Color("secondaryOrange"))
                .navigationTitle("마이페이지")
                

                .listStyle(GroupedListStyle())
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }

struct NoonBodySettings_Previews: PreviewProvider {
    static var previews: some View {
        NoonBodySettings()
    }
}

