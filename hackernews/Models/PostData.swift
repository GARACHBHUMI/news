//
//  PostData.swift
//  hackernews
//
//  Created by ravi on 15/09/20.
//  Copyright © 2020 ravi. All rights reserved.
//

import Foundation
struct PostData:Decodable
{
    let hits:[Post]
}

struct Post:Decodable,Identifiable
{
    var id:String
    {
        return objectID
      }
     let objectID: String
       let points: Int
       let title: String
       let url: String?
}
