//
//  categories.swift
//  Zepto
//
//  Created by Celestial on 30/01/25.
//

import SwiftUI

struct categories: View {
    
    var body: some View {
       
            VStack{
                ScrollView{
                    HStack{
                        Text("Grocery & Kitchen")
                            .padding(.leading)
                            .bold()
                        Spacer()
                        
                    }.padding()
                    HStack{
                            
                            NavigationLink(destination: ShowMore(index: 0)) {
                                LongImage(image: "Fruits", title: "Fruits & \n Vegetables")
                                
                            }
                            NavigationLink(destination: ShowMore(index: 1)) {
                                shotImage(image: "Dariy", title: "Dairy,Bread & Eggs")
                                
                        }
                        
                            NavigationLink(destination: ShowMore(index: 2)) {
                                shotImage(image: "Dariy", title: "Dairy,Bread & Eggs")
                            
                        }
                        
                    }
                    .padding()
                    HStack{
                       
                            NavigationLink(destination: ShowMore(index: 1)) {
                                shotImage(image: "MeatFish&Eggs", title: "Meat, Fish &\n Eggs")
                            
                        }
                     
                            NavigationLink(destination: ShowMore(index: 2)) {
                                shotImage(image: "MasalaDayFruits", title: "Masala & Day Fruits")
                                shotImage(image: "Breakfast&sauces", title: "Breakfast & sauces")
                                shotImage(image: "packagedFood", title: "Packaged Food")
                            
                        }
                    }
                    .padding()
                    HStack{
                        Text("Snacks & Drinks")
                            .padding(.leading)
                            .bold()
                        Spacer()
                        
                    }.padding()
                    
                    HStack{
                        
                            NavigationLink(destination: ShowMore(index: 1)) {
                                shotImage(image: "ZeptoCafe", title: "Zepto Cafe")
                            
                        }
                        
                            NavigationLink(destination: ShowMore(index: 2)) {
                                shotImage(image: "TeaCoffee&More", title: "TeaCoffee&More")
                            
                        }
                        
                            NavigationLink(destination: ShowMore(index: 3)) {
                                shotImage(image: "iceCreams&More", title: "Ice Creams & More")
                            
                        }
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "frozen", title: "Frozen")
                            
                        }
                    }
                    .padding()
                    HStack{
                       
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "sweetCravings", title: "Sweet Cravings")
                            
                        }
                    
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "TeaCoffee&More", title: "TeaCoffee&More")
                            }
                        
                       
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "iceCreams&More", title: "Ice Creams & More")
                            }
                        
                 
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "frozen", title: "Frozen")
                            }
                        
                    }
                    .padding()
                    
                    HStack{
                        Text("Beauty & Personal Care")
                            .padding(.leading)
                            .bold()
                        Spacer()
                        
                    }.padding()
                    
                    HStack{
                            NavigationLink(destination: ShowMore(index: 0)) {
                                LongImage(image: "Makeup&beauty", title: "Makeup & beauty")
                            }
                        
                       
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "skincare", title: "Skin Care")
                            }
                        
                       
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "iceCreams&More", title: "Ice Creams & More")
                            }
                        
                    }
                    .padding()
                    HStack{
                       
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "sweetCravings", title: "Sweet Cravings")
                            
                        }
                        
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "TeaCoffee&More", title: "TeaCoffee&More")
                            
                        }
                       
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "iceCreams&More", title: "Ice Creams & More")
                            }
                        
                     
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "frozen", title: "Frozen")
                            }
                        
                    }
                    .padding()
                    
                    
                    HStack{
                        Text("Household Essentials")
                            .padding(.leading)
                            .bold()
                        Spacer()
                        
                    }.padding()
                    
                    HStack{
                        
                    
                            NavigationLink(destination: ShowMore(index: 0)) {
                                LongImage(image: "Makeup&beauty", title: "Makeup & beauty")
                            }
                        
                    
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "skincare", title: "Skin Care")
                            }
                        
                        
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "iceCreams&More", title: "Ice Creams & More")
                            }
                        
                    }
                    .padding()
                    HStack{
                        
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "sweetCravings", title: "Sweet Cravings")
                            
                        }
                 
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "TeaCoffee&More", title: "TeaCoffee&More")
                            
                        }
                    
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "iceCreams&More", title: "Ice Creams & More")
                            
                        }
                        
                            NavigationLink(destination: ShowMore(index: 0)) {
                                shotImage(image: "frozen", title: "Frozen")
                            
                        }
                    }
                    .padding()
                    
                   
                    
                    
                }
            }
            
      

    }
}

#Preview {
    categories()
}
