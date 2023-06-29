import SwiftUI

struct DigitalJournal: View {
    @State private var journal = ""
    @State private var entries: [String] = []

    var body: some View {
        ZStack {
            Color(red: 0.76, green: 0.88, blue: 0.77)
                .ignoresSafeArea()

            VStack {
                Text("GLOW")
                    .foregroundColor(.black)
                    .padding()
                Text( "DIGITAL JOURNAL")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.374, saturation: 0.959, brightness: 0.447))


                Text("Write Your Thoughts...")
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.374, saturation: 0.959, brightness: 0.447))
                    .padding()

                TextView(text: $journal)
                    .font(.system(size: 20))
                    .background(CustomColor.myCustomColor)
                    .border(Color.black, width: 1)
                    .frame(width: 300, height: 320) // Adjust the width and height as per your preference
                    .padding()

                Button(action: saveJournal) {
                    Text("Clear All and Save")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                        .frame(width: 300, height: 30) // Adjust the width and height of the image

                }
                .padding()

                Image("brain")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150) // Adjust the width and height of the image


                ScrollView {
                    ForEach(entries, id: \.self) { entry in
                        Text(entry)
                            .font(.system(size: 16))
                            .padding()
                    }
                }
            }
            .padding()
        }
    }

    func saveJournal() {
        guard !journal.isEmpty else {
            return // Don't save if the journal is empty
        }

        entries.append(journal)
        journal = "" // Clear the journal text after saving
    }
}

struct CustomColor {
    static let myCustomColor = Color(.white)
}

struct TextView: UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.isScrollEnabled = true
        textView.isEditable = true
        textView.isUserInteractionEnabled = true
        textView.text = text
        textView.font = UIFont.systemFont(ofSize: 20)
        textView.backgroundColor = UIColor.clear
        textView.delegate = context.coordinator
        textView.frame = CGRect(x: 0, y: 0, width: 300, height: 200) // Adjust the width and height as per your preference
        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }

    func makeCoordinator() -> Coordinator {
        Coordinator($text)
    }

    class Coordinator: NSObject, UITextViewDelegate {
        @Binding var text: String

        init(_ text: Binding<String>) {
            _text = text
        }

        func textViewDidChange(_ textView: UITextView) {
            text = textView.text
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DigitalJournal()
    }
}
