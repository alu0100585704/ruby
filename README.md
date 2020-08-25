# LPP
Juan Siverio Rojas
Práctica 4: PRIMEROS PASOS CON RUBY
Respuestas desde la pregunta 34 hasta la 44

34: Diferencia entra "\t\n" y '\t\n'

En ruby las cadenas entre comillas dobles se pueden evaluar y en este caso generarían
una tabulación y después un retorno de carro y cambio de lína. Con las comillas simples
simplemente se interpretarían literalmente. 

37: Sin comillas o comillas dobles evalua el contenido interno

--4--\n--2--\n

38: Con comillas simple no evalua el contenido

"--\#{a}--\n--\#{b}--\n"

39:

 => "hello"
[2] pry(main)> s[0,2]
=> "he"
[3] pry(main)> s[-1,1]
=> "o"
[4] pry(main)> s[0,10]
=> "hello"
[5] pry(main)
>

40:

[5] pry(main)> g = "hello"
=> "hello"
[6] pry(main)> g << " world"
=> "hello world"

41:

[7] pry(main)> e = '.'*3
=> "..."

42:

[9] pry(main)> "#{a=a+1} "*3
=> "2 2 2 "

43: Crea un array con comillas simples

[10] pry(main)> %w[this is a test]
=> ["this", "is", "a", "test"]

44:

[13] pry(main)> %w[\t \n]
=> ["\\t", "\\n"]

45:

[14] pry(main)> %W[\t \n]
=> ["\t", "\n"]

46: Un array de tres elementos sin inicializar. o sea nulos

[15] pry(main)> nils= Array.new(3)
=> [nil, nil, nil]

47: Array de tres elementos inicializados con el valor cero

[16] pry(main)> zeros = Array.new(3,0)
=> [0, 0, 0]

48: Queda lo mismo, puesto que crea un array igual que el array x

[17] pry(main)> x =[[1,2],[3,4]]
=> [[1, 2], [3, 4]]
[18] pry(main)> b = Array.new(x)
=> [[1, 2], [3, 4 ]]

49:

[19] pry(main)> c = Array.new(3) { |i| 2*i }
=> [0, 2, 4]

50:
[22] pry(main)> a = ('a'..'e').to_a
=> ["a", "b", "c", "d", "e"]
[23] pry(main)> a[1,1]
=> ["b"]
[24] pry(main)> a[-2,2]
=> ["d", "e"]
[25] pry(main)> a[0,2]
=> ["a", "b"]
[26] pry(main)> a[0,1]
=> ["a"]
[27] pry(main)> a[-2,-1]
=> nil

51:

[31] pry(main)> a
=> ["a", "b", "c", "d", "e"]
[32] pry(main)> a[0,2] = %w{A B}
=> ["A", "B"]
[33] pry(main)> a
=> ["A", "B", "c", "d", "e"]
[34] pry(main)> a[2..5] = %w{C D E}
=> ["C", "D", "E"]
[35] pry(main)> A
NameError: uninitialized constant A
from (pry):32:in `__pry__'
[36] pry(main)> a
=> ["A", "B", "C", "D", "E"]
[37] pry(main)> a [0,0]
=> []
[38] pry(main)> a[0,0]
=> []
[39] pry(main)> a[0,0]=[1,2,3]
=> [1, 2, 3]
[40] pry(main)> a
=> [1, 2, 3, "A", "B", "C", "D", "E"]
[41] pry(main)> a[0,2]=[]
=> []
[42] pry(main)> a
=> [3, "A", "B", "C", "D", "E"]
[43] pry(main)> a[-1,1]=['Z']
=> ["Z"]
[44] pry(main)> a
=> [3, "A", "B", "C", "D", "Z"]
[45] pry(main)> a[-2,2] = nil
=> nil
[46] pry(main)> a
=> [3, "A", "B", "C", nil]
[47] pry(main)>

52:

[47] pry(main)> a = (1...4).to_a
=> [1, 2, 3]
[48] pry(main)> a = a +[4,5]
=> [1, 2, 3, 4, 5]
[49] pry(main)> a += [[6,7,8]]
=> [1, 2, 3, 4, 5, [6, 7, 8]]
[50] pry(main)> a = a +9
TypeError: no implicit conversion of Integer into Array
from (pry):47:in `+'

53:

[52] pry(main)> x = %w{a b c b a}
=> ["a", "b", "c", "b", "a"]
[53] pry(main)> x = x -%w{b c d}
=> ["a", "a"]

54:
[54] pry(main)> z= [0]*8
=> [0, 0, 0, 0, 0, 0, 0, 0]

55:

[55] pry(main)> a=[]
=> []
[56] pry(main)> a << 1
=> [1]
[57] pry(main)> a << 2 << 3
=> [1, 2, 3]
[58] pry(main)> a << [4,5,6]
=> [1, 2, 3, [4, 5, 6]]
[59] pry(main)> a.concat [7,8]
=> [1, 2, 3, [4, 5, 6], 7, 8]
[60] pry(main)>

56:
[60] pry(main)> a = [1,1,2,2,3,3,4]
=> [1, 1, 2, 2, 3, 3, 4]
[61] pry(main)> b=[5,5,4,4,3,3,2]
=> [5, 5, 4, 4, 3, 3, 2]
[62] pry(main)> c = a | b
=> [1, 2, 3, 4, 5]
[63] pry(main)> d = b | a
=> [5, 4, 3, 2, 1]
[64] pry(main)> e = a & b
=> [2, 3, 4]
[65] pry(main)> f = b & a
=> [4, 3, 2]

57:

[66] pry(main)> a = 1..10
=> 1..10
[67] pry(main)> a.class
=> Range
[68] pry(main)> a.to_a
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
[69] pry(main)> b= 1...10
=> 1...10
[70] pry(main)> b.to_a
=> [1, 2, 3, 4, 5, 6, 7, 8, 9]
[71] pry(main)> b.include? 10
=> false
[72] pry(main)> b.step(2) {|x| print "#{x} " }
1 3 5 7 9 => 1...10
[73] pry(main)> 1..3.to_a
NoMethodError: undefined method `to_a' for 3:Integer
Did you mean?  to_c
               to_r
               to_f
               to_i
               to_s
from (pry):70:in `__pry__'

58:
[74] pry(main)> r = 0...100
=> 0...100
[75] pry(main)> r.member? 50
=> true
[76] pry(main)> r.include? 99.9
=> true
[77] pry(main)> r.member? 99.9
=> true

59:
[80] pry(main)> puts "hello" if 0
hello
=> nil
[81] pry(main)> puts "hello" if nil
=> nil
[82] pry(main)> puts "hello" if ""
(pry):79: warning: string literal in condition
hello
=> nil

60:

[83] pry(main)> x= :sym
=> :sym
[84] pry(main)> x.class
=> Symbol
[85] pry(main)> x == 'sym'
=> false
[86] pry(main)> x == :sym
=> true
[87] pry(main)> z= :'a long symbol'
=> :"a long symbol"
[88] pry(main)> z.class
=> Symbol
[89] pry(main)> x == 'sym'.to_sym
=> true
[90] pry(main)> x.to_s=='sysm'
=> false
[91] pry(main)> x.to_s=='sym'
=> true

61:

[92] pry(main)> s="Ruby"
=> "Ruby"
[93] pry(main)> t =s
=> "Ruby"
[94] pry(main)> t[-1] = ""
=> ""
[95] pry(main)> print s
Rub=> nil
[96] pry(main)> t="Java"
=> "Java"
[97] pry(main)> print s, t
RubJava=> nil
[98] pry(main)> print s
Rub=> nil
[99] pry(main)> print t
Java=> nil

62:

[100] pry(main)> "%d %s" % [3, "rubies"]
=> "3 rubies"

63:

[106] pry(main)> x,y=4,5
=> [4, 5]
[107] pry(main)> z=x > y ? x : y
=> 5
[108] pry(main)> x,y,z=[1,2,3]
=> [1, 2, 3]
[109] pry(main)> puts x
1
=> nil
[110] pry(main)> puts y
2
=> nil
[111] pry(main)> puts z
3

64:

[112] pry(main)> x = { :a => 1, :b => 2 }
=> {:a=>1, :b=>2}
[113] pry(main)> x.keys
=> [:a, :b]
[114] pry(main)> x.values
=> [1, 2]
[115] pry(main)> x[:c] = 3
=> 3
[116] pry(main)> x
=> {:a=>1, :b=>2, :c=>3}
[117] pry(main)> x.delete('a')
=> nil
[118] pry(main)> x
=> {:a=>1, :b=>2, :c=>3}
[119] pry(main)> x.delete(':a')
=> nil
[120] pry(main)> x
=> {:a=>1, :b=>2, :c=>3}
[121] pry(main)> x.delete(':a')
=> nil
[122] pry(main)> x.delete(:a)
=> 1
[123] pry(main)> x
=> {:b=>2, :c=>3}
[124] pry(main)> x={:a => 1, :b=>2, :c=> 4}
=> {:a=>1, :b=>2, :c=>4}
[125] pry(main)> x.delete_if { @k}
=> {:a=>1, :b=>2, :c=>4}
[126] pry(main)> x.delete_if { |k,v| v % 2 == 0 }
=> {:a=>1}
[127] pry(main)> x
=> {:a=>1}

65: Ninguna diferencia

[128] pry(main)> counts = Hash.new(0)
=> {}
[129] pry(main)> counts.class
=> Hash
[130] pry(main)> counts2 = {}
=> {}
[131] pry(main)> counts2.class
=> Hash

66:

[134] pry(main)> 'hello world, hello LPP'.scan /\w+/
=> ["hello", "world", "hello", "LPP"]
