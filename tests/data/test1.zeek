##! A test script with all kinds of formatting errors.
##!
##! This Zeekygen head comment has multiple lines with more detail
##! about this module. It spans two lines.

@load foo/bar/baz.zeek    # A "preprocessor" line with comment
@load  blum/frub

@if(getenv("ZEEK_PORT") != "")
redef Broker::default_port =  to_port(getenv( "ZEEK_PORT"));
@endif

module  Test;
	
  export {
	# A regular comment
	type An::ID: enum {
	  ## A Zeekygen comment
		ENUM_VAL1, ##< A Zeekygen post-comment
		  ##< that continues on the next line
		## Anoter Zeekygen comment
		PRINTLOG
	};

        ## A constant.
        const a_constant=T  &redef ;

        ## An option.
        option an_option: table[ string,count ] of string=table() &redef;

        ## A function.
	global a_function : function(foo: BAR) :bool;

	 ## A lambda.
	const a_lambda: function( foo: string ) = function (foo: string) {
	} &redef;

}

function a_function ( a: int, b: count, another_argument_for_linewrapping: string ) : bool
	{
	if ( foo in bar )
		return somthing [ foo$bar ] (bar) ;
	else
		# A comment
		return T;

	if ( a_long_var_a in a_long_var_b && ( c in d || e in f ) &&
		a_long_var_g in a_long_var_h )
		{
		return somthing [ foo$bar ] (bar) ;
		}
	else
		{
		# A comment
		return T;
		}

	if ( | foo | > 0 )
		print "foo";
	else if  (bar && baz)
		print "bar";
	else if ( baz)
		print "baz";
	else
		print "Lovely patio around the fountain. " + "Spent a lovely lunch on the patio. " + "The menu was inviting and lots of things I wanted to order. " + "Ordered the Eutropia pizza thin crust-YUM! " + "Will go back the next time I'm in Berkeley.";
	}

function b_function ( a: int, b: count, another_argument_for_longer_linewrapping: string ) : string
	{
	call( # with an interrupting comment
		arg1, arg2);
	}

function blanklines() {

	foo();
	bar();
  
	# With one comment
	baz(); # and another comment

	# String-like directives:
	print @DIR,  @FILENAME;

}


