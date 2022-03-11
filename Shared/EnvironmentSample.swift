//
//  EnvironmentSample.swift
//  PropertyWrapper
//
//  Created by tomoyo_kageyama on 2022/03/11.
//

import SwiftUI

struct EnvironmentSample: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        if colorScheme == .dark {
            Text("dark mode").foregroundColor(.red)
        } else if colorScheme == .light {
            Text("light mode").foregroundColor(.red)
        } else {
            Text("").foregroundColor(.red)
        }
    }
}

struct EnvironmentSample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentSample()
            .environment(\.colorScheme, .dark)
    }
}
