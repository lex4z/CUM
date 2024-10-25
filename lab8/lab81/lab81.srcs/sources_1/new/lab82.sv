`timescale 1ns / 1ps

module lab82(
    input logic clk,
    input logic srst,
    input logic info,
    output logic [1 : 0] coded
    );
    typedef enum logic [1 : 0] {init_state,state1,state2,state3} t_state;
    
    t_state current_state = init_state, next_state;
    
    
    
    always_ff @(posedge clk) begin
        if(srst) begin
            current_state <= init_state;
            coded <= 2'b00;
        end else begin
            current_state <= next_state;
            
            case(current_state)
                init_state: coded <= info ? 2'b11 : 2'b00;
                state1:     coded <= info ? 2'b00 : 2'b11;
                state2:     coded <= info ? 2'b01 : 2'b10;
                state3:     coded <= info ? 2'b10 : 2'b01;
                default:    coded <= 2'b00;
            endcase
            
        end
    end
    
    always_comb begin
        //next_state = current_state;  //?
        case (current_state)
            init_state: next_state = info ? state2 : init_state;
            state1:     next_state = info ? state2 : init_state;
            state2:     next_state = info ? state3 : state1    ;
            state3:     next_state = info ? state3 : state1    ;
            default:    next_state = init_state;
        endcase
    end
endmodule
