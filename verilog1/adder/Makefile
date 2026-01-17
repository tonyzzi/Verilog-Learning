VERILOG = iverilog
TARGET = adder.vcd

$(TARGET) : adder.vvp
	vvp adder.vvp

adder.vvp: adder_tb.v adder.v
	$(VERILOG) -o adder.vvp adder_tb.v adder.v

clean:
	rm $(TARGET)