//
//  MainView.swift
//  ReedCaseCD
//
//  Created by Patrick Frei on 01.12.21.
//

import SwiftUI

struct MainView: View {
    
    let reedsPlaceholder = (1...25).map { "item \($0)" }
    
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
            .navigationTitle("Reed Case")
        }
        
    }
}

struct ReedView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
