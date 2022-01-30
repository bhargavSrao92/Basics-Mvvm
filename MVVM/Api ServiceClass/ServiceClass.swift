//
//  ServiceClass.swift
//  MVVM
//
//  Created by Bhargav Sachin on 26/01/22.
//

import Foundation



class ServiceClass  {
    
     let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    let jsonDecoder = JSONDecoder()
    
    func apiToGetData(completion : @escaping ([FakeApi]) -> ()){
        URLSession.shared.dataTask(with: url) { (data, urlResponse, error) in
            if let data = data {
                let result = try! JSONDecoder().decode([FakeApi].self, from: data)
                DispatchQueue.main.async {
                    completion(result)
                }
            }
        }.resume()
    }
    
}
