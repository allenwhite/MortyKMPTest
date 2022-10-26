import SwiftUI
import shared
import KingfisherSwiftUI

struct CharactersListRowView: View {
    let character: CharacterDetail
    
    var body: some View {
        HStack {
            if let image = character.image,
               let url = URL(string: image) {
                KFImage(url)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.gray)
            }
            VStack(alignment: .leading) {
                Text(character.name )
                    .font(.title3)
                    .foregroundColor(.accentColor)
                Text("\(character.episode.count) episode(s)")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
        }
    }
}
