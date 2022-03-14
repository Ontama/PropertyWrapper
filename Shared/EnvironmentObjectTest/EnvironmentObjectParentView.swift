//
//  EnvironmentObjectParentView.swift
//  PropertyWrapper (iOS)
//
//  Created by tomoyo_kageyama on 2022/03/14.
//

import SwiftUI

// 親view
struct EnvironmentObjectParentView: View {
    @StateObject private var dataSource = DataSource()
    var body: some View {
        EnvironmentObjectChildView().environmentObject(dataSource)
    }
}

struct EnvironmentObjectParentView_Previews: PreviewProvider {
    @StateObject static private var dataSource = DataSource()
    static var previews: some View {
        EnvironmentObjectParentView().environmentObject(dataSource)
    }
}
