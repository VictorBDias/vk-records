//
//  ContentView.swift
//  vk-records
//
//  Created by Victor Batisttete Dias on 08/02/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        Text("Item Navigation")
                    } label: {
                        CardView(
                            title: "Item \(item.id)",
                            content: "TESTTT",
                            image: "https://image"
                        )
                    }
                }
                .onDelete(perform: deleteItems)
            }
#if os(macOS)
            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
#endif
            .toolbar {
#if os(iOS)
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
#endif
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(title: "New Item", content: "Sample Content", image: "https://sample-image.com")
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
        .onAppear {
            let context = try? ModelContext(inMemory: true)
            for i in 1...5 {
                let mockItem = Item(
                    title: "Mock Item \(i)",
                    content: "This is the content of mock item \(i).",
                    image: "placeholder-image"
                )
                context?.insert(mockItem)
            }
        }
}

}
