//
//  Color+init.swift
//
//
//  Created by Hyun on 9/5/24.
//

import SwiftUI

public extension Color {

  /// 16진수 문자열로부터 Color를 초기화합니다.
  /// - Parameters:
  ///   - hex: RGB 형식의 16진수 문자열 (예: "FF0000", "#FF0000")
  ///   - alpha: 불투명도 값 (0.0 ~ 1.0, 기본값 `1.0`)
  init(_ hex: String, alpha: Double = 1) {
    let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
    var int: UInt64 = 0
    Scanner(string: hex).scanHexInt64(&int)
    let r, g, b: UInt64
    switch hex.count {
    case 6: // RGB - pattern인 경우
      (r, g, b) = (int >> 16, int >> 8 & 0xFF, int & 0xFF)
    default:
      (r, g, b) = (0, 0, 0) // clear color
    }

    self.init(
      .sRGB,
      red: Double(r) / 255,
      green: Double(g) / 255,
      blue:  Double(b) / 255,
      opacity: alpha
    )
  }

  /// UInt 타입의 RGB 값으로부터 Color를 초기화합니다.
  /// - Parameters:
  ///   - hex: RGB 형식의 UInt 값 (예: 0xFF0000)
  ///   - alpha: 불투명도 값 (0.0 ~ 1.0, 기본값 `1.0`)
  init(_ hex: UInt, alpha: Double = 1) {
    self.init(
      .sRGB,
      red: Double(hex >> 16) / 255,
      green: Double((hex >> 08) & 0xff) / 255,
      blue: Double(hex & 0xff) / 255,
      opacity: alpha
    )
  }
}
