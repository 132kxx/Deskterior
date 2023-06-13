//
//  ContentView.swift
//  Deskterior
//
//  Created by kxx on 2023/06/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //navigation title
            HStack {
                Text("New")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
            }
            .padding(.horizontal)

            ScrollView {
                VStack {

                    // weekly
                    VStack {
                        Text("Weekly")
                            .font(.title2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(0...10, id: \.self) {_ in
                                    Rectangle()
                                        .frame(width: 150, height: 150)
                                        .overlay {
                                            Image(systemName: "heart.fill")
                                                .foregroundColor(.white)
                                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                                                .padding(4)
                                        }
                                }
                            }
                        }
                    }
                    // monthly
                    VStack {
                        Text("Monthly")
                            .font(.title2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(0...10, id: \.self) {_ in
                                    Rectangle()
                                        .frame(width: 150, height: 150)
                                        .overlay {
                                            Image(systemName: "heart.fill")
                                                .foregroundColor(.white)
                                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                                                .padding(4)
                                            
                                        }
                                }
                            }
                        }
                    }
                    
                }
                .padding()
            }
            
            HStack {
                Image(systemName: "person")
                Image(systemName: "house")
                Image(systemName: "bell")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
