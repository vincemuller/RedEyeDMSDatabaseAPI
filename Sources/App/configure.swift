import Vapor
import Fluent
import FluentMySQLDriver

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    // register routes
    
    app.databases.use(.mysql(hostname: "production-dms-db-mysql-rr.cjosmri8vcnm.ap-southeast-2.rds.amazonaws.com", username: "redeyeproductUSR", password: "5tat3Q!D", database: "redeyeproduction", tlsConfiguration: .forClient(certificateVerification: .none)), as: .mysql)
    
    try routes(app)
}
