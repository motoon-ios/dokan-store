//
//  File.swift
//
//
//  Created by raniazeid on 15/08/2022.
//

import Foundation

/// Protocol for `AllCategoryRemote` mainly used for mocking.
///
public protocol AllCategoryRemoteProtocol {
    func loadAllCategory(completion: @escaping (Result<[String], Error>) -> Void)
}

/// Products: Remote Endpoints
///
public class AllCategoryRemote: Remote, AllCategoryRemoteProtocol {

    /// Loads all available category
    ///
    public func loadAllCategory(completion: @escaping (Result<[String], Error>) -> Void) {
        let path = "products/categories"
        let request = FakeStoreRequest(method: .get, path: path)

        enqueue(request, completion: completion)
    }
}
