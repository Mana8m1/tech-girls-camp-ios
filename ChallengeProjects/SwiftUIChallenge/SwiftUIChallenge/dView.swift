//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// D. 四角形の中に3つのテキストを等間隔に配置（異なるアライメント）
//

import SwiftUI

struct dView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.red)
                .frame(width:300, height: 200)
            Text("Center Aligned")
                .foregroundColor(.white)
                
        }
    }
}

#Preview {
    dView()
}
