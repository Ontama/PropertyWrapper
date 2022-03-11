//
//  StateObjectCounterView.swift
//  PropertyWrapper
//
//  Created by tomoyo_kageyama on 2022/03/11.
//

import SwiftUI

struct StateObjectCounterView: View {
    @StateObject private var dataSource = DataSource()
    var body: some View {
        VStack {
            Button("increment counter") {
                dataSource.counter += 1
            }
            Text("StateObject count： \(dataSource.counter)")
                .font(.title)
        }
    }
}

struct StateObjectCounterView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectCounterView()
    }
}
