//
//  Custom404.swift
//  Web
//
//  Created by Filip Klembara on 3/7/18.
//

import Squirrel
import Foundation
import NutView

struct Custom404: ErrorHandlerProtocol {
    func getResponse(for error: Error) -> Response? {
        print(error)

        guard let err = error as? HTTPErrorConvertible else {
            return nil
        }

        let httpError = err.asHTTPError

        guard case .notFound = httpError.status else {
            return nil
        }

        do {
            let view = View(name: "404")
            return try Response(status: .notFound, presentable: view)
        } catch let error {
            let body = "Internal error (\(error)) while handling error with description: \(httpError.description)".data(using: .utf8)!
            return Response(status: .internalError, headers: [.contentType(.html)], body: body)
        }
    }
}
