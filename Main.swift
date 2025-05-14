//
// This is the Tree class and main logic for the Tree program
//
// @version 1.0
// @since 2025-05-1
//

class Tree {
    // Properties
    var numOfLeaves: Int
    var type: String
    var yearPlanted: Int
    var height: Int
    var age: Int

    // Initializer
    init(height: Int, numOfLeaves: Int, type: String, yearPlanted: Int, age: Int) {
        self.height = height
        self.numOfLeaves = numOfLeaves
        self.type = type
        self.yearPlanted = yearPlanted
        self.age = age
    }

    // Method to grow the tree (no parameter)
    func grow() {
        self.height += 10
        self.numOfLeaves += 100
    }

    // Method to grow the tree by a specific height (overloaded)
    func grow(_ height: Int) {
        self.height += height
    }

    // Method to lose all leaves
    func loseLeaves() {
        self.numOfLeaves = 0
    }

    // Method to increment the year planted
    func year() {
        self.yearPlanted += 1
    }

    // Method to update the age based on year planted
    func updateAge(currentYear: Int = 2025) {
        self.age = currentYear - self.yearPlanted
    }
}

func Main() {
    // Create a new instance of the Tree
    let myTree = Tree(height: 35, numOfLeaves: 4000, type: "Undefined", yearPlanted: 2000, age: 0)

    // Print current tree information
    print("Initial tree information:")
    print("Height: \(myTree.height) feet")
    print("Number of leaves: \(myTree.numOfLeaves)")
    print("Type: \(myTree.type)")
    print("Year planted: \(myTree.yearPlanted)")

    // Grow the tree
    myTree.grow()

    // Grow the tree by a specific height
    myTree.grow(13)

    // Call the lose leaves method to set leaves to 0
    myTree.loseLeaves()

    // Add to the year
    myTree.year()

    // Set the Tree to a species
    myTree.type = "Willow"

    // Update the age
    myTree.updateAge()

    // Print current tree information
    print("\nNew tree information:")
    print("Height: \(myTree.height) feet")
    print("Number of leaves: \(myTree.numOfLeaves)")
    print("Type: \(myTree.type)")
    print("Year planted: \(myTree.yearPlanted)")
    print("Age: \(myTree.age)")
}

// Call Main
Main()