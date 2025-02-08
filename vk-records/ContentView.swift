//
//  ContentView.swift
//  vk-records
//
//  Created by Victor Batisttete Dias on 08/02/25.
//

import SwiftUI

struct ContentView: View {
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
                        Button(action: {
                        }) {
                            VStack {
                                Image(systemName: "person.crop.circle")
                                Text("Profile")
                                    .font(.caption)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        Button(action: {
                        }) {
                            VStack {
                                Image(systemName: "magnifyingglass")
                                Text("Search")
                                    .font(.caption)
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .padding(.top, 0)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
