//
//  User.swift
//  MVVMSimple
//
//  Created by Sysprobs on 15.05.2023.
//

import Foundation

struct User {
	let login: String?
	let passwords: String?
}

extension User {
	static var logins = [
		User(login: "gnatenkovi", passwords: "12345678")
	]
}
