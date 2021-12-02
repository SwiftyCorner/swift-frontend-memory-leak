//
//  MainView.swift
//  ReedCaseCD
//
//  Created by Patrick Frei on 01.12.21.
//

import SwiftUI

struct MainView: View {
    
    let reedsPlaceholder = (1...5).map { "item \($0)" }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach(reedsPlaceholder, id: \.self) { item in
                        ReedView()
                            .aspectRatio(0.6, contentMode: .fit)
                    }
                }
            }
//            .padding(.horizontal)
            .navigationTitle("Reed Case")
            .toolbar {
                Button("Add Reed") {
                    
                }
            }
        }
    }
}

struct ReedView: View {
    var body: some View {
        ZStack {
//            RoundedRectangle(cornerRadius: 15)
            VStack {
                Image("reedImg")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                Text("Reed tag")
                    .font(.system(size: 24, weight: .semibold, design: .default))
                Text("Date")
                Text("Rating")
            }
            .foregroundColor(.white)
//            .padding()
            .background(Color.blue)
            .cornerRadius(8)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
