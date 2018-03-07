//
//  Custom404.swift
//  Web
//
//  Created by Filip Klembara on 3/7/18.
//

import Squirrel
import Foundation
import NutView

/// Custom 404 error handler
struct Custom404: ErrorHandlerProtocol {
    func getResponse(for error: Error) -> Response? {
        // Check if error conforms HTTPErrorConvertible
        guard let err = error as? HTTPErrorConvertible else {
            return nil
        }

        let httpError = err.asHTTPError

        // Check error status
        guard case .notFound = httpError.status else {
            return nil
        }

        do {
            // Create view
            let view = View(name: "404")

            // Return response
            return try Response(status: .notFound, presentable: view)
        } catch let error {
            // Internal error
            let body = "Internal error (\(error)) while handling error with description: \(httpError.description)".data(using: .utf8)!
            return Response(status: .internalError, headers: [.contentType(.html)], body: body)
        }
    }
}
