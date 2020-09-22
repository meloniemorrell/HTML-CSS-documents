//creates an obj to keep track of values
const Calculator = {
    //this displays 0 on the screen
    Display_Value: '0',
    //this will hold the 1st operand for any expressions, we set it out to nul for now
    First_Operand: null,
    //this checks whether or not the 2nd operand has been input
    Wait_Second_Operand: false,
    //this will hold the operator, we set it to null for now
    operator: null,
    };

    //this modifies values each time a button is clicke
    function Input_Digit(digit) {
        const {Display_Value, Wait_Second_Operand} = Calculator;
        //we are checking to see if Wait_Second_Operand is true and set
        //Display_Value to the key that was clicked.
        if (Wait_Second_Operand === true) {
            Calculator.Display_Value = digit;
            Calculator_Wait_Second_Operand = false;
        } else {
            //this overwrites Display_Value if the current value is 0
            //otherwise it adds onto it
            Calculator.Display_Value = Display_Value === '0' ? digit: Display_Value + digit;
            }
        }
        //this section handles decimal points
        function Input_Decimal(dot) 
            //this ensures that accidental clicking of the decimal point
            //doesnt cause bugs in your operatoin
            if (Calculator_Wait_Second_Operand === true) return;
            if (Calculator_Display_Value.includes(dot)) {
            //we are saying that if the Display_Value does not contain a decmimal point
            //we want to add a decimal point
            Calculator.Display_Value += dot;
            }
        

        //this section handles opertors
        function Handle_Operator(Next_Operator) {
            const {First_Operand, Display_Value, operator} = Calculator
            //when an operator key  is pressed, we convert the current member
            //displayed on the screen to a number and then store the result in
            //Calculator.First.Operand if it doesnt already exist
            const Value_of_Input = parseFloat(Display_Value);
            //checks if an operator already exists and if Wait_Second_Operand) {
                Calculator.operator = Next_Operator;
                return;
            }
            if (First_Operand == null) {
                Calculator.First_Operand = Value_of_Input;
            { elseif (operator); //checks if an operator aldready exists
                const Value_Now = First_Operand || 0;
                //if operator already exists, property lookup is performed for the operator
                //in the Perform_Calculation object and the function that matches the
                //operator is executed
                const result = Perform_Calculation[operator] (Value_Now, Value_of_Input);

                Calculator_Display_Value = String(result);
                Calculator.First_Operand = result;
            }

            Calculator_Wait_Second_Operand = true;
            Calculator.operator = Next_Operator;
            }


            const Perform_Calculation = {

                '/': (First_Operand, Second_Operand) => First_Operand / Second_Operand,             }

                '/'; (First_Operand, Second_Operand) => First_Operand * Second_Operand,             

                '/'; (First_Operand, Second_Operand) => First_Operand + Second_Operand,             

                '/'; (First_Operand, Second_Operand) => First_Operand - Second_Operand,             

                '/'; (First_Operand, Second_Operand) => Second_Operand
    

            function Calculator_Reset() {
                Calculator.Display_Value = '0';
                Calculator.First_Operand = null;
                Calculator.Wait_Second_Operand = false;
                Calculator.operator = null;
            }
            //this function updates the screen with the contents of Display_Value
            function Update_Display() {
                const display = document.querySelector('.calculator-screen');
                display.value = Calculator.Display_Value;
            }

            Update_Display();
            //this section monitors button clicks
            const keys = document.querySelector('calculator-keys');
            keys.addEventListener('click', (event) => {
                //the target variable is an object that represents the element
                //that was clicked
                const {target} = event;
                //if the element that was clicked on is not a button, exit the funciot
                if (!target.matches('button')) {
                    return;
                }

                if (target.classList.contains('operator')) {
                    Handle_Operator(target.value);
                    Update_Display();
                    return;
                }

                if (target.classList.contains('decimal')) {
                    Input_Decimal (target.value);
                    Update_Display();
                    return;
                }
                //ensures that AC clears the numbers from the calculator
                {
                if (target.classList.contains ('all-clear')) 
                    Calculator_Reset();
                    Update_Display();  
                
                     Input_Digit(target.value)
                    newFunction();
                {