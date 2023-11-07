// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name
internal enum OnboardingLocalizable {

  internal enum Welcome {
    internal enum Label {
      /// Grave, recupere e compartilhe suas memórias favoritas a qualquer momento.
      internal static let subtitle = tr("Localizable", "welcome.label.subtitle")
      /// Faça minhas memórias
      internal static let title = tr("Localizable", "welcome.label.title")
    }
  }
}

extension OnboardingLocalizable {
  private static func tr(_ table: String, _ key: String, _ bundle: Bundle? = nil, _ args: CVarArg...) -> String {

    if table.contains("+External") {
      let bundle = bundle ?? Bundle.main
      let format = bundle.localizedString(forKey: key, value: nil, table: table)
      let text = String(format: format, locale: Locale.current, arguments: args)

      if text == key {
        return tr(table, key, BundleToken.bundle, args)
      }
      return String(format: format, locale: Locale.current, arguments: args)
    }

    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

internal final class BundleToken {
  internal static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}

extension Bundle {
    static var currentLanguage: String {
        guard let path = main.path(forResource: nil, ofType: "lproj"),
              let language = (path as NSString).lastPathComponent.components(separatedBy: ".").first
        else {
            return "en" // Padrão para inglês se não puder obter o idioma atual
        }
        return language
    }
}

// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name
// swiftlint:enable all
