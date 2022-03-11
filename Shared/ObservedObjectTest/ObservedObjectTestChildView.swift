//
//  ObservedObjectTestChildView.swift
//  PropertyWrapper
//
//  Created by tomoyo_kageyama on 2022/03/11.
//

import SwiftUI

struct ObservedObjectTestChildView: View {
    @ObservedObject var dataSource = DataSource()
    var body: some View {
        VStack {
            Button("increment counter") {
                dataSource.counter += 1
            }
            Text("ObservedObject count： \(dataSource.counter)")
                .font(.title)
        }
    }
}

struct ObservedObjectTestChildView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectTestChildView()
    }
}
