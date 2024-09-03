//
//  View+Font.swift
//
//
//  Created by Hyun on 9/3/24.
//

import SwiftUI

public extension View {
  func font(_ style: BoostFont) -> some View {
    self.font(style.font)
  }
}

private extension BoostFont {
  var font: Font {
    switch self {
    case .heading1(.bold):
        .custom(Pretendard.bold.rawValue, size: 32)
    case .heading1(.medium):
        .custom(Pretendard.medium.rawValue, size: 32)
    case .heading1(.regular):
        .custom(Pretendard.regular.rawValue, size: 32)
    case .heading2(.bold):
        .custom(Pretendard.bold.rawValue, size: 28)
    case .heading2(.medium):
        .custom(Pretendard.medium.rawValue, size: 28)
    case .heading2(.regular):
        .custom(Pretendard.regular.rawValue, size: 28)
    case .heading3(.bold):
        .custom(Pretendard.bold.rawValue, size: 24)
    case .heading3(.medium):
        .custom(Pretendard.medium.rawValue, size: 24)
    case .heading3(.regular):
        .custom(Pretendard.regular.rawValue, size: 24)
    case .subheading1(.bold):
        .custom(Pretendard.bold.rawValue, size: 20)
    case .subheading1(.medium):
        .custom(Pretendard.medium.rawValue, size: 20)
    case .subheading1(.regular):
        .custom(Pretendard.regular.rawValue, size: 20)
    case .subheading2(.bold):
        .custom(Pretendard.bold.rawValue, size: 18)
    case .subheading2(.medium):
        .custom(Pretendard.medium.rawValue, size: 18)
    case .subheading2(.regular):
        .custom(Pretendard.regular.rawValue, size: 18)
    case .body1(.bold):
        .custom(Pretendard.bold.rawValue, size: 16)
    case .body1(.medium):
        .custom(Pretendard.medium.rawValue, size: 16)
    case .body1(.regular):
        .custom(Pretendard.regular.rawValue, size: 16)
    case .body2(.bold):
        .custom(Pretendard.bold.rawValue, size: 14)
    case .body2(.medium):
        .custom(Pretendard.medium.rawValue, size: 14)
    case .body2(.regular):
        .custom(Pretendard.regular.rawValue, size: 14)
    case let .caption1(.bold(size)):
        .custom(Pretendard.bold.rawValue, size: size)
    case let .caption1(.medium(size)):
        .custom(Pretendard.medium.rawValue, size: size)
    case let .caption1(.regular(size)):
        .custom(Pretendard.regular.rawValue, size: size)
    }
  }
}
