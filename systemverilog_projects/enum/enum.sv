module enum_data_type;
  enum{Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sept,Oct,Nov,Dec}months;
    initial begin
	$display("first month of the year is:%s", months.first());
	$display("first month of the year is:%s", months.next());
	$display("first month of the year is:%s", months.next(2));
	$display("first month of the year is:%s", months.next(3));
	$display("first month of the year is:%s", months.next(4));
	$display("first month of the year is:%s", months.next(5));
	$display("first month of the year is:%s", months.next(6));
	$display("first month of the year is:%s", months.next(7));
	$display("first month of the year is:%s", months.next(8));
	$display("first month of the year is:%s", months.next(9));
	$display("first month of the year is:%s", months.next(10));
	$display("first month of the year is:%s", months.next(11));
    end
endmodule
