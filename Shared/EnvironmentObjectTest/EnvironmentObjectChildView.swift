//
//  EnvironmentObjectChildView.swift
//  PropertyWrapper (iOS)
//
//  Created by tomoyo_kageyama on 2022/03/14.
//

import SwiftUI

// 子view
struct EnvironmentObjectChildView: View {
    var body: some View {
        EnvironmentObjectGrandChildView()
    }
}

struct EnvironmentObjectChildView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectChildView()
            .environmentObject(DataSource())
    }
}
