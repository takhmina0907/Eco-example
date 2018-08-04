//
//  FirebaseReference.swift
//  InstagramUI
//
//  Created by Takhmina Talipova on 8/3/18.
//  Copyright © 2018 Developers Academy. All rights reserved.
//

import Foundation
import Firebase

enum DRef{
    case root
    case users(uid: String)


func reference() -> DatabaseReference{
    switch self {
    case .root:
        return rootRef
    default:
        return rootRef.child(path)
    }
}

private var rootRef: DatabaseReference {
    return Database.database().reference()
}

private var path: String{
    switch self {
    case .root:
        return " "
    case .users(let uid):
        return "users/\(uid)"
    }
}
}

