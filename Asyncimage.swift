//
//  AsyncimageBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 13.02.2026.
//

import SwiftUI

struct AsyncimageBootcamp: View {
    
    let url = URL(string: "https://instagram.fyei1-1.fna.fbcdn.net/v/t51.2885-19/503638416_18010453358770572_1048186986298733337_n.jpg?stp=dst-jpg_s320x320_tt6&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLmRqYW5nby4xMDgwLmMyIn0&_nc_ht=instagram.fyei1-1.fna.fbcdn.net&_nc_cat=100&_nc_oc=Q6cZ2QFoWFCN5-T_F9I2PdIav2ZxGThoPfUgC-cwYZ7XYjvcMxGkSKJGWG2uPaSsAH8A4JE&_nc_ohc=4EEY4iqis4AQ7kNvwH3955K&_nc_gid=gPfcvmiIf74SGx7XYEIlhA&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AftxPc9y73VUKnREAQj4fQ0MewPUSxp7HnOxQxGrI9ZXGw&oe=6994F8A4&_nc_sid=8b3546")
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            @unknown default:
                Image(systemName: "questionmark")
                    .font(.headline)
        
                }
            }
            
            
            /*     AsyncImage(url: url, content: { returnedImage in
             returnedImage
             .resizable()
             .scaledToFit()
             .frame(width: 100, height: 100)
             .cornerRadius(20)
             }, placeholder: {
             ProgressView()
             })  */
        }

    }


#Preview {
    AsyncimageBootcamp()
}
