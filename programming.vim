function DisplayName(name)
	echom "Hello! My Name is:"
	echom a:name
endfunction


function Varg(...)
	echom a:0
	echom a:1
	echo a:000
endfunction


function Assig(foo)
	"" let a:foo = "String" Throw an error, becuse you can't reassing
	"variables
	let foo_tmp = a:foo
	let foo_tmp = "Yep"
	echom foo_tmp
endfunction

function Numbers()
	echom 100 | " -> 100
	echom 0xff | " -> 255 Hex
	echom 010 | " -> Octal
endfunction


function Float()
	echo 100.1 | " -> 100.1
	echo 5.12e+3 | " -> 512000.0
	echo 5.12e-3 | " -> 0.00512
	echo 2 * 2.0 | " -> 4.0	
endfunction

function Strings()
	echom "Hello"
	echom "Hello0" + "world"
	echom 10 + "10.10" | " -> 20 because Vim not coerce string to Floats!

endfunction

