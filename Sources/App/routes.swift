import Vapor
import Fluent


func routes(_ app: Application) throws {
    app.get("Workflow", ":id") { request async throws -> [Workflow] in
        let int = request.parameters.get("id")!
        return try await Workflow.query(on: request.db)
            .filter(\.$site_id == Int(int))
            .all()
    }
    
    
//    app.get("BucketFile") { request async throws in
//        try await BucketFile.query(on: request.db)
//            .all()
//    }
//    app.get("BucketFile") {req async throws in
//        try await BucketFile.query(on: req.db)
//            .all()
//    }
}
