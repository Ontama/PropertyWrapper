//
//  ParentView.swift
//  PropertyWrapper
//
//  Created by tomoyo_kageyama on 2022/03/11.
//

import SwiftUI

struct ParentView: View {
    @State private var counter = 0
    
    var body: some View {
            NavigationView {
                VStack{
                    // 押すと増えるボタン
                Button(action: {
                    counter += 1
                }, label: {
                    Text("\(counter)")
                        .font(.title)
                })
                    //遷移するボタン
                NavigationLink(destination: ChildView(counter: $counter)) {
                    Text("child Viewへ遷移")
                }
                    
                    NavigationLink(destination:         EnvironmentSample()
                                    .environment(\.colorScheme, .dark)) {
                        Text("EnvironmentSampleへ遷移")
                    }
            }.navigationBarTitle("ParentView", displayMode: .inline)
            }
            
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
