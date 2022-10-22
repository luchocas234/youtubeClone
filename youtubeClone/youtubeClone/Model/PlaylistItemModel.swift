//
//  PlaylistItemModel.swift
//  youtubeClone
//
//  Created by u633168 on 22/10/2022.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let playListItemModel = try? newJSONDecoder().decode(PlayListItemModel.self, from: jsonData)

import Foundation

// MARK: - PlayListItemModel
struct PlayListItemModel: Codable {
    let kind, etag: String
    let items: [Item]
    let pageInfo: PageInfo
}

// MARK: - Item
struct Item: Codable {
    let kind, etag, id: String
    let snippet: Snippet
    let contentDetails: ContentDetails
}

// MARK: - ContentDetails
struct ContentDetails: Codable {
    let videoID: String
    let videoPublishedAt: Date

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
        case videoPublishedAt
    }
}

// MARK: - Snippet
struct Snippet: Codable {
    let publishedAt: Date
    let channelID, title, snippetDescription: String
    let thumbnails: Thumbnails
    let channelTitle, playlistID: String
    let position: Int
    let resourceID: ResourceID
    let videoOwnerChannelTitle, videoOwnerChannelID: String

    enum CodingKeys: String, CodingKey {
        case publishedAt
        case channelID = "channelId"
        case title
        case snippetDescription = "description"
        case thumbnails, channelTitle
        case playlistID = "playlistId"
        case position
        case resourceID = "resourceId"
        case videoOwnerChannelTitle
        case videoOwnerChannelID = "videoOwnerChannelId"
    }
}

// MARK: - ResourceID
struct ResourceID: Codable {
    let kind, videoID: String

    enum CodingKeys: String, CodingKey {
        case kind
        case videoID = "videoId"
    }
}

// MARK: - Thumbnails
struct Thumbnails: Codable {
    let thumbnailsDefault, medium, high, standard: Default
    let maxres: Default

    enum CodingKeys: String, CodingKey {
        case thumbnailsDefault = "default"
        case medium, high, standard, maxres
    }
}

// MARK: - Default
struct Default: Codable {
    let url: String
    let width, height: Int
}

// MARK: - PageInfo
struct PageInfo: Codable {
    let totalResults, resultsPerPage: Int
}
