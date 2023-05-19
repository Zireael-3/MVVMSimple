//
//  ViewModel.swift
//  MVVMSimple
//
//  Created by Sysprobs on 15.05.2023.
//

import Foundation

class ViewModel {
	var logInStatus = Dynamic("")
	func userButtonPressed(login: String, password: String) {
		if login != User.logins[0].login || password != User.logins[0].passwords {
			logInStatus.value = "Failed, try again"
		} else {
			logInStatus.value = "Success"
		}
	}
}
