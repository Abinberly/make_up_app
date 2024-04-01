//
//  makeup_view_model.swift
//  make_up_app
//
//  Created by Abin Berly on 01/04/24.
//

import Foundation

import Foundation

class MakeUpViewModel: ObservableObject {
    @Published var makeupProduct: [MakeUpProduct] = []

        func fetchData() {
            guard let url = URL(string: "https://makeup-api.herokuapp.com/api/v1/products.json") else {
                print("Invalid URL")
                return
            }

            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data else {
                    print("No data returned: \(error?.localizedDescription ?? "Unknown error")")
                    return
                }

                do {
                    let decoder = JSONDecoder()
                    let response = try decoder.decode([MakeUpProduct].self, from: data)
                    DispatchQueue.main.async {
                        self.makeupProduct = response
                    }
                } catch {
                    print("Error decoding JSON: \(error)")
                }
            }

            task.resume()
        }

}
