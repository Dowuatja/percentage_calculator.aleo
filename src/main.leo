// Percentage calculation program.
program percentage_calculator.aleo {
    // The "Percentage" struct representing the percentage calculation.
    struct Percentage {
        // A struct member named "part" with type "field".
        part: field,
        // A struct member named "total" with type "field".
        total: field,
    }

    // The "main" function of this Leo program takes a "Percentage" struct type as input.
    // To pass "percentage" into the "main" function we
    // 1. Define the "Percentage" type.
    // 2. Use brackets { } to enclose the struct members.
    // 3. Define each struct member name : value.
    //
    // You can try this transition function by running: 
    // leo run main "{ part: 75field, total: 100field }"

    transition main(percentage: Percentage) -> field {
        // Calculate the percentage.
        let result: field = (percentage.part / percentage.total) * 100field;

        // Return the calculated percentage.
        return result;
    }
}
