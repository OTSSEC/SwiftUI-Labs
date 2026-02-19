//
//  ContentUnavailableViewBootcamp.swift
//  SwiftLearn
//
//  Created by Ömer Tarık Şener on 19.02.2026.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        ContentUnavailableView.search(text:"Selam")
/*    ContentUnavailableView(
                                "No Internet Connection",
                               systemImage: "wifi.slash",
                               description: Text("Please connect to the internet and try again.")) */
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
