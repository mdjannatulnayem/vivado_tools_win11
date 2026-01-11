module tb_top;

    logic clk;
    logic rst_n;
    logic [7:0] a, b;
    logic [8:0] sum;

    adder dut (
        .clk (clk),
        .rst_n (rst_n),
        .a (a),
        .b (b),
        .sum (sum)
    );

    // Clock: 100MHz
    always #5 clk = ~clk;

    initial begin
        clk   = 0;
        rst_n = 0;
        a     = 0;
        b     = 0;

        #20;
        rst_n = 1;

        // Linear stimulus
        repeat (10) begin
            @(posedge clk);
            a = a + 8'd3;
            b = b + 8'd7;
        end

        #50;
        $finish;
    end

    // Monitor
    initial begin
        $display(" TIME    A     B     SUM");
        $monitor("%4t   %3d   %3d   %3d", $time, a, b, sum);
    end

endmodule
