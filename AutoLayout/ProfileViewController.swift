//
//  ProfileViewController.swift
//  AutoLayout
//
//  Created by 정재성 on 6/8/25.
//

import UIKit
import SnapKit
import Then

// MARK: - ProfileViewController

final class ProfileViewController: UIViewController {
  // Step 1

  let contentView = UIView().then {
    $0.clipsToBounds = true
    $0.backgroundColor = .white
    $0.layer.cornerRadius = 16
    $0.layer.cornerCurve = .continuous
  }

  let profileImageView = UIImageView(image: .profile).then {
    $0.contentMode = .scaleAspectFill
    $0.clipsToBounds = true
  }

  let nameLabel = UILabel().then {
    $0.font = .systemFont(ofSize: 22, weight: .black)
    $0.text = "Sia Kate"
    $0.textColor = .label
  }

  let introLabel = UILabel().then {
    $0.font = .systemFont(ofSize: 17, weight: .semibold)
    $0.text = "시아 케이트 이소벨 펄러(1975년 12월 18일 출생)는 오스트레일리아의 가수이자 송라이터이다."
    $0.textColor = .secondaryLabel
    $0.numberOfLines = 0
  }

  // Step 2

  let followButton = UIButton(configuration: .filled()).then {
    $0.configuration?.title = "Like"
    $0.configuration?.image = UIImage(systemName: "heart.fill")
    $0.configuration?.imagePlacement = .trailing
    $0.configuration?.imagePadding = 4
    $0.configuration?.buttonSize = .large
    $0.tintColor = .systemPink
  }

  let addToPlaylistButton = UIButton(configuration: .filled()).then {
    $0.configuration?.title = "Add to Playlist"
    $0.configuration?.image = UIImage(systemName: "text.badge.plus")
    $0.configuration?.imagePadding = 4
    $0.configuration?.buttonSize = .large
    $0.tintColor = #colorLiteral(red: 0.1411764706, green: 0.3176470588, blue: 0.2666666667, alpha: 1)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Profile"

    view.backgroundColor = #colorLiteral(red: 0.1411764706, green: 0.3176470588, blue: 0.2666666667, alpha: 1)
    view.addSubview(contentView)

    contentView.addSubview(profileImageView)
    contentView.addSubview(nameLabel)
    contentView.addSubview(introLabel)

    let infoLayoutGuide = UILayoutGuide()
    contentView.addLayoutGuide(infoLayoutGuide)
    infoLayoutGuide.snp.makeConstraints {
      $0.top.equalTo(profileImageView.snp.bottom).offset(20)
      $0.leading.trailing.bottom.equalToSuperview().inset(20)
    }

    contentView.snp.makeConstraints {
      // 카드 컨테이너 레이아웃
    }

    profileImageView.snp.makeConstraints {
      // 프로필 이미지 레이아웃
    }

    nameLabel.snp.makeConstraints {
      // 이름 레이아웃 구성 (가능하면 infoLayoutGuide 사용해보기)
    }

    introLabel.snp.makeConstraints {
      // 소개 레이아웃 구성 (가능하면 infoLayoutGuide 사용해보기)
    }
  }
}

// MARK: - ProfileViewController Preview

#if DEBUG

@available(iOS 17.0, *)
#Preview {
  NavigationController(rootViewController: ProfileViewController())
}

#endif
