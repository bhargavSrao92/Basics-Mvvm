//
//  ViewModel.swift
//  MVVM
//
//  Created by Bhargav Sachin on 26/01/22.
//

import Foundation


class ViewModel : ObservableObject {
    
    
    var apiService : ServiceClass!
    @Published var apiData : [FakeApi]!
    
    init() {
        self.apiService =  ServiceClass()
        callFuncToGetData()
    }
    
    func callFuncToGetData() {
        self.apiService.apiToGetData { (apiData) in
            self.apiData = apiData
        }
    }}
