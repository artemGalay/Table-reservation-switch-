//
//  ThirdViewController.swift
//  HW-4-switch-Cafe Mario
//
//  Created by Артем Галай on 15.08.22.
//

import UIKit

class ThirdViewController: UIViewController {

    private let chekLabel: UILabel = {
        let label = UILabel()
        label.text = "Чек"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 36)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.setTitle("< Back", for: .normal)
        button.setTitleColor(UIColor.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(buttonTappedBack), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }

    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(chekLabel)
        view.addSubview(backButton)
    }

    private func buttonBackTapped() {
        let secondViewController: SecondViewController = SecondViewController()
        secondViewController.modalPresentationStyle = .fullScreen
        self.present(secondViewController, animated: true, completion: nil)
    }

    @objc private func buttonTappedBack() {
        buttonBackTapped()
    }

    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            chekLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            chekLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        ])

    }
}

