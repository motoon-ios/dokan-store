//
//  File.swift
//
//
//  Created by raniazeid on 30/08/2022.
//

import Domain
import Networking

extension Networking.SellerInfo: DomainConvertible {

    func toDomain() -> Domain.SellerInfo {
        return Domain.SellerInfo(sellerName: sellerName, reviews: reviews, location: location, workTime: workTime, followers: followers, productsCount: productsCount, createdAt: createdAt, sellerProducts: [])
    }
}
