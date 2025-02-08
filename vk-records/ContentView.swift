//
//  ContentView.swift
//  vk-records
//
//  Created by Victor Batisttete Dias on 08/02/25.
//

import SwiftUI

struct ContentView: View {
    let accentColor = Color(red: 0.2, green: 0.9, blue: 1.0)
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.background
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    GameListView()
                        .padding(.bottom, 46)
                    Spacer()
                }
                
                // Footer
                VStack {
                    Spacer()
                    HStack {
                        Button(action: {
                        }) {
                            VStack {
                                Image(systemName: "gamecontroller")
                                Text("Games")
                                    .font(.caption)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .foregroundColor(accentColor)

                        Button(action: {
                        }) {
                            VStack {
                                Image(systemName: "magnifyingglass")
                                Text("Search")
                                    .font(.caption)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)

                        Button(action: {
                        }) {
                            VStack {
                                Image(systemName: "person.crop.circle")
                                Text("Profile")
                                    .font(.caption)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                    }
                    .padding(.top, 0)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                
//                VStack {
//                         HStack {
//                             Spacer()
//                             Button(action: {
//                                 // Profile action here
//                             }) {
//                                 AsyncImage(url: URL(string:  "https://avatars.githubusercontent.com/u/30843291?v=4")) { phase in
//                                     switch phase {
//                                     case .empty:
//                                         ProgressView()
//                                             .frame(width: 40, height: 40)
//                                     case .success(let image):
//                                         image
//                                             .resizable()
//                                             .scaledToFill()
//                                             .frame(width: 40, height: 40)
//                                             .clipShape(Circle())
//                                     case .failure:
//                                         Image(systemName: "person.crop.circle.fill")
//                                             .resizable()
//                                             .frame(width: 40, height: 40)
//                                     @unknown default:
//                                         EmptyView()
//                                     }
//                                 }
//                                 .padding()
//                             }
//                         }
//                         Spacer()
//                     }
                     .padding(.top, 16)
                     .padding(.trailing, 16)
                 }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
