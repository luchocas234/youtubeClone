//
//  PlaylistModel.swift
//  youtubeClone
//
//  Created by u633168 on 21/10/2022.
//

import Foundation


struct PlaylistModel: Decodable{
    let kind : String
    let etag : String
    let pageInfo : PageInfo
    let items : [Item]
    
    struct PageInfo : Decodable {
        let totalResults : Int
        let resultsPerPage : Int
    }
    //Algunos datos pueden ser optionals, por lo que hay que revisar las llamadas al JSON 
    struct Item: Decodable{
        let kind : String
        let etag: String
        let id: String
        let snippet : Snippet
        let contentDetails : ContentDetails
        
        struct Snippet : Decodable {
            let publishedAt: String
            let channelId : String
            let title: String
            let description: String
            let thumbnails :Thumbnails
            let channelTitle: String
            let localized: Localized
            
            struct Localized: Decodable{
                let title : String
                let description : String
            }
            
            struct Thumbnails : Decodable{
                let medium : Medium
                
                struct Medium : Decodable {
                    let url : String
                    let width : Int
                    let height : Int
                }
            }
        }//Snippet
        
        struct ContentDetails: Decodable{
            let itemCount : Int
        }
    } //Items
}
