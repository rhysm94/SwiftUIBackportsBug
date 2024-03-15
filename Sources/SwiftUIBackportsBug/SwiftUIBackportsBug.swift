import CommonUI
import SwiftUI
import SwiftUIBackports

public struct TestView: View {
  public var body: some View {
    Backport.LabeledContent("Hello", value: "World")
      .backport.labeledContentStyle(.test)
  }
}
