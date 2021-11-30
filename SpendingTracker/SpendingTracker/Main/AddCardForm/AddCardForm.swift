//
//  AddCardForm.swift
//  SpendingTracker
//
//  Created by Patrick Frei on 30.11.21.
//

import SwiftUI


struct AddCardForm: View {
    
    // no dependency between views necessary
    @Environment(\.presentationMode) var presentationMode
    
    @State private var name = ""
    
    var body: some View {
        NavigationView {
            Form {
                Text("Add card form")
                TextField("Name", text: $name)
                
            }
            .navigationTitle("Add credit card")
            .navigationBarItems(leading: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Cancel")
            }))
        }
    }
}

struct AddCardForm_Previews: PreviewProvider {
    static var previews: some View {
        AddCardForm()
    }
}
