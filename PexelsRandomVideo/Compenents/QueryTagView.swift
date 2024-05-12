// Created by Enes UTKU

import SwiftUI

struct QueryTagView: View {
    
    var query: Query
    var isSelected: Bool
    
    var body: some View {
        Text(query.rawValue)
            .font(.caption)
            .bold()
            .foregroundStyle(isSelected ? .black : .gray)
            .padding(10)
            .background(.thinMaterial)
            .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    QueryTagView(query: Query.food, isSelected: true)
}
