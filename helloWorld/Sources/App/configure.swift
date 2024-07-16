import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    // 기본 로그 레벨을 디버그로 설정
    app.logger.logLevel = .debug
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    // register routes
    try routes(app)
}
