`timescale 1ns/1ps

module mux21_tb;
    reg a, b, sel;
    wire y;

    // 連接到你的設計
    mux21 uut (
        .a(a), .b(b), .sel(sel), .y(y)
    );

    initial begin
        $dumpfile("mux_wave.vcd");
        $dumpvars(0, mux21_tb);

        // 每隔 10ns 換一次訊號
        a = 1; b = 0; sel = 0; #10; // 此時 y 應該是 1
        a = 0; b = 0; sel = 0; #10; // 此時 y 應該變成 0 (跳動了!)
        a = 1; b = 1; sel = 1; #10; // 此時 y 應該變成 1 (又跳了!)
        
        $finish;
    end
endmodule