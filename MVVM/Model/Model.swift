//
//  Model.swift
//  MVVM
//
//  Created by Bhargav Sachin on 26/01/22.
//

import Foundation

struct FakeApi: Decodable, Identifiable {
    let  id: Int
    let title, body: String
}

