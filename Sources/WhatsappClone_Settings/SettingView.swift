//
//  SettingView.swift
//  WhatsappClone
//
//  Created by Praveen on 06/04/25.
//

import SwiftUI

@available(iOS 16.0, *)
public struct SettingView: View {
    public init() {}
    @State var textInTextField: String = ""
    public var body: some View {
        NavigationView {
            VStack{
                Form{
                    Section{
                        HStack{
                            Image("Praveen version 4")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(.circle)
                            VStack(alignment: .leading){
                                Text("Praveen")
                                    .font(.headline)
                                    .bold(true)
                                Text("Don't say just \"hi\" -Context?")
                                    .font(.caption)
                            }
                            Spacer()
                            Button {} label: {
                                Image(systemName: "qrcode.viewfinder")
                                    .font(.system(size: 25))
                                    .foregroundStyle(.black)
                                    .padding(5)
                                    .background(Color.gray.opacity(0.1))
                                    .clipShape(.circle)
                            }
                        }
                        settingCellView(imageName: "person.and.arrow.left.and.arrow.right", text: "Avatar")
                    }
                    
                    Section{
                        settingCellView(imageName: "person.2.crop.square.stack", text: "List")
                        settingCellView(imageName: "music.microphone", text: "Broadcast messages")
                        settingCellView(imageName: "star", text: "Starred messages")
                        settingCellView(imageName: "laptopcomputer", text: "linked devices")
                    }
                    
                    Section{
                        settingCellView(imageName: "key", text: "Account")
                        settingCellView(imageName: "lock", text: "Privacy")
                        settingCellView(imageName: "message", text: "Chats")
                        settingCellView(imageName: "square.on.square", text: "Notifications")
                        settingCellView(imageName: "indianrupeesign.ring", text: "Payments")
                        settingCellView(imageName: "arrow.up.arrow.down", text: "Storage and data")
                    }
                    
                    Section{
                        settingCellView(imageName: "info.circle", text: "help")
                        settingCellView(imageName: "person.2", text: "Invite a friend")
                    }
                    
                    Section {
                        settingCellView(imageName: "circle.square", text: "Open Instagram")
                        settingCellView(imageName: "f.cursive", text: "Open Facebook")
                        settingCellView(imageName: "at", text: "Open Threads")
                    }header: {
                        Text("Also for Meta")
                    }
                    
                }
            }.navigationTitle(Text("Setting"))
                .searchable(text: $textInTextField)
        }
    }
}


@available(iOS 16.0, *)
public struct settingCellView: View {
    let imageName: String
    let text: String
    //    let navigationView: some View
    public var body: some View {
        HStack{
            NavigationLink {} label: {
                Image(systemName: imageName)
                    .padding(.horizontal, 10)
                Text(text)
            }
        }
    }
}
