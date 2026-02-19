//
//  ModelBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 10.02.2026.
//

import SwiftUI

struct UserModel: Identifiable  {
    let id: String = UUID().uuidString
    let displayName: String
    let username: String
    let followeCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
      //  "Nick","Tarik","Kemal", "Jhon"
        UserModel(displayName: "Nick", username: "nick123", followeCount: 100, isVerified: true),
        UserModel(displayName: "Tarik", username: "Tarikssener", followeCount: 1247712, isVerified: true),
        UserModel(displayName: "Kemal", username: "Kemalbaba", followeCount: 232, isVerified: false),
        UserModel(displayName: "Jhon", username: "Jhongeas", followeCount: 52, isVerified: false)
        
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 50, height: 50)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack{
                            Text("\(user.followeCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
                
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
