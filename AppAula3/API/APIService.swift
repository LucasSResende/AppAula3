//
//  APIService.swift
//  AppAula3
//
//  Created by user269368 on 23/11/24.
//

import Foundation
import Alamofire

struct APIService {
    private let baseURL = "https://private-4eceeb-dm126api2.apiary-mock.com"
    func getGoals(completion: @escaping ([GoalType]?, Error?) -> Void) {
        let url = "\(baseURL)/goals"
        AF.request(url)
            .validate()
            .responseDecodable(of: [GoalType].self) { response in
                switch response.result {
                case .success(let goals):
                    completion(goals, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    func postGoal(_ goal: GoalType, completion: @escaping (Bool, Error?) -> Void) {
        let url = "\(baseURL)/goals"
        AF.request(url, method: .post, parameters: goal, encoder: JSONParameterEncoder.default)
            .validate()
            .response { response in
                if let error = response.error {
                    completion(false, error)
                } else {
                    completion(true, nil)
                }
            }
    }
}

