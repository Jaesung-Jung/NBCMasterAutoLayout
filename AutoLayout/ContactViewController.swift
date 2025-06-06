//
//  ContactViewController.swift
//  AutoLayout
//
//  Created by 정재성 on 6/6/25.
//

import UIKit
import SnapKit
import Then

final class ContactViewController: UIViewController {
  let contentView = UIView().then {
    $0.backgroundColor = .systemIndigo
  }

  let profileImageView = UIImageView(image: .profile)

  let nameLabel = UILabel().then {
    $0.text = "폰은정"
    $0.font = .preferredFont(forTextStyle: .title1)
    $0.textColor = .white
  }

  let contactButton = UIButton(configuration: .filled()).then {
    $0.configuration?.title = "연락처 추가"
    $0.configuration?.image = UIImage(systemName: "person.crop.circle.badge.plus")
    $0.configuration?.imagePadding = 8
    $0.configuration?.buttonSize = .large
    $0.configuration?.baseBackgroundColor = .black.withAlphaComponent(0.4)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBackground

    view.addSubview(contentView)
    contentView.snp.makeConstraints {
      $0.top.leading.trailing.equalToSuperview()
    }

    contentView.addSubview(profileImageView)
    profileImageView.snp.makeConstraints {
      $0.top.equalTo(contentView.safeAreaLayoutGuide)
      $0.centerX.equalToSuperview()
      $0.size.equalTo(160)
    }

    contentView.addSubview(nameLabel)
    nameLabel.snp.makeConstraints {
      $0.top.equalTo(profileImageView.snp.bottom).offset(16)
      $0.centerX.equalToSuperview()
    }

    contentView.addSubview(contactButton)
    contactButton.snp.makeConstraints {
      $0.top.equalTo(nameLabel.snp.bottom).offset(16)
      $0.leading.trailing.bottom.equalToSuperview().inset(20)
    }
  }
}

// MARK: - ContactViewController Preview

#Preview {
  ContactViewController()
}
