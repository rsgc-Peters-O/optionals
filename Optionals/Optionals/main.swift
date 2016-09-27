/*
 
 PROBLEM
 
 Given a number, n, determine whether the number is prime.
 
 A prime number has no positive divisors other than 1 and itself.
 
 The input, n, can range between 2 and 99999, inclusive.
  
 INPUT/OUTPUT EXAMPLES
 
 Example 1
 ---------
 What is the number? 16
 
 This is not prime.

 Example 2
 ---------
 What is the number? 
 What is the number? 15
 
 This is not prime.

 Example 3
 ---------
 What is the number? 7
 
 This is prime.
 
 */

/*
 
 MAKING A PLAN
 
 A common problem solving model is known as input-process-output.
 
 1. What are the possible inputs I can expect to receive?
 2. How should each type of input be processed?
 3. What should the output be in each case?
 
 It can be helpful to organize this into a table. Here's an example:
 
 http://russellgordon.ca/rsgc/2016-17/ics3u/IPO-example.jpg
 
 */

/*
 
 IMPLEMENT THE PLAN
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?

 */

// INPUT

// Regular integer, will store the value provided, eventually
var possiblePrime : Int = 0

// Loop until a valid potential prime is given
while possiblePrime == 0 {
    
    // Show the prompt
    print("What is the number? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (this will happen only if the input is not nil)
    if let notNilInput = input {
        
        // Now we know we have a non-nil string
        // Try to make the string into an integer (again we can use optional binding)
        if let inputAsInteger = Int(notNilInput) {
            
            // Now we know we have the input as an integer, so assign it to the value we'll work with below, in the "process" section
            possiblePrime = inputAsInteger
            
        }
        
    }

}


// PROCESS
var prime : Bool = true    // Assume prime unless we find it is not

// Lowest possible input value should be 2
if possiblePrime != 2 {     // 2 is prime, so we wouldn't need to bother with checks below
    
    // Check to see if the number is even
    if possiblePrime % 2 == 0 {
        
        prime = false       // This is an even number (that is not 2) so possiblePrime cannot be prime
        
    }
    
}


// OUTPUT
if prime {
    print("This is prime.")
} else {
    print("This is not prime.")
}

