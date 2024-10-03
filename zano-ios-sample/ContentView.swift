//
//  ContentView.swift
//  zano-ios-sample
//
//  Created by Jumpei Katayama on 2024/09/13.
//

import SwiftUI
import zano_ios

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(ZanoWallet.get_versionCpp())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
