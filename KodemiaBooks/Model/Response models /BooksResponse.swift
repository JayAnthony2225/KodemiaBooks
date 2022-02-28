//
//  BooksResponse.swift
//  KodemiaBooks
//
//  Created by Marco Cruz Velázquez on 2/27/22.
//

import Foundation

// MARK: - Welcome
struct BooksResponse: Codable {
    let data: [Book]
}

// MARK: - Datum
struct Book: Codable {
    let type, id: String
    let attributes: Attributes
    let relationships: Relationships
    let links: DatumLinks
}

// MARK: - Attributes
struct Attributes: Codable {
    let title, slug, content: String

    enum CodingKeys: String, CodingKey {
        case title, slug, content
    }
}

// MARK: - DatumLinks
struct DatumLinks: Codable {
    let linksSelf: String

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
    }
}

// MARK: - Relationships
struct Relationships: Codable {
    let authors, categories: Authors
}

// MARK: - Authors
struct Authors: Codable {
    let links: AuthorsLinks
}

// MARK: - AuthorsLinks
struct AuthorsLinks: Codable {
    let linksSelf, related: String

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case related
    }
}
