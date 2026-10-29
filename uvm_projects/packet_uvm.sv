`include "uvm_macros.svh"
import uvm_pkg::*;

class sample extends uvm_sequence_item;

  rand bit [7:0] wdata; //fields
  rand bit [2:0] address;
  bit done;
  bit [7:0] rdata;
  bit w_r;

  constraint wdata_con {
    wdata inside {[5:10]};
  }

  `uvm_object_utils_begin(sample) //class registration
    `uvm_field_int(wdata, UVM_ALL_ON) //field registration
    `uvm_field_int(rdata, UVM_ALL_ON)
    `uvm_field_int(address, UVM_ALL_ON)
    `uvm_field_int(done, UVM_ALL_ON)
    `uvm_field_int(w_r, UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "sample");
    super.new(name);
  endfunction

endclass


module example;

  sample sam;

  initial begin
    //handle=class_name::type_id::create("handle") //memory creation in UVM
    sam = sample::type_id::create("sam");

    repeat(5) begin
      sam.randomize();
      sam.print();
    end
  end

endmodule
