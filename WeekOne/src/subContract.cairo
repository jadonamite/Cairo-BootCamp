#[starknet::contract]
mod SubtractionContract {
    
    #[storage]
    struct Storage {}

    // A simple external function to subtract two numbers.
    // Inputs: a (u128), b (u128)
    // Returns: The result of a - b
    #[external(v0)]
    fn subtract(self: @ContractState, a: u128, b: u128) -> u128 {
        // Starknet uses felts/integers. 
        // We ensure 'a' is large enough to avoid underflow (negative result)
        // since we are working with unsigned integers (u128).
        assert(a >= b, 'Error: a must be >= b');
        
        a - b
    }
}
