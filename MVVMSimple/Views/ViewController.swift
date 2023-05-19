//
//  ViewController.swift
//  MVVMSimple
//
//  Created by Sysprobs on 15.05.2023.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var loginField: UITextField!

	@IBOutlet weak var passField: UITextField!

	@IBAction func loginButton(_ sender: Any) {
		viewModel.userButtonPressed(login: (loginField.text ?? ""), password: passField.text ?? "")
	}
	
	@IBOutlet weak var label: UILabel!
	var viewModel = ViewModel()

	func initialState() {
		label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		label.text = " "
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		bindViewModel()
		initialState()
	}

	func bindViewModel() {
		viewModel.logInStatus.bin({ (logInStatus) in
			DispatchQueue.main.async {
				self.label.text = logInStatus
			}
		})
	}


}

