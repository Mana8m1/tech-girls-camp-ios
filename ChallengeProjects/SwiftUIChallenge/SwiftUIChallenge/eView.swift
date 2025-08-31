//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// E. 商品アイテム
//

import SwiftUI

struct eView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(width: 280, height: 250)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 10)
                
            
            VStack(alignment: .leading) {
                
                AsyncImage(url: URL(string: "https://picsum.photos/300/200")!)
                    .frame(width: 230, height: 150)
                    .cornerRadius(10)
                Text("商品名：おしゃれなバッグ")
                    .fontWeight(.bold)
                Text("¥12,800")
                    .fontWeight(.bold)
                    .foregroundColor(.green)
            }
        }
    }
}
#Preview {
    eView()
}
