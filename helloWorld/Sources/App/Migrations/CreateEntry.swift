//
//  File.swift
//  
//
//  Created by 박지혜 on 7/16/24.
//

import Fluent

struct CreateEntry: Migration {
    func prepare(on database: any Database) -> EventLoopFuture<Void> {
        return database.schema("entries")
            .id()
            .field("title", .string, .required)
            .field("content", .string, .required)
            .create()
    }
    
    // RollBack
    func revert(on database: any Database) -> EventLoopFuture<Void> {
        return database.schema("entries").delete()
    }
}
