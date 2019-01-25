type token =
  | IDENT of (Dict.ident)
  | MULOP of (Optree.op)
  | ADDOP of (Optree.op)
  | RELOP of (Optree.op)
  | NUMBER of (int)
  | CHAR of (char)
  | STRING of (Optree.symbol * int)
  | SEMI
  | DOT
  | COLON
  | LPAR
  | RPAR
  | COMMA
  | SUB
  | BUS
  | EQUAL
  | MINUS
  | ASSIGN
  | VBAR
  | ARROW
  | BADTOK
  | IMPOSSIBLE
  | ARRAY
  | BEGIN
  | CONST
  | CONTINUE
  | DO
  | ELSE
  | END
  | IF
  | OF
  | PROC
  | RECORD
  | RETURN
  | THEN
  | TO
  | TYPE
  | VAR
  | WHILE
  | NOT
  | POINTER
  | NIL
  | REPEAT
  | UNTIL
  | FOR
  | ELSIF
  | CASE

open Parsing;;
let _ = parse_error;;
# 5 "parser.mly"
open Optree
open Dict
open Tree
# 31 "parser.mly"
let const n t = makeExpr (Constant (n, t))
# 59 "parser.ml"
let yytransl_const = [|
  264 (* SEMI *);
  265 (* DOT *);
  266 (* COLON *);
  267 (* LPAR *);
  268 (* RPAR *);
  269 (* COMMA *);
  270 (* SUB *);
  271 (* BUS *);
  272 (* EQUAL *);
  273 (* MINUS *);
  274 (* ASSIGN *);
  275 (* VBAR *);
  276 (* ARROW *);
  277 (* BADTOK *);
  278 (* IMPOSSIBLE *);
  279 (* ARRAY *);
  280 (* BEGIN *);
  281 (* CONST *);
  282 (* CONTINUE *);
  283 (* DO *);
  284 (* ELSE *);
  285 (* END *);
  286 (* IF *);
  287 (* OF *);
  288 (* PROC *);
  289 (* RECORD *);
  290 (* RETURN *);
  291 (* THEN *);
  292 (* TO *);
  293 (* TYPE *);
  294 (* VAR *);
  295 (* WHILE *);
  296 (* NOT *);
  297 (* POINTER *);
  298 (* NIL *);
  299 (* REPEAT *);
  300 (* UNTIL *);
  301 (* FOR *);
  302 (* ELSIF *);
  303 (* CASE *);
    0|]

let yytransl_block = [|
  257 (* IDENT *);
  258 (* MULOP *);
  259 (* ADDOP *);
  260 (* RELOP *);
  261 (* NUMBER *);
  262 (* CHAR *);
  263 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\003\000\003\000\005\000\005\000\005\000\005\000\
\006\000\006\000\010\000\009\000\009\000\012\000\007\000\007\000\
\014\000\008\000\016\000\018\000\018\000\020\000\020\000\021\000\
\021\000\021\000\019\000\019\000\004\000\022\000\022\000\023\000\
\023\000\024\000\025\000\025\000\025\000\025\000\025\000\025\000\
\025\000\025\000\025\000\025\000\029\000\029\000\029\000\030\000\
\030\000\032\000\031\000\031\000\015\000\015\000\028\000\028\000\
\011\000\011\000\011\000\033\000\033\000\033\000\034\000\034\000\
\035\000\035\000\035\000\035\000\035\000\035\000\035\000\035\000\
\035\000\027\000\027\000\036\000\036\000\026\000\026\000\026\000\
\026\000\013\000\013\000\013\000\013\000\037\000\037\000\038\000\
\039\000\039\000\017\000\000\000"

let yylen = "\002\000\
\002\000\004\000\000\000\002\000\002\000\002\000\001\000\002\000\
\001\000\002\000\004\000\001\000\002\000\004\000\001\000\002\000\
\004\000\004\000\004\000\002\000\003\000\001\000\003\000\003\000\
\004\000\001\000\000\000\002\000\001\000\001\000\003\000\002\000\
\001\000\000\000\000\000\001\000\003\000\002\000\002\000\006\000\
\005\000\004\000\009\000\006\000\000\000\002\000\006\000\001\000\
\003\000\003\000\000\000\002\000\001\000\003\000\000\000\001\000\
\001\000\003\000\003\000\001\000\003\000\003\000\001\000\003\000\
\001\000\001\000\001\000\001\000\001\000\002\000\002\000\002\000\
\003\000\002\000\003\000\001\000\003\000\001\000\004\000\003\000\
\002\000\001\000\004\000\003\000\003\000\002\000\003\000\003\000\
\001\000\000\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\092\000\000\000\
\000\000\000\000\007\000\000\000\000\000\005\000\000\000\091\000\
\000\000\000\000\008\000\000\000\000\000\006\000\000\000\000\000\
\001\000\000\000\004\000\000\000\000\000\010\000\000\000\000\000\
\000\000\013\000\000\000\016\000\000\000\033\000\000\000\029\000\
\000\000\000\000\000\000\066\000\068\000\067\000\000\000\000\000\
\000\000\069\000\000\000\000\000\000\000\000\000\000\000\063\000\
\020\000\000\000\000\000\026\000\000\000\000\000\000\000\019\000\
\000\000\000\000\000\000\000\000\082\000\054\000\000\000\002\000\
\000\000\036\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\032\000\000\000\018\000\000\000\072\000\071\000\000\000\
\011\000\000\000\000\000\070\000\000\000\000\000\081\000\000\000\
\000\000\000\000\000\000\000\000\021\000\000\000\028\000\000\000\
\000\000\000\000\000\000\000\000\014\000\017\000\031\000\000\000\
\000\000\039\000\000\000\000\000\000\000\000\000\038\000\000\000\
\073\000\000\000\000\000\074\000\000\000\000\000\080\000\000\000\
\000\000\000\000\064\000\000\000\024\000\023\000\000\000\000\000\
\084\000\000\000\086\000\085\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\075\000\079\000\025\000\083\000\088\000\
\087\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\077\000\000\000\034\000\000\000\041\000\000\000\000\000\000\000\
\000\000\000\000\046\000\000\000\040\000\000\000\050\000\052\000\
\044\000\049\000\000\000\000\000\000\000\000\000\000\000\043\000\
\047\000"

let yydgoto = "\002\000\
\007\000\008\000\009\000\039\000\010\000\014\000\022\000\011\000\
\019\000\015\000\125\000\020\000\068\000\023\000\024\000\012\000\
\052\000\032\000\064\000\061\000\062\000\040\000\041\000\042\000\
\082\000\053\000\092\000\114\000\164\000\159\000\169\000\160\000\
\054\000\055\000\056\000\126\000\106\000\107\000\139\000"

let yysindex = "\013\000\
\164\255\000\000\030\255\055\255\079\255\102\255\000\000\087\255\
\084\255\164\255\000\000\104\255\105\255\000\000\030\255\000\000\
\112\255\115\255\000\000\079\255\121\255\000\000\102\255\126\255\
\000\000\129\255\000\000\164\255\078\255\000\000\011\255\142\255\
\012\255\000\000\102\255\000\000\012\255\000\000\124\255\000\000\
\146\255\189\255\148\255\000\000\000\000\000\000\078\255\078\255\
\078\255\000\000\122\255\147\255\224\000\002\255\155\255\000\000\
\000\000\102\255\162\255\000\000\163\255\166\255\012\255\000\000\
\078\255\102\255\140\255\172\255\000\000\000\000\173\255\000\000\
\129\255\000\000\078\255\078\255\078\255\129\255\055\255\078\255\
\147\255\000\000\154\000\000\000\175\255\000\000\000\000\078\255\
\000\000\078\255\010\255\000\000\055\255\078\255\000\000\078\255\
\078\255\078\255\194\255\012\255\000\000\023\255\000\000\038\255\
\196\255\178\255\184\255\012\255\000\000\000\000\000\000\024\255\
\022\255\000\000\095\255\165\255\206\255\088\255\000\000\078\255\
\000\000\002\255\002\255\000\000\236\255\198\255\000\000\066\255\
\155\255\155\255\000\000\012\255\000\000\000\000\012\255\012\255\
\000\000\102\255\000\000\000\000\129\255\129\255\078\255\078\255\
\078\255\022\255\078\255\000\000\000\000\000\000\000\000\000\000\
\000\000\230\254\200\255\022\255\021\255\201\255\197\255\208\255\
\000\000\129\255\000\000\204\255\000\000\078\255\129\255\129\255\
\215\255\078\255\000\000\078\255\000\000\167\255\000\000\000\000\
\000\000\000\000\028\255\129\255\129\255\218\255\230\254\000\000\
\000\000"

let yyrindex = "\000\000\
\217\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\217\255\000\000\000\000\000\000\000\000\248\000\000\000\
\000\000\000\000\000\000\007\001\220\255\000\000\009\001\000\000\
\000\000\192\255\000\000\217\255\000\000\000\000\000\000\063\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\081\255\120\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\002\000\037\000\177\000\072\000\000\000\
\000\000\000\000\000\000\000\000\000\000\233\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\116\255\000\000\000\000\235\255\000\000\212\255\000\000\000\000\
\189\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\219\255\000\000\000\000\000\000\000\000\000\000\
\050\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\212\000\247\000\000\000\238\255\000\000\000\000\000\000\
\107\000\142\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\224\255\000\000\000\000\139\255\192\255\000\000\000\000\
\000\000\085\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\229\255\000\000\120\000\000\000\000\000\240\255\044\255\
\000\000\192\255\000\000\000\000\000\000\000\000\169\255\192\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\192\255\139\255\000\000\229\255\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\237\000\010\001\182\255\000\000\011\001\001\001\000\000\
\008\001\000\000\227\255\000\000\222\255\000\000\231\255\232\255\
\253\255\000\000\000\000\181\000\000\000\215\000\000\000\127\000\
\000\000\249\000\211\000\000\000\115\000\129\000\000\000\000\000\
\230\255\246\255\216\255\153\000\169\000\000\000\000\000"

let yytablesize = 559
let yytable = "\051\000\
\017\000\162\000\071\000\116\000\096\000\059\000\060\000\086\000\
\087\000\070\000\016\000\021\000\016\000\001\000\044\000\045\000\
\046\000\085\000\097\000\163\000\047\000\124\000\057\000\021\000\
\088\000\088\000\048\000\088\000\103\000\069\000\013\000\088\000\
\099\000\069\000\065\000\104\000\090\000\090\000\081\000\090\000\
\105\000\088\000\004\000\090\000\066\000\112\000\113\000\115\000\
\058\000\049\000\118\000\050\000\067\000\090\000\004\000\016\000\
\166\000\131\000\141\000\069\000\058\000\122\000\181\000\123\000\
\128\000\133\000\154\000\155\000\135\000\088\000\027\000\048\000\
\048\000\140\000\027\000\117\000\059\000\060\000\016\000\018\000\
\149\000\090\000\044\000\045\000\046\000\129\000\130\000\171\000\
\047\000\127\000\146\000\088\000\175\000\176\000\048\000\025\000\
\069\000\150\000\088\000\030\000\151\000\152\000\021\000\090\000\
\069\000\182\000\183\000\026\000\030\000\030\000\090\000\028\000\
\105\000\156\000\157\000\158\000\034\000\049\000\145\000\050\000\
\029\000\142\000\031\000\034\000\030\000\088\000\030\000\035\000\
\069\000\089\000\033\000\069\000\069\000\035\000\034\000\037\000\
\174\000\090\000\035\000\034\000\158\000\034\000\179\000\034\000\
\034\000\034\000\034\000\035\000\035\000\034\000\038\000\063\000\
\072\000\073\000\034\000\084\000\098\000\091\000\034\000\034\000\
\034\000\034\000\034\000\035\000\034\000\035\000\034\000\034\000\
\034\000\034\000\088\000\100\000\034\000\102\000\101\000\108\000\
\034\000\034\000\088\000\109\000\110\000\034\000\090\000\034\000\
\034\000\034\000\121\000\034\000\003\000\016\000\090\000\138\000\
\034\000\180\000\034\000\004\000\034\000\034\000\034\000\034\000\
\005\000\006\000\034\000\132\000\088\000\136\000\137\000\034\000\
\143\000\148\000\167\000\034\000\034\000\034\000\074\000\034\000\
\090\000\034\000\075\000\034\000\034\000\034\000\076\000\144\000\
\168\000\034\000\170\000\077\000\165\000\053\000\034\000\078\000\
\173\000\079\000\034\000\080\000\034\000\034\000\034\000\088\000\
\003\000\034\000\055\000\177\000\022\000\034\000\184\000\090\000\
\147\000\076\000\034\000\090\000\089\000\055\000\034\000\034\000\
\034\000\045\000\034\000\078\000\078\000\078\000\055\000\055\000\
\043\000\078\000\078\000\078\000\051\000\078\000\078\000\078\000\
\078\000\078\000\078\000\027\000\078\000\078\000\055\000\036\000\
\055\000\030\000\134\000\034\000\078\000\078\000\078\000\111\000\
\078\000\172\000\083\000\119\000\078\000\078\000\065\000\065\000\
\065\000\185\000\178\000\161\000\065\000\078\000\065\000\078\000\
\065\000\065\000\153\000\065\000\065\000\065\000\000\000\065\000\
\000\000\056\000\000\000\000\000\000\000\000\000\000\000\065\000\
\065\000\065\000\000\000\065\000\056\000\000\000\000\000\065\000\
\065\000\000\000\060\000\060\000\000\000\056\000\056\000\060\000\
\065\000\060\000\065\000\060\000\060\000\000\000\060\000\060\000\
\060\000\000\000\060\000\000\000\037\000\056\000\000\000\056\000\
\000\000\000\000\060\000\060\000\060\000\000\000\060\000\037\000\
\000\000\000\000\060\000\060\000\000\000\061\000\061\000\000\000\
\037\000\037\000\061\000\060\000\061\000\060\000\061\000\061\000\
\000\000\061\000\061\000\061\000\000\000\061\000\000\000\042\000\
\037\000\000\000\037\000\000\000\000\000\061\000\061\000\061\000\
\000\000\061\000\042\000\000\000\000\000\061\000\061\000\000\000\
\062\000\062\000\000\000\042\000\042\000\062\000\061\000\062\000\
\061\000\062\000\062\000\000\000\062\000\062\000\062\000\000\000\
\062\000\000\000\093\000\042\000\000\000\042\000\000\000\094\000\
\062\000\062\000\062\000\120\000\062\000\095\000\000\000\000\000\
\062\000\062\000\000\000\000\000\057\000\000\000\000\000\000\000\
\057\000\062\000\057\000\062\000\057\000\057\000\000\000\057\000\
\057\000\000\000\000\000\057\000\000\000\078\000\000\000\000\000\
\000\000\000\000\078\000\057\000\057\000\057\000\078\000\057\000\
\078\000\000\000\000\000\057\000\057\000\000\000\000\000\058\000\
\000\000\000\000\000\000\058\000\057\000\058\000\057\000\058\000\
\058\000\000\000\058\000\058\000\000\000\000\000\058\000\000\000\
\093\000\000\000\000\000\000\000\000\000\094\000\058\000\058\000\
\058\000\000\000\058\000\095\000\000\000\000\000\058\000\058\000\
\000\000\000\000\059\000\000\000\000\000\000\000\059\000\058\000\
\059\000\058\000\059\000\059\000\000\000\059\000\059\000\000\000\
\000\000\059\000\000\000\000\000\000\000\000\000\000\000\009\000\
\009\000\059\000\059\000\059\000\000\000\059\000\000\000\009\000\
\000\000\059\000\059\000\000\000\009\000\009\000\012\000\012\000\
\015\000\015\000\059\000\000\000\059\000\000\000\012\000\000\000\
\015\000\000\000\000\000\012\000\012\000\015\000\015\000"

let yycheck = "\029\000\
\004\000\028\001\037\000\078\000\003\001\031\000\031\000\048\000\
\049\000\035\000\001\001\001\001\001\001\001\000\005\001\006\001\
\007\001\047\000\017\001\046\001\011\001\012\001\012\001\001\001\
\004\001\004\001\017\001\004\001\063\000\033\000\001\001\004\001\
\058\000\037\000\023\001\065\000\016\001\016\001\042\000\016\001\
\066\000\004\001\032\001\016\001\033\001\075\000\076\000\077\000\
\038\001\040\001\080\000\042\001\041\001\016\001\032\001\001\001\
\036\001\098\000\035\001\063\000\038\001\088\000\035\001\090\000\
\094\000\100\000\141\000\142\000\031\001\004\001\008\001\028\001\
\029\001\108\000\012\001\079\000\102\000\102\000\001\001\001\001\
\015\001\016\001\005\001\006\001\007\001\096\000\097\000\162\000\
\011\001\093\000\120\000\004\001\167\000\168\000\017\001\009\001\
\100\000\132\000\004\001\019\001\135\000\136\000\001\001\016\001\
\108\000\180\000\181\000\024\001\028\001\029\001\016\001\008\001\
\138\000\143\000\144\000\145\000\001\001\040\001\031\001\042\001\
\016\001\027\001\011\001\008\001\044\001\004\001\046\001\008\001\
\132\000\008\001\016\001\135\000\136\000\013\001\019\001\010\001\
\166\000\016\001\019\001\001\001\170\000\026\001\172\000\028\001\
\029\001\030\001\008\001\028\001\029\001\034\001\022\001\010\001\
\029\001\008\001\039\001\008\001\002\001\011\001\043\001\044\001\
\045\001\046\001\047\001\044\001\026\001\046\001\028\001\029\001\
\030\001\001\001\004\001\010\001\034\001\008\001\012\001\036\001\
\008\001\039\001\004\001\008\001\008\001\043\001\016\001\045\001\
\046\001\047\001\012\001\019\001\025\001\001\001\016\001\008\001\
\001\001\027\001\026\001\032\001\028\001\029\001\030\001\008\001\
\037\001\038\001\034\001\010\001\004\001\010\001\029\001\039\001\
\044\001\012\001\010\001\043\001\001\001\045\001\026\001\047\001\
\016\001\026\001\030\001\008\001\029\001\030\001\034\001\018\001\
\028\001\034\001\019\001\039\001\029\001\010\001\039\001\043\001\
\029\001\045\001\043\001\047\001\045\001\026\001\047\001\004\001\
\024\001\030\001\008\001\029\001\012\001\034\001\029\001\029\001\
\013\001\012\001\039\001\016\001\029\001\019\001\043\001\044\001\
\045\001\029\001\047\001\002\001\003\001\004\001\028\001\029\001\
\028\000\008\001\009\001\010\001\029\001\012\001\013\001\014\001\
\015\001\016\001\017\001\010\000\019\001\020\001\044\001\023\000\
\046\001\015\000\102\000\020\000\027\001\028\001\029\001\073\000\
\031\001\163\000\042\000\081\000\035\001\036\001\002\001\003\001\
\004\001\183\000\170\000\147\000\008\001\044\001\010\001\046\001\
\012\001\013\001\138\000\015\001\016\001\017\001\255\255\019\001\
\255\255\008\001\255\255\255\255\255\255\255\255\255\255\027\001\
\028\001\029\001\255\255\031\001\019\001\255\255\255\255\035\001\
\036\001\255\255\003\001\004\001\255\255\028\001\029\001\008\001\
\044\001\010\001\046\001\012\001\013\001\255\255\015\001\016\001\
\017\001\255\255\019\001\255\255\008\001\044\001\255\255\046\001\
\255\255\255\255\027\001\028\001\029\001\255\255\031\001\019\001\
\255\255\255\255\035\001\036\001\255\255\003\001\004\001\255\255\
\028\001\029\001\008\001\044\001\010\001\046\001\012\001\013\001\
\255\255\015\001\016\001\017\001\255\255\019\001\255\255\008\001\
\044\001\255\255\046\001\255\255\255\255\027\001\028\001\029\001\
\255\255\031\001\019\001\255\255\255\255\035\001\036\001\255\255\
\003\001\004\001\255\255\028\001\029\001\008\001\044\001\010\001\
\046\001\012\001\013\001\255\255\015\001\016\001\017\001\255\255\
\019\001\255\255\009\001\044\001\255\255\046\001\255\255\014\001\
\027\001\028\001\029\001\018\001\031\001\020\001\255\255\255\255\
\035\001\036\001\255\255\255\255\004\001\255\255\255\255\255\255\
\008\001\044\001\010\001\046\001\012\001\013\001\255\255\015\001\
\016\001\255\255\255\255\019\001\255\255\009\001\255\255\255\255\
\255\255\255\255\014\001\027\001\028\001\029\001\018\001\031\001\
\020\001\255\255\255\255\035\001\036\001\255\255\255\255\004\001\
\255\255\255\255\255\255\008\001\044\001\010\001\046\001\012\001\
\013\001\255\255\015\001\016\001\255\255\255\255\019\001\255\255\
\009\001\255\255\255\255\255\255\255\255\014\001\027\001\028\001\
\029\001\255\255\031\001\020\001\255\255\255\255\035\001\036\001\
\255\255\255\255\004\001\255\255\255\255\255\255\008\001\044\001\
\010\001\046\001\012\001\013\001\255\255\015\001\016\001\255\255\
\255\255\019\001\255\255\255\255\255\255\255\255\255\255\024\001\
\025\001\027\001\028\001\029\001\255\255\031\001\255\255\032\001\
\255\255\035\001\036\001\255\255\037\001\038\001\024\001\025\001\
\024\001\025\001\044\001\255\255\046\001\255\255\032\001\255\255\
\032\001\255\255\255\255\037\001\038\001\037\001\038\001"

let yynames_const = "\
  SEMI\000\
  DOT\000\
  COLON\000\
  LPAR\000\
  RPAR\000\
  COMMA\000\
  SUB\000\
  BUS\000\
  EQUAL\000\
  MINUS\000\
  ASSIGN\000\
  VBAR\000\
  ARROW\000\
  BADTOK\000\
  IMPOSSIBLE\000\
  ARRAY\000\
  BEGIN\000\
  CONST\000\
  CONTINUE\000\
  DO\000\
  ELSE\000\
  END\000\
  IF\000\
  OF\000\
  PROC\000\
  RECORD\000\
  RETURN\000\
  THEN\000\
  TO\000\
  TYPE\000\
  VAR\000\
  WHILE\000\
  NOT\000\
  POINTER\000\
  NIL\000\
  REPEAT\000\
  UNTIL\000\
  FOR\000\
  ELSIF\000\
  CASE\000\
  "

let yynames_block = "\
  IDENT\000\
  MULOP\000\
  ADDOP\000\
  RELOP\000\
  NUMBER\000\
  CHAR\000\
  STRING\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'block) in
    Obj.repr(
# 37 "parser.mly"
                                        ( Prog (_1, ref []) )
# 438 "parser.ml"
               : Tree.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'decl_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 40 "parser.mly"
                                        ( makeBlock (_1, _3) )
# 446 "parser.ml"
               : 'block))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "parser.mly"
                                        ( [] )
# 452 "parser.ml"
               : 'decl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'decl_list) in
    Obj.repr(
# 44 "parser.mly"
                                        ( _1 @ _2 )
# 460 "parser.ml"
               : 'decl_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'const_decls) in
    Obj.repr(
# 47 "parser.mly"
                                        ( _2 )
# 467 "parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'var_decls) in
    Obj.repr(
# 48 "parser.mly"
                                        ( _2 )
# 474 "parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'proc_decl) in
    Obj.repr(
# 49 "parser.mly"
                                        ( [_1] )
# 481 "parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'type_decls) in
    Obj.repr(
# 50 "parser.mly"
                                        ( [TypeDecl _2] )
# 488 "parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'const_decl) in
    Obj.repr(
# 53 "parser.mly"
                                        ( [_1] )
# 495 "parser.ml"
               : 'const_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'const_decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'const_decls) in
    Obj.repr(
# 54 "parser.mly"
                                        ( _1 :: _2 )
# 503 "parser.ml"
               : 'const_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : Dict.ident) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 57 "parser.mly"
                                        ( ConstDecl (_1, _3) )
# 511 "parser.ml"
               : 'const_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'type_decl) in
    Obj.repr(
# 60 "parser.mly"
                                        ( [_1] )
# 518 "parser.ml"
               : 'type_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'type_decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'type_decls) in
    Obj.repr(
# 61 "parser.mly"
                                        ( _1 :: _2 )
# 526 "parser.ml"
               : 'type_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : Dict.ident) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typexpr) in
    Obj.repr(
# 64 "parser.mly"
                                        ( (_1, _3) )
# 534 "parser.ml"
               : 'type_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'var_decl) in
    Obj.repr(
# 67 "parser.mly"
                                        ( [_1] )
# 541 "parser.ml"
               : 'var_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'var_decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'var_decls) in
    Obj.repr(
# 68 "parser.mly"
                                        ( _1 :: _2 )
# 549 "parser.ml"
               : 'var_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'ident_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typexpr) in
    Obj.repr(
# 71 "parser.mly"
                                        ( VarDecl (VarDef, _1, _3) )
# 557 "parser.ml"
               : 'var_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'proc_heading) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'block) in
    Obj.repr(
# 74 "parser.mly"
                                        ( ProcDecl (_1, _3) )
# 565 "parser.ml"
               : 'proc_decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'name) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'params) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'return_type) in
    Obj.repr(
# 77 "parser.mly"
                                        ( Heading (_2, _3, _4) )
# 574 "parser.ml"
               : 'proc_heading))
; (fun __caml_parser_env ->
    Obj.repr(
# 80 "parser.mly"
                                        ( [] )
# 580 "parser.ml"
               : 'params))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'formal_decls) in
    Obj.repr(
# 81 "parser.mly"
                                        ( _2 )
# 587 "parser.ml"
               : 'params))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_decl) in
    Obj.repr(
# 84 "parser.mly"
                                        ( [_1] )
# 594 "parser.ml"
               : 'formal_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'formal_decl) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'formal_decls) in
    Obj.repr(
# 85 "parser.mly"
                                        ( _1 :: _3 )
# 602 "parser.ml"
               : 'formal_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ident_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 88 "parser.mly"
                                        ( VarDecl (CParamDef, _1, _3) )
# 610 "parser.ml"
               : 'formal_decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'ident_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 89 "parser.mly"
                                        ( VarDecl (VParamDef, _2, _4) )
# 618 "parser.ml"
               : 'formal_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'proc_heading) in
    Obj.repr(
# 90 "parser.mly"
                                        ( PParamDecl _1 )
# 625 "parser.ml"
               : 'formal_decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 93 "parser.mly"
                                        ( None )
# 631 "parser.ml"
               : 'return_type))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 94 "parser.mly"
                                        ( Some _2 )
# 638 "parser.ml"
               : 'return_type))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmt_list) in
    Obj.repr(
# 97 "parser.mly"
                                        ( seq _1 )
# 645 "parser.ml"
               : 'stmts))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 100 "parser.mly"
                                        ( [_1] )
# 652 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'stmt_list) in
    Obj.repr(
# 101 "parser.mly"
                                        ( _1 :: _3 )
# 660 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'line) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt1) in
    Obj.repr(
# 104 "parser.mly"
                                        ( makeStmt (_2, _1) )
# 668 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 106 "parser.mly"
                                        ( failwith "impossible" )
# 674 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 109 "parser.mly"
                                        ( !Lexer.lineno )
# 680 "parser.ml"
               : 'line))
; (fun __caml_parser_env ->
    Obj.repr(
# 112 "parser.mly"
                                        ( Skip )
# 686 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    Obj.repr(
# 113 "parser.mly"
                (Continue)
# 692 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'variable) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 114 "parser.mly"
                                        ( Assign (_1, _3) )
# 700 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'name) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'actuals) in
    Obj.repr(
# 115 "parser.mly"
                                        ( ProcCall (_1, _2) )
# 708 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr_opt) in
    Obj.repr(
# 116 "parser.mly"
                                        ( Return _2 )
# 715 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'stmts) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'elses) in
    Obj.repr(
# 117 "parser.mly"
                                        ( IfStmt (_2, _4, _5) )
# 724 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 118 "parser.mly"
                                        ( WhileStmt (_2, _4) )
# 732 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'stmts) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 119 "parser.mly"
                                        ( RepeatStmt (_2, _4) )
# 740 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 7 : 'name) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 121 "parser.mly"
                                        ( let v = makeExpr (Variable _2) in
                                          ForStmt (v, _4, _6, _8, ref None) )
# 751 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'arms) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'else_part) in
    Obj.repr(
# 123 "parser.mly"
                                        ( CaseStmt (_2, _4, _5) )
# 760 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    Obj.repr(
# 126 "parser.mly"
                                        ( makeStmt (Skip, 0) )
# 766 "parser.ml"
               : 'elses))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmts) in
    Obj.repr(
# 127 "parser.mly"
                                        ( _2 )
# 773 "parser.ml"
               : 'elses))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'line) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'elses) in
    Obj.repr(
# 128 "parser.mly"
                                        ( makeStmt (IfStmt (_3, _5, _6), _2) )
# 783 "parser.ml"
               : 'elses))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'arm) in
    Obj.repr(
# 131 "parser.mly"
                                        ( [_1] )
# 790 "parser.ml"
               : 'arms))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'arm) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'arms) in
    Obj.repr(
# 132 "parser.mly"
                                        ( _1 :: _3 )
# 798 "parser.ml"
               : 'arms))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'stmts) in
    Obj.repr(
# 135 "parser.mly"
                                        ( (_1, _3) )
# 806 "parser.ml"
               : 'arm))
; (fun __caml_parser_env ->
    Obj.repr(
# 138 "parser.mly"
                                        ( makeStmt (Skip, 0) )
# 812 "parser.ml"
               : 'else_part))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmts) in
    Obj.repr(
# 139 "parser.mly"
                                        ( _2 )
# 819 "parser.ml"
               : 'else_part))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Dict.ident) in
    Obj.repr(
# 142 "parser.mly"
                                        ( [_1] )
# 826 "parser.ml"
               : 'ident_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Dict.ident) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'ident_list) in
    Obj.repr(
# 143 "parser.mly"
                                        ( _1 :: _3 )
# 834 "parser.ml"
               : 'ident_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 146 "parser.mly"
                                        ( None )
# 840 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 147 "parser.mly"
                                        ( Some _1 )
# 847 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple) in
    Obj.repr(
# 150 "parser.mly"
                                        ( _1 )
# 854 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Optree.op) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'simple) in
    Obj.repr(
# 151 "parser.mly"
                                        ( makeExpr (Binop (_2, _1, _3)) )
# 863 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'simple) in
    Obj.repr(
# 152 "parser.mly"
                                        ( makeExpr (Binop (Eq, _1, _3)) )
# 871 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 155 "parser.mly"
                                        ( _1 )
# 878 "parser.ml"
               : 'simple))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'simple) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Optree.op) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 156 "parser.mly"
                                        ( makeExpr (Binop (_2, _1, _3)) )
# 887 "parser.ml"
               : 'simple))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'simple) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 157 "parser.mly"
                                        ( makeExpr (Binop (Minus, _1, _3)) )
# 895 "parser.ml"
               : 'simple))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 160 "parser.mly"
                                        ( _1 )
# 902 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Optree.op) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 161 "parser.mly"
                                        ( makeExpr (Binop (_2, _1, _3)) )
# 911 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'variable) in
    Obj.repr(
# 164 "parser.mly"
                                        ( _1 )
# 918 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 165 "parser.mly"
                                        ( const _1 integer )
# 925 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Optree.symbol * int) in
    Obj.repr(
# 166 "parser.mly"
                                        ( let (lab, len) = _1 in
                                          makeExpr (String (lab, len)) )
# 933 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 168 "parser.mly"
                                        ( const (int_of_char _1) character )
# 940 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    Obj.repr(
# 169 "parser.mly"
                                        ( makeExpr Nil )
# 946 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'name) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'actuals) in
    Obj.repr(
# 170 "parser.mly"
                                        ( makeExpr (FuncCall (_1, _2)) )
# 954 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 171 "parser.mly"
                                        ( makeExpr (Monop (Not, _2)) )
# 961 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 172 "parser.mly"
                                        ( makeExpr (Monop (Uminus, _2)) )
# 968 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 173 "parser.mly"
                                        ( _2 )
# 975 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    Obj.repr(
# 176 "parser.mly"
                                        ( [] )
# 981 "parser.ml"
               : 'actuals))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr_list) in
    Obj.repr(
# 177 "parser.mly"
                                        ( _2 )
# 988 "parser.ml"
               : 'actuals))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 180 "parser.mly"
                                        ( [_1] )
# 995 "parser.ml"
               : 'expr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr_list) in
    Obj.repr(
# 181 "parser.mly"
                                        ( _1 :: _3 )
# 1003 "parser.ml"
               : 'expr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'name) in
    Obj.repr(
# 184 "parser.mly"
                                        ( makeExpr (Variable _1) )
# 1010 "parser.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'variable) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 185 "parser.mly"
                                        ( makeExpr (Sub (_1, _3)) )
# 1018 "parser.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'variable) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'name) in
    Obj.repr(
# 186 "parser.mly"
                                        ( makeExpr (Select (_1, _3)) )
# 1026 "parser.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'variable) in
    Obj.repr(
# 187 "parser.mly"
                                        ( makeExpr (Deref _1) )
# 1033 "parser.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'name) in
    Obj.repr(
# 190 "parser.mly"
                                        ( TypeName _1 )
# 1040 "parser.ml"
               : 'typexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 191 "parser.mly"
                                        ( Array (_2, _4) )
# 1048 "parser.ml"
               : 'typexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'fields) in
    Obj.repr(
# 192 "parser.mly"
                                        ( Record _2 )
# 1055 "parser.ml"
               : 'typexpr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 193 "parser.mly"
                                        ( Pointer _3 )
# 1062 "parser.ml"
               : 'typexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'field_decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'opt_semi) in
    Obj.repr(
# 196 "parser.mly"
                                        ( [_1] )
# 1070 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'field_decl) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'fields) in
    Obj.repr(
# 197 "parser.mly"
                                        ( _1 :: _3 )
# 1078 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ident_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 200 "parser.mly"
                                        ( VarDecl (FieldDef, _1, _3) )
# 1086 "parser.ml"
               : 'field_decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 203 "parser.mly"
                                        ( () )
# 1092 "parser.ml"
               : 'opt_semi))
; (fun __caml_parser_env ->
    Obj.repr(
# 204 "parser.mly"
                                        ( () )
# 1098 "parser.ml"
               : 'opt_semi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Dict.ident) in
    Obj.repr(
# 207 "parser.mly"
                                        ( makeName (_1, !Lexer.lineno) )
# 1105 "parser.ml"
               : 'name))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Tree.program)
