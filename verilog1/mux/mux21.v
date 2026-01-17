module mux21 (
    input a,      // 輸入 A
    input b,      // 輸入 B
    input sel,    // 選擇訊號 (0 選 a, 1 選 b)
    output y      // 輸出
);
    // 當 sel 為 0 時輸出 a，當 sel 為 1 時輸出 b
    assign y = (sel == 1'b0) ? a : b;

endmodule  