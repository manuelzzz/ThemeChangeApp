//
//  ViewController.swift
//  ThemeChangeApp
//
//  Created by Manuel Santos Souza on 23/02/25.
//

import UIKit

enum Theme {
	case blue, red, yellow
}

class ViewController: UIViewController {

	@IBOutlet weak var actualThemeLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		changeTheme(to: .blue)
	}

	func changeTheme(to theme: Theme) {
		let themeName = String(describing: theme)
		actualThemeLabel.text = "The actual theme is: \(themeName)"

		switch theme {
		case .blue:
			view.backgroundColor = .blue
		case .red:
			view.backgroundColor = .red
		case .yellow:
			view.backgroundColor = .yellow
		}
	}

	@IBAction func blueThemeButtonTapped(_ sender: Any) {
		changeTheme(to: .blue)
	}

	@IBAction func redThemeButtonTapped(_ sender: Any) {
		changeTheme(to: .red)
	}

	@IBAction func yellowThemeButtonTapped(_ sender: Any) {
		changeTheme(to: .yellow)
	}

}
