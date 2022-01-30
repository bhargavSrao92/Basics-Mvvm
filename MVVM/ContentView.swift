//
//  ContentView.swift
//  MVVM
//
//  Created by Bhargav Sachin on 26/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        List(viewModel.apiData ?? []) { part in
            Text(part.title)
                .onTapGesture {
                    print(part.title)
                }
        }
        .onAppear(perform:fetch)
        .padding(.all, 4.0)
    }
    
    func fetch(){
        viewModel.callFuncToGetData()
    }
    
}
