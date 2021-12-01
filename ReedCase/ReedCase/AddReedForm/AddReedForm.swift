//
//  AddReedForm.swift
//  ReedCase
//
//  Created by Patrick Frei on 01.12.21.
//

import SwiftUI

struct AddReedForm: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var name = ""
    var body: some View {
        NavigationView {
            Form {
                Text("Add reed form")
                TextField("Name", text: $name)
            }
            .navigationTitle("Add Reed")
            .navigationBarItems(leading: Button(action: {
                presentationMode.wrappedValue.dismiss()
//                shouldPresentAddReedForm.toggle()
            }, label: {
                Text("Cancel")
            }))
        }
    }
}

struct AddReedForm_Previews: PreviewProvider {
    static var previews: some View {
        AddReedForm()
    }
}
