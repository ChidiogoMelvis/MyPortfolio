//
//  NetworkingManager.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import Foundation

class NetworkingManager {
    func fetchRepositoryDetails(completion: @escaping (Result<Welcome, Error>) -> Void) {
        guard let url = URL(string: "https://api.github.com/repos/ChidiogoMelvis/Alamofire") else {
            fatalError("Invalid URL")
        }

        var request = URLRequest(url: url)
        request.addValue("", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
                   if let error = error {
                       completion(.failure(error))
                       return
                   }
                   
                   guard let data = data else {
                       completion(.failure(NSError(domain: "No data received", code: 0, userInfo: nil)))
                       return
                   }
                   
                   do {
                       let repository = try JSONDecoder().decode(Welcome.self, from: data)
                       completion(.success(repository))
                   } catch {
                       completion(.failure(error))
                   }
               }
               
               task.resume()

    }
}

