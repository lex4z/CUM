`timescale 1ns / 1ps

module lab82(
    input logic clk,
    input logic srst,
    input logic btn,
    input logic [2 : 0] x1,
    input logic [2 : 0] x2,
    output logic [7 : 0] y
    );
    typedef enum logic [1 : 0] {init_state,state1,state2,state3} t_state;
    
    t_state current_state = init_state, next_state;
    
    //main counter
    logic [27 : 0] counter = 0;
    
    always_ff @(posedge clk) begin
        if(srst) counter <= 0;
        else counter <= counter + 1;
    end
    
    //delays and enable signals
    logic change_state;
    logic gray_enable;
    logic counter25_delayed = 0;
    //logic counter24_delayed = 0;
    
    always_ff @(posedge clk) begin
        counter25_delayed <= counter[25];//0.5 с
        //counter24_delayed <= counter[24];// не ровно 0.25 с, чтобы было ровно надо каждые 12.5 * 10^6 тактов менять состояние на противоположное реализации тут не будет
    end
    
    assign change_state = btn * counter[25] * ~counter25_delayed;
    //assign gray_enable = counter[24] * ~counter24_delayed;
    
    //0.25s gray anable
    logic [23:0] counter_250ms = 0;
    logic t250ms = 0;
    
    always_ff @(posedge clk) begin
        if(counter_250ms == 12500000) t250ms <= ~t250ms;
        else counter_250ms <= counter_250ms + 1;
    end
    
    logic t250ms_delayed;
    always_ff @(posedge clk) begin
        t250ms_delayed <= t250ms;
    end
    
    assign gray_enable = t250ms * ~t250ms_delayed;
    
    //douts
    logic [7 : 0] dout0;
    logic [7 : 0] dout1;
    logic [7 : 0] dout2;
    logic [7 : 0] dout3;
    
    assign dout0 = '0 + counter[26];
    
    assign dout1 = '0 + x1 + x2;
    
    assign dout2 = '0 + x1 * x2;
    
    logic [7 : 0] gray_counter;
    always_ff @(posedge clk) begin
        if(srst) begin 
            gray_counter <= 0;
            dout3 <= '0;
        end else begin
            if(gray_enable) begin
                gray_counter <= gray_counter + 1;
                dout3 <= {gray_counter[7],gray_counter[7:1]^gray_counter[6:0]};
            end
        end
    end
    
    //state logic
    always_ff @(posedge clk) begin
        if(srst) current_state <= init_state;
        else begin
            current_state <= next_state;
            
            case (current_state)
                init_state: y <= dout0;
                state1    : y <= dout1;
                state2    : y <= dout2;
                state3    : y <= dout3;
                default   : y <= 8'b00000000;
            endcase
        end
    end
    
    always_comb begin
        next_state = current_state;
        case(current_state)
            init_state: if(change_state) next_state = state1;
            state1    : if(change_state) next_state = state2;
            state2    : if(change_state) next_state = state3;
            state3    : if(change_state) next_state = init_state;
            default   : next_state = init_state;
        endcase
    end
    
    
endmodule
