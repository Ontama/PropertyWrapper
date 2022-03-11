//
//  ObservedObjectTestView.swift
//  PropertyWrapper
//
//  Created by tomoyo_kageyama on 2022/03/11.
//

import SwiftUI

struct ObservedObjectTestView: View {
    @StateObject private var dataSource = DataSource()
    var body: some View {
        ObservedObjectTestChildView(dataSource: dataSource)
    }
}

struct ObservedObjectTestView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectTestView()
    }
}
