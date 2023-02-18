module control(

    input logic Clk, Reset, 
    input logic Walk, 

    output logic [4:0] LED 

); 
	enum logic [1:0]{ 
        RESET,
        GREEN, 
        YELLOW,
        RED         

	
	}   State, Next_state; 
always_ff @(posedge Clk or posedge Reset)begin : STATE_REGISTER

    if(rst)begin 
        State <= RESET; 
    end 

    else begin 
        State <= Next_state;  
    end 

end 

always_comb begin 
    Next_state = State; 
    unique case(State)
    // next state condition     

    endcase 


    unique case(State)
    // control signals 

    endcase 

end 

endmodule 