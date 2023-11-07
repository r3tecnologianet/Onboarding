// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

import UIKit

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum OnboardingAssets {
  internal enum Welcome {

    internal static let circles = ImageAsset(name: "Circles")
  }
}

internal struct ImageAsset {

  internal var name: String
  internal var image: UIImage {
    guard let imageAsset = UIImage(named: name, in: BundleToken.bundle, compatibleWith: nil) else {
      fatalError("Unable to load image named \(name)")
    }
    return imageAsset
  }

}

// swiftlint:enable identifier_name line_length nesting type_body_length type_name

