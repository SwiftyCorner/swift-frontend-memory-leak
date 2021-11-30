//
//  MainView.swift
//  SpendingTracker
//
//  Created by Patrick Frei on 30.11.21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                TabView {
                    ForEach(0..<5) { num in
                        CreditCardView()
                    }
                    .padding(.bottom, 40)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                .frame(height: 280)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
            }
            .navigationTitle("Credit Cards")
            .navigationBarItems(trailing: addCardButton)
        }
    }
    
    struct CreditCardView: View {
        var body: some View {
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Visa card")
                    .font(.system(size: 24, weight: .semibold, design: .default))
                
                HStack {
                    Image("Visa")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 44)
                        .clipped()
                    Spacer()
                    Text("Balance: $5,000")
                        .font(.system(size: 18, weight: .semibold, design: .default))
                    
                }
                
                Text("1234 1234 1234 134")
                Text("Credit card limit: $300")
                
                HStack {
                    Spacer()
                }
            }
            .foregroundColor(.white)
            .padding()
            .background(
                .linearGradient(colors: [Color.blue.opacity(0.6), Color.blue], startPoint: .top, endPoint: .bottom))
            .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black.opacity(0.5), lineWidth: 1))
            
            .cornerRadius(8)
            .shadow(radius: 5)
            .padding(.horizontal)
            .padding(.top, 8)
            
        }
    }
    
    var addCardButton: some View {
        Button(action: {
            
        }, label: {
            Text("+ Card")
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .bold, design: .default))
                .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))
                .background(Color.black)
                .cornerRadius(5)
        })
    }
}




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
