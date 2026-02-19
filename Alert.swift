//
//  AlertBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 3.02.2026.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
   // @State var alertTitle: String = ""
   // @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts{
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("BUTTON 1"){
                    alertType = .error
                  //  alertTitle = "Error Uploading Video"
                  //  alertMessage = "The Video Could not be uploaded. Please try again later."
                    showAlert.toggle()
                }
                Button("BUTTON 2"){
                    alertType = .success
                  //  alertTitle = "Succesfully Uploaded Video 👌"
                  //  alertMessage = "Your Video is Now Public ! 🌐"
                    showAlert.toggle()
                }
                
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            } )
        }
    }
    
    func getAlert() -> Alert{
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error !"))
        case .success:
            return Alert(title: Text("This was a success !"), message: nil,
                         dismissButton: .default(Text("OK"), action:{
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("ERROR"))
        }
        
        /*  return Alert(title: Text(alertTitle),
         message: Text(alertMessage),
         dismissButton: .default(Text("OK")))  */
        
        /*      return Alert(
         title: Text("This is the title"),
         message: Text("Here we will describe the error"),
         primaryButton: .destructive(Text("Delete"), action: {
         backgroundColor = .red
         }),
         secondaryButton: .cancel())  */
        //  Alert(title: Text("There was an error !")),
    }
}

#Preview {
    AlertBootcamp()
}
