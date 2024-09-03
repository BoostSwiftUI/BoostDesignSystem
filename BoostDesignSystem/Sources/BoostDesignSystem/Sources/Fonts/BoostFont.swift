//
//  BoostFont.swift
//
//
//  Created by Hyun on 9/3/24.
//

import SwiftUI

public enum BoostFont {
  case heading1(Weight)
  case heading2(Weight)
  case heading3(Weight)
  case subheading1(Weight)
  case subheading2(Weight)
  case body1(Weight)
  case body2(Weight)
  case caption1(WeightWithSize)

  public enum Weight {
    case bold
    case medium
    case regular
  }

  public enum WeightWithSize {
    case bold(CGFloat)
    case medium(CGFloat)
    case regular(CGFloat)
  }
}
