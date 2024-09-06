//
//  ShapeStyle+Color.swift
//
//
//  Created by Hyun on 9/5/24.
//

import SwiftUI

public extension ShapeStyle where Self == Color {

  // MARK: - Gray Scale

  static var gray50: Color { .init("Gray Scale/gray50", bundle: .module) }
  static var gray100: Color { .init("Gray Scale/gray100", bundle: .module) }
  static var gray200: Color { .init("Gray Scale/gray200", bundle: .module) }
  static var gray300: Color { .init("Gray Scale/gray300", bundle: .module) }
  static var gray400: Color { .init("Gray Scale/gray400", bundle: .module) }
  static var gray500: Color { .init("Gray Scale/gray500", bundle: .module) }
  static var gray600: Color { .init("Gray Scale/gray600", bundle: .module) }
  static var gray700: Color { .init("Gray Scale/gray700", bundle: .module) }
  static var gray800: Color { .init("Gray Scale/gray800", bundle: .module) }
  static var gray900: Color { .init("Gray Scale/gray900", bundle: .module) }
}

public extension Color {

  // MARK: - Pillyze

  enum Pillyze {

    static var disabled: Color { .init(0xD7DAE1) }

    static func primary(_ status: PrimaryStatus = .default) -> Color {
      switch status {
      case .default:      .init(0x6D2FF2)
      case .pressed:      .init(0x5726C2)
      case .disabled:     .init(0xF8F7FC)
      case .placeholder:  .init(0xF8F7FC)
      }
    }

    static func text(_ status: TextStatus) -> Color {
      switch status {
      case .normal:       .init(0x212025)
      case .secondary:    .init(0x615F6C)
      case .placeholder:  .init(0xA6A9B0)
      }
    }

    public enum PrimaryStatus {
      case `default`
      case pressed
      case disabled
      case placeholder
    }

    public enum TextStatus {
      case normal
      case secondary
      case placeholder
    }
  }
}
