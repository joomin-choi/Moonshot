//
//  ContentView.swift
//  Moonshot
//
//  Created by JooMin Choi on 04/10/2022.
//

import SwiftUI

struct ContentView: View {
//    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
//    let missions: [Mission] = Bundle.main.decode("missions.json")
//
//    let columns = [
//        GridItem(.adaptive(minimum: 150))
//    ]
    @State var showingGrid = true
    
    var body: some View {
        NavigationView {
            Group {
                if showingGrid {
                    GridLayout()
                } else {
                    ListLayout()
                }
            }
            .navigationTitle("Moonshot")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    if showingGrid {
                        Button(action: {
                            showingGrid = false
                        }){
                            Text("List view")
                            Image(systemName: "list.bullet.rectangle")
                        }
                    } else {
                        Button(action: {
                            showingGrid = true
                        }){
                            Text("Grid view")
                            Image(systemName: "square.grid.3x3.square")
                        }
                    }
            
                }
            }
        }
//        ToolbarItem(placement: .navigationBarTrailing) {
//            Button {
//                Image(systemName: "square.grid.3x3.square")
//            }
            
//            Button(action: {
//                showingAddExpense = true
//            }){
//                Image(systemName: "plus")
//            }
//        }
            //            ScrollView {
            //                LazyVGrid(columns: columns) {
            //                    ForEach(missions) { mission in
            //                        NavigationLink {
            //                            MissionView(mission: mission, astronauts: astronauts)
            //                        } label: {
            //                            VStack {
            //                                Image(mission.image)
            //                                    .resizable()
            //                                    .scaledToFit()
            //                                    .frame(width: 100, height: 100)
            //
            //                                VStack {
            //                                    Text(mission.displayName)
            //                                        .font(.headline)
            //                                        .foregroundColor(.white)
            //
            //                                    Text(mission.formattedLaunchDate)
            //                                        .font(.caption)
            //                                        .foregroundColor(.white.opacity(0.5))
            //                                }
            //                                .padding(.vertical)
            //                                .frame(maxWidth: .infinity)
            //                                .background(.lightBackground)
            //                            }
            //                            .clipShape(RoundedRectangle(cornerRadius: 10))
            //                            .overlay(
            //                                RoundedRectangle(cornerRadius: 10)
            //                                    .stroke(.lightBackground)
            //                            )
            //                        }
            //                    }
            //                }
            //                .padding([.horizontal, .bottom])
            //            }
            //            .navigationTitle("Moonshot")
            //            .background(.darkBackground)
            //            .preferredColorScheme(.dark)
            //
            //        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
