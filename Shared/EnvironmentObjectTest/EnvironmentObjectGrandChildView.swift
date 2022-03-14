//
//  EnvironmentObjectGrandChildView.swift
//  PropertyWrapper (iOS)
//
//  Created by tomoyo_kageyama on 2022/03/14.
//

import SwiftUI

// 孫view
struct EnvironmentObjectGrandChildView: View {
    @EnvironmentObject var dataSource: DataSource
    var body: some View {
        Text("\(dataSource.counter)")
    }
}

struct EnvironmentObjectGrandChildView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectGrandChildView().environmentObject( DataSource())
    }
}
