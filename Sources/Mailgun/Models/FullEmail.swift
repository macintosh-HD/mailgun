//
//  File.swift
//  
//
//  Created by Julian Gentges on 27.11.21.
//

import Foundation

public struct FullEmail {
    let name: String?
    let email: String
    
    public init(name: String?, email: String) {
        self.name = name
        self.email = email
    }
}

extension FullEmail {
    var string: String {
        guard let name = name else {
            return email
        }
        return "\(name) <\(email)>"
    }
}

extension Array where Element == FullEmail {
    var stringArray: [String] {
        map(\.string)
    }
}
