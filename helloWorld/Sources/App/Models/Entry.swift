//
//  File.swift
//  
//
//  Created by 박지혜 on 7/16/24.
//

import Vapor
import Fluent

final class Entry: Model, Content {
    static let schema: String = "entries"
    
    init() {}
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "title")
    var title: String
    
    @Field(key: "content")
    var content: String
    
    init(id: UUID? = UUID(), title: String, content: String) {
        self.id = id
        self.title = title
        self.content = content
    }
}

// Vapor가 Swift6에 대응하지 못하는 것 같음 - Warning 지우기
extension Entry: @unchecked Sendable {}
