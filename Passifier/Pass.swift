//
//  Pass.swift
//  Passifier
//
//  Created by Vishrut Jha on 8/5/24.
//

import Foundation
import SwiftData

@Model
final class Pass {
    var id: UUID
    var name: String
    var creationDate: Date
    @Attribute(.unique) var uniqueIdentifier: String
    
    init(id: UUID = UUID(), name: String, creationDate: Date = Date()) {
        self.id = id
        self.name = name
        self.creationDate = creationDate
        self.uniqueIdentifier = id.uuidString
    }
}

