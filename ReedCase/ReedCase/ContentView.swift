//
//  ContentView.swift
//  ReedCase
//
//  Created by Patrick Frei on 25.11.21.
//

// colors (NICOLE PUNK 82)
// nonSatLight: 250 - 245 - 216 - faf5d8
// nonSatDark: 216 - 174 - 139 - d8ae8b
// satLight: 242 - 171 - 55 - f2ab37
// Color(red: 242/255, green: 171/255, blue: 55/255, opacity: 1)
// satDark: 205 - 95 - 42 - cd5f2a
// Color(red: 205/255, green: 95/255, blue: 42/255, opacity: 1)
// dark: 33 - 24 27 - 21181b

import SwiftUI

struct ContentView: View {
    
    @State private var shouldPresentAddReedForm = false
    
    let daad = (1...25).map { "item \($0) "}
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach(daad, id: \.self) { item in
                        ReedView()
                            .aspectRatio(0.6, contentMode: .fit)
                    }
                }
                
                Spacer()
                    .fullScreenCover(isPresented: $shouldPresentAddReedForm, onDismiss: nil) {
                        AddReedForm()
                    }
            }
            .padding(5) // grid padding
            .navigationTitle("Reed Case")
            .navigationBarItems(trailing: addReedButton)
        }
    }
    var addReedButton: some View {
        Button {
            shouldPresentAddReedForm.toggle()
        } label: {
            Text("Add Reed")
                .foregroundColor(Color(red: 33/255, green: 24/255, blue: 27/255, opacity: 1))
                .font(.system(size: 16, weight: .bold, design: .default))
                .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))
                .background(Color(red: 250/255, green: 245/255, blue: 216/255, opacity: 1))
                .cornerRadius(5)
        }
    }
}

struct ReedView: View {
    
//    let image = Image(systemName: "lock.shield")
    let image = Image("reedImg")
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color(red: 250/255, green: 245/255, blue: 216/255, opacity: 1))
            VStack {
                LinearGradient.lairHorizontalDark
                    .mask(image.resizable().scaledToFit())
                    .padding(5.0) // image padding
                    .font(.system(size: 150, weight: .thin, design: .default))
                    .shadow(color: .white, radius: 3, x: -2, y: -2)
                    .shadow(color: .lairShadowGray, radius: 2, x: 2, y: 2)
                Text("Reed tag")
                    .foregroundColor(.lairDarkGray)
                    .bold()
                Text("24 Jun 2021")
                Text("* * * * *")
            }
        }
        .overlay(
          RoundedRectangle(cornerRadius: 15)
            .stroke(LinearGradient.lairDiagonalDarkBorder, lineWidth: 2)
        )
        .shadow(
            color: Color(white: 1.0).opacity(0.9),
          radius: 3, x: -2, y: -2)
        .shadow(
          color: Color.lairShadowGray.opacity(0.5),
          radius: 3, x: 2, y: 2)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension LinearGradient {
  public static var lairDiagonalDarkBorder: LinearGradient {
    LinearGradient(
      gradient: Gradient(colors: [.white, .lairGray]),
      startPoint: UnitPoint(x: -0.2, y: 0.5),
      endPoint: .bottomTrailing
    )
  }
  
  public static var lairDiagonalLightBorder: LinearGradient {
    LinearGradient(
      gradient: Gradient(colors: [.white, .lairLightGray]),
      startPoint: UnitPoint(x: 0.2, y: 0.2),
      endPoint: .bottomTrailing
    )
  }
  
  public static var lairHorizontalDark: LinearGradient {
    LinearGradient(
      gradient: Gradient(colors: [.lairShadowGray, .lairDarkGray]),
      startPoint: .leading,
      endPoint: .trailing
    )
  }
  
  public static var lairHorizontalDarkReverse: LinearGradient {
    LinearGradient(
      gradient: Gradient(colors: [.lairDarkGray, .lairShadowGray]),
      startPoint: .leading,
      endPoint: .trailing
    )
  }
  
  public static var lairHorizontalDarkToLight: LinearGradient {
    LinearGradient(
      gradient: Gradient(colors: [
        .lairShadowGray,
        Color.white.opacity(0.0),
        .white]),
      startPoint: .top,
      endPoint: .bottom
    )
  }
  
  public static var lairVerticalLightToDark: LinearGradient {
    LinearGradient(
      gradient: Gradient(colors: [
        .white,
        Color.white.opacity(0.0),
        .lairShadowGray]),
      startPoint: .top,
      endPoint: .bottom
    )
  }
  
  public static var lairHorizontalLight: LinearGradient {
    LinearGradient(
      gradient: Gradient(colors: [.lairWhite, .lairBackgroundGray]),
      startPoint: .leading,
      endPoint: .trailing
    )
  }
}

extension Color {
  public static var lairBackgroundGray: Color {
    Color(.lairBackgroundGray)
  }
  
  public static var lairDarkGray: Color {
    Color(.lairDarkGray)
  }
  
  public static var lairShadowGray: Color {
    Color(.lairShadowGray)
  }
  
  public static var lairGray: Color {
    Color(.lairGray)
  }
  
  public static var lairLightGray: Color {
    Color(.lairLightGray)
  }
  
  public static var lairWhite: Color {
    Color(.lairWhite)
  }
}

extension UIColor {
  public class var lairBackgroundGray: UIColor {
    UIColor(red: 0.878, green: 0.918, blue: 0.957, alpha: 1.000)
  }
  
  public class var lairDarkGray: UIColor {
    UIColor(red: 0.192, green: 0.212, blue: 0.329, alpha: 1.000)
  }
  
  public class var lairShadowGray: UIColor {
    UIColor(red: 0.565, green: 0.608, blue: 0.667, alpha: 1.000)
  }
  
  public class var lairGray: UIColor {
    UIColor(red: 0.592, green: 0.651, blue: 0.710, alpha: 1.000)
  }
  
  public class var lairLightGray: UIColor {
    UIColor(red: 0.812, green: 0.851, blue: 0.890, alpha: 1.000)
  }
  
  public class var lairWhite: UIColor {
    UIColor(red: 0.929, green: 0.949, blue: 0.973, alpha: 1.000)
  }
}
