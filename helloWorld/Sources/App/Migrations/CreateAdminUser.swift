//
//  File.swift
//  
//
//  Created by 박지혜 on 7/16/24.
//

import Vapor
import Fluent

struct CreateAdminUser: AsyncMigration {
    func prepare(on database: Database) async throws {
        let passwordHash = try Bcrypt.hash("secret")
        let admin = Admin(name: "admin", passwordHash: passwordHash)
        try await admin.save(on: database)
    }

    func revert(on database: Database) async throws {
        try await Admin.query(on: database)
            .filter(\.$name == "admin")
            .delete()
    }
}
