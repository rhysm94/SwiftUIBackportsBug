import SwiftUI
import SwiftUIBackports

public struct TestLabelStyle: BackportLabeledContentStyle {
  public func makeBody(configuration: Configuration) -> some View {
    HStack {
      configuration.label

      Spacer()

      configuration.content
    }
  }
}

public extension BackportLabeledContentStyle where Self == TestLabelStyle {
  static var test: Self { Self() }
}
