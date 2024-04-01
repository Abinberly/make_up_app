import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = MakeUpViewModel()

     var body: some View {
         List(viewModel.makeupProduct, id: \.id) { element in
             VStack(alignment: .leading) {
                 Text(element.name)
                 Text(element.brand ?? "")
                     .foregroundColor(.gray)
             }
         }
         .onAppear {
             viewModel.fetchData()
         }
     }}
