import Vapor
import Fluent

final class Admin: Model, Content {
    static let schema = "admins"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "name")
    var name: String

    // 비밀번호는 DB에 hash값으로 저장해야 함
    @Field(key: "password_hash")
    var passwordHash: String

    init() {}

    init(id: UUID? = nil, name: String, passwordHash: String) {
        self.id = id
        self.name = name
        self.passwordHash = passwordHash
    }
}

extension Admin: ModelSessionAuthenticatable {
  static let usernameKey = \Admin.$name
  static let passwordHashKey = \Admin.$passwordHash

  func verify(password: String) throws -> Bool {
    try Bcrypt.verify(password, created: self.passwordHash)
  }
}

extension Admin: @unchecked Sendable {}
