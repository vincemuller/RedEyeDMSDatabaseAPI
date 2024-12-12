//
//  File.swift
//  hello
//
//  Created by Vince Muller on 12/11/24.
//

import Foundation
import Fluent
import Vapor

final class BucketFile: Model, Content {
    

    @ID(custom: .id)
    var id: Int?
    
    static let schema: String = "BucketFile"
    
    @Field(key: "user_id")
    var user_id: Int
    
    @Field(key: "site_id")
    var site_id: Int
    
    @Field(key: "filename")
    var filename: String
    
    @Field(key: "timestamp")
    var timestamp: Date
    
    init() {}
    
    init(id: Int, user_id: Int, site_id: Int, filename: String, timestamp: Date) {
        self.id = id
        self.user_id = user_id
        self.site_id = site_id
        self.filename = filename
        self.timestamp = timestamp
    }
}

final class Workflow: Model, Content {
    
    @ID(custom: .id)
    var id: Int?
    
    static let schema: String = "Workflow"
    
    @Field(key: "site_id")
    var site_id: Int?
    
    @Field(key: "name")
    var name: String?
    
    init() {}
    
    init(id: Int, site_id: Int = 0, name: String = "") {
        self.id = id
        self.site_id = site_id
        self.name = name
    }
}
