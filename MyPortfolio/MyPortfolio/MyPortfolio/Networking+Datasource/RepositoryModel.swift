//
//  RepositoryModel.swift
//  MyPortfolio
//
//  Created by Mac on 19/08/2023.
//

import Foundation

// MARK: - Welcome
class Welcome: Codable {
    let id: Int?
    let name: String?
    let fullName: String?
    let htmlURL: String?
    let description: String?
    let fork: Bool?
    let owner: Owner?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case fullName
        case htmlURL = "html_url"
        case description, fork, owner
    }
}

// MARK: - Owner
class Owner: Codable {
    let login: String
    let avatarURL: String

    enum CodingKeys: String, CodingKey {
        case login
        case avatarURL = "avatar_url"
    }
}


