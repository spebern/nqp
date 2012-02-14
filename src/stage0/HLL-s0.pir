.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'
.include 'stat.pasm'
.include 'datatypes.pasm'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "nqp_bigint_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block1000"  :anon :subid("10_1329260312.462")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 0
    .const 'Sub' $P2408 = "273_1329260312.462" 
    capture_lex $P2408
    .const 'Sub' $P2273 = "253_1329260312.462" 
    capture_lex $P2273
    .const 'Sub' $P2241 = "246_1329260312.462" 
    capture_lex $P2241
    .const 'Sub' $P1565 = "164_1329260312.462" 
    capture_lex $P1565
    .const 'Sub' $P1318 = "119_1329260312.462" 
    capture_lex $P1318
    .const 'Sub' $P1007 = "11_1329260312.462" 
    capture_lex $P1007
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
.annotate 'line', 1723
    new $P100, "Undef"
    set $P1005, $P100
    .lex "$compiler", $P1005
.annotate 'line', 1051
    load_bytecode "Parrot/Exception.pbc"
.annotate 'line', 1050
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    .const 'Sub' $P1007 = "11_1329260312.462" 
    capture_lex $P1007
    $P1007()
.annotate 'line', 865
    .const 'Sub' $P1318 = "119_1329260312.462" 
    capture_lex $P1318
    $P1318()
.annotate 'line', 1058
    .const 'Sub' $P1565 = "164_1329260312.462" 
    capture_lex $P1565
    $P1565()
.annotate 'line', 1723
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "HLL"
    get_who $P103, $P102
    set $P104, $P103["Compiler"]
    $P105 = $P104."new"()
    set $P1005, $P105
.annotate 'line', 1724
    set $P101, $P1005
    unless_null $P101, vivify_1118
    new $P101, "Undef"
  vivify_1118:
    $P101."language"("parrot")
.annotate 'line', 1818
    .const 'Sub' $P2241 = "246_1329260312.462" 
    capture_lex $P2241
    $P2241()
.annotate 'line', 1851
    .const 'Sub' $P2273 = "253_1329260312.462" 
    capture_lex $P2273
    $P2273()
.annotate 'line', 2028
    .const 'Sub' $P2408 = "273_1329260312.462" 
    capture_lex $P2408
    $P2408()
.annotate 'line', 1
    set $P102, param_1002
    if $P102, if_2530
    set $P101, $P102
    goto if_2530_end
  if_2530:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P103, "ModuleLoader"
    getinterp $P104
    set $P105, $P104["context"]
    $P106 = $P103."set_mainline_module"($P105)
    set $P101, $P106
  if_2530_end:
    .return ($P101)
.annotate 'line', 1050
    .const 'Sub' $P2532 = "297_1329260312.462" 
.annotate 'line', 1
    .return ($P2532)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post298") :outer("10_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1329260312.462" 
    .local pmc block
    set block, $P1001
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P108
    get_class $P109, "LexPad"
    get_class $P110, "NQPLexPad"
    $P108."hll_map"($P109, $P110)
    nqp_create_sc $P111, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34"
    .local pmc cur_sc
    set cur_sc, $P111
    cur_sc."set_description"("src\\stage2\\gen\\NQPHLL.pm")
    nqp_get_sc $P112, "__6MODEL_CORE__"
    isnull $I100, $P112
    unless $I100, if_2534_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_2534_end:
    nqp_get_sc_object $P112, "__6MODEL_CORE__", 0
    $P113 = $P112."new_type"("GLOBALish" :named("name"))
    nqp_add_object_to_sc cur_sc, 0, $P113
    .const 'LexInfo' $P2535 = "10_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 0
    $P2535."set_static_lexpad_value"("GLOBALish", $P112)
    .const 'LexInfo' $P2536 = "10_1329260312.462" 
    $P2536."finish_static_lexpad"()
    .const 'LexInfo' $P2537 = "10_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 0
    $P2537."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2538 = "10_1329260312.462" 
    $P2538."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P112, "ModuleLoader"
    $P113 = $P112."load_setting"("NQPCORE")
    block."set_outer_ctx"($P113)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P112, "ModuleLoader"
    nqp_get_sc_object $P113, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 0
    $P112."load_module"("NQPRegex", $P113)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P112, "ModuleLoader"
    nqp_get_sc_object $P113, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 0
    $P112."load_module"("NQPRegex", $P113)
    nqp_get_sc $P112, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061"
    isnull $I100, $P112
    unless $I100, if_2539_end
    set $S100, "Incorrect pre-compiled version of src\\stage2\\gen\\nqp-mo.pm loaded"
    die $S100
  if_2539_end:
    nqp_get_sc_object $P112, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 55
    $P113 = $P112."new_type"("HLL::Grammar" :named("name"))
    nqp_add_object_to_sc cur_sc, 1, $P113
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    nqp_get_sc_object $P113, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 0
    nqp_get_package_through_who $P114, $P113, "HLL"
    get_who $P115, $P114
    set $P115["Grammar"], $P112
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2540 = "12_1329260312.462" 
    $P113."add_method"($P114, "ws", $P2540)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2541 = "13_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__ws", $P2541)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2542 = "14_1329260312.462" 
    $P113."add_method"($P114, "termish", $P2542)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2543 = "15_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__termish", $P2543)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2544 = "16_1329260312.462" 
    $P113."add_method"($P114, "term", $P2544)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2545 = "17_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__term", $P2545)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2546 = "18_1329260312.462" 
    $P113."add_method"($P114, "infix", $P2546)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2547 = "19_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__infix", $P2547)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2548 = "20_1329260312.462" 
    $P113."add_method"($P114, "prefix", $P2548)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2549 = "21_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__prefix", $P2549)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2550 = "22_1329260312.462" 
    $P113."add_method"($P114, "postfix", $P2550)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2551 = "23_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__postfix", $P2551)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2552 = "24_1329260312.462" 
    $P113."add_method"($P114, "circumfix", $P2552)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2553 = "25_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__circumfix", $P2553)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2554 = "26_1329260312.462" 
    $P113."add_method"($P114, "postcircumfix", $P2554)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2555 = "27_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__postcircumfix", $P2555)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2556 = "28_1329260312.462" 
    $P113."add_method"($P114, "term:sym<circumfix>", $P2556)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2557 = "29_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__term:sym<circumfix>", $P2557)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2558 = "30_1329260312.462" 
    $P113."add_method"($P114, "infixish", $P2558)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2559 = "31_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__infixish", $P2559)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2560 = "32_1329260312.462" 
    $P113."add_method"($P114, "prefixish", $P2560)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2561 = "33_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__prefixish", $P2561)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2562 = "34_1329260312.462" 
    $P113."add_method"($P114, "postfixish", $P2562)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2563 = "35_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__postfixish", $P2563)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2564 = "36_1329260312.462" 
    $P113."add_method"($P114, "nullterm", $P2564)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2565 = "37_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__nullterm", $P2565)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2566 = "38_1329260312.462" 
    $P113."add_method"($P114, "nullterm_alt", $P2566)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2567 = "39_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__nullterm_alt", $P2567)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2568 = "40_1329260312.462" 
    $P113."add_method"($P114, "nulltermish", $P2568)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2569 = "41_1329260312.462" 
    $P113."add_method"($P114, "quote_delimited", $P2569)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2570 = "42_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_delimited", $P2570)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2571 = "43_1329260312.462" 
    $P113."add_method"($P114, "quote_atom", $P2571)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2572 = "44_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_atom", $P2572)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2573 = "45_1329260312.462" 
    $P113."add_method"($P114, "decint", $P2573)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2574 = "46_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__decint", $P2574)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2575 = "47_1329260312.462" 
    $P113."add_method"($P114, "decints", $P2575)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2576 = "48_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__decints", $P2576)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2577 = "49_1329260312.462" 
    $P113."add_method"($P114, "hexint", $P2577)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2578 = "50_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__hexint", $P2578)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2579 = "51_1329260312.462" 
    $P113."add_method"($P114, "hexints", $P2579)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2580 = "52_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__hexints", $P2580)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2581 = "53_1329260312.462" 
    $P113."add_method"($P114, "octint", $P2581)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2582 = "54_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__octint", $P2582)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2583 = "55_1329260312.462" 
    $P113."add_method"($P114, "octints", $P2583)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2584 = "56_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__octints", $P2584)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2585 = "57_1329260312.462" 
    $P113."add_method"($P114, "binint", $P2585)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2586 = "58_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__binint", $P2586)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2587 = "59_1329260312.462" 
    $P113."add_method"($P114, "binints", $P2587)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2588 = "60_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__binints", $P2588)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2589 = "61_1329260312.462" 
    $P113."add_method"($P114, "integer", $P2589)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2590 = "62_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__integer", $P2590)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2591 = "63_1329260312.462" 
    $P113."add_method"($P114, "dec_number", $P2591)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2592 = "64_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__dec_number", $P2592)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2593 = "65_1329260312.462" 
    $P113."add_method"($P114, "escale", $P2593)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2594 = "66_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__escale", $P2594)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2595 = "67_1329260312.462" 
    $P113."add_method"($P114, "quote_escape", $P2595)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2596 = "68_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape", $P2596)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2597 = "69_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<backslash>", $P2597)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2598 = "70_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape:sym<backslash>", $P2598)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2599 = "71_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<stopper>", $P2599)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2600 = "72_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape:sym<stopper>", $P2600)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2601 = "73_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<bs>", $P2601)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2602 = "74_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape:sym<bs>", $P2602)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2603 = "75_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<nl>", $P2603)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2604 = "76_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape:sym<nl>", $P2604)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2605 = "77_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<cr>", $P2605)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2606 = "78_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape:sym<cr>", $P2606)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2607 = "79_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<tab>", $P2607)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2608 = "80_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape:sym<tab>", $P2608)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2609 = "81_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<ff>", $P2609)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2610 = "82_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape:sym<ff>", $P2610)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2611 = "83_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<esc>", $P2611)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2612 = "84_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape:sym<esc>", $P2612)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2613 = "85_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<hex>", $P2613)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2614 = "86_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape:sym<hex>", $P2614)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2615 = "87_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<oct>", $P2615)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2616 = "88_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape:sym<oct>", $P2616)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2617 = "89_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<chr>", $P2617)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2618 = "90_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape:sym<chr>", $P2618)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2619 = "91_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<0>", $P2619)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2620 = "92_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape:sym<0>", $P2620)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2621 = "93_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<misc>", $P2621)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2622 = "97_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__quote_escape:sym<misc>", $P2622)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2623 = "98_1329260312.462" 
    $P113."add_method"($P114, "charname", $P2623)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2624 = "100_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__charname", $P2624)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2625 = "101_1329260312.462" 
    $P113."add_method"($P114, "charnames", $P2625)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2626 = "102_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__charnames", $P2626)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2627 = "103_1329260312.462" 
    $P113."add_method"($P114, "charspec", $P2627)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2628 = "104_1329260312.462" 
    $P113."add_method"($P114, "!PREFIX__charspec", $P2628)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2629 = "105_1329260312.462" 
    $P113."add_method"($P114, "O", $P2629)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2630 = "106_1329260312.462" 
    $P113."add_method"($P114, "panic", $P2630)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2631 = "107_1329260312.462" 
    $P113."add_method"($P114, "peek_delimiters", $P2631)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2632 = "108_1329260312.462" 
    $P113."add_method"($P114, "quote_EXPR", $P2632)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2633 = "109_1329260312.462" 
    $P113."add_method"($P114, "quotemod_check", $P2633)
    .const '' $P2634 = "109_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_who $P113, $P112
    set $P113["quotemod_check"], $P2634
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2635 = "110_1329260312.462" 
    $P113."add_method"($P114, "starter", $P2635)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2636 = "111_1329260312.462" 
    $P113."add_method"($P114, "stopper", $P2636)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2637 = "112_1329260312.462" 
    $P113."add_method"($P114, "split_words", $P2637)
    .const '' $P2638 = "112_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_who $P113, $P112
    set $P113["split_words"], $P2638
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2639 = "113_1329260312.462" 
    $P113."add_method"($P114, "EXPR", $P2639)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2640 = "114_1329260312.462" 
    $P113."add_method"($P114, "EXPR_reduce", $P2640)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2641 = "115_1329260312.462" 
    $P113."add_method"($P114, "ternary", $P2641)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2642 = "116_1329260312.462" 
    $P113."add_method"($P114, "MARKER", $P2642)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2643 = "117_1329260312.462" 
    $P113."add_method"($P114, "MARKED", $P2643)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    .const '' $P2644 = "118_1329260312.462" 
    $P113."add_method"($P114, "LANG", $P2644)
    .const 'LexInfo' $P2645 = "11_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    $P2645."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2646 = "11_1329260312.462" 
    $P2646."finish_static_lexpad"()
    .const 'LexInfo' $P2647 = "11_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    $P2647."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2648 = "11_1329260312.462" 
    $P2648."finish_static_lexpad"()
    nqp_get_sc $P112, "__REGEX_CORE_SC__"
    isnull $I100, $P112
    unless $I100, if_2649_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_2649_end:
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    nqp_get_sc_object $P115, "__REGEX_CORE_SC__", 0
    $P113."set_default_parent"($P114, $P115)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 1
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 55
    $P113 = $P112."new_type"("HLL::Actions" :named("name"))
    nqp_add_object_to_sc cur_sc, 105, $P113
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    nqp_get_sc_object $P113, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 0
    nqp_get_package_through_who $P114, $P113, "HLL"
    get_who $P115, $P114
    set $P115["Actions"], $P112
    .const '' $P2650 = "120_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_who $P113, $P112
    set $P113["string_to_int"], $P2650
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2651 = "121_1329260312.462" 
    $P113."add_method"($P114, "ints_to_string", $P2651)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2652 = "124_1329260312.462" 
    $P113."add_method"($P114, "CTXSAVE", $P2652)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2653 = "125_1329260312.462" 
    $P113."add_method"($P114, "SET_BLOCK_OUTER_CTX", $P2653)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2654 = "128_1329260312.462" 
    $P113."add_method"($P114, "EXPR", $P2654)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2655 = "131_1329260312.462" 
    $P113."add_method"($P114, "term:sym<circumfix>", $P2655)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2656 = "132_1329260312.462" 
    $P113."add_method"($P114, "termish", $P2656)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2657 = "133_1329260312.462" 
    $P113."add_method"($P114, "nullterm", $P2657)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2658 = "134_1329260312.462" 
    $P113."add_method"($P114, "nullterm_alt", $P2658)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2659 = "135_1329260312.462" 
    $P113."add_method"($P114, "integer", $P2659)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2660 = "136_1329260312.462" 
    $P113."add_method"($P114, "dec_number", $P2660)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2661 = "137_1329260312.462" 
    $P113."add_method"($P114, "decint", $P2661)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2662 = "138_1329260312.462" 
    $P113."add_method"($P114, "hexint", $P2662)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2663 = "139_1329260312.462" 
    $P113."add_method"($P114, "octint", $P2663)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2664 = "140_1329260312.462" 
    $P113."add_method"($P114, "binint", $P2664)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2665 = "141_1329260312.462" 
    $P113."add_method"($P114, "quote_EXPR", $P2665)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2666 = "144_1329260312.462" 
    $P113."add_method"($P114, "quote_delimited", $P2666)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2667 = "146_1329260312.462" 
    $P113."add_method"($P114, "quote_atom", $P2667)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2668 = "147_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<backslash>", $P2668)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2669 = "148_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<stopper>", $P2669)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2670 = "149_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<bs>", $P2670)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2671 = "150_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<nl>", $P2671)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2672 = "151_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<cr>", $P2672)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2673 = "152_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<tab>", $P2673)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2674 = "153_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<ff>", $P2674)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2675 = "154_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<esc>", $P2675)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2676 = "155_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<hex>", $P2676)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2677 = "156_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<oct>", $P2677)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2678 = "157_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<chr>", $P2678)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2679 = "158_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<0>", $P2679)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2680 = "159_1329260312.462" 
    $P113."add_method"($P114, "quote_escape:sym<misc>", $P2680)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2681 = "160_1329260312.462" 
    $P113."add_method"($P114, "charname", $P2681)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2682 = "161_1329260312.462" 
    $P113."add_method"($P114, "charnames", $P2682)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    .const '' $P2683 = "163_1329260312.462" 
    $P113."add_method"($P114, "charspec", $P2683)
    .const 'LexInfo' $P2684 = "119_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    $P2684."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2685 = "119_1329260312.462" 
    $P2685."finish_static_lexpad"()
    .const 'LexInfo' $P2686 = "119_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    $P2686."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2687 = "119_1329260312.462" 
    $P2687."finish_static_lexpad"()
    nqp_get_sc $P112, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629"
    isnull $I100, $P112
    unless $I100, if_2688_end
    set $S100, "Incorrect pre-compiled version of src\\stage2\\NQPCORE.setting loaded"
    die $S100
  if_2688_end:
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    nqp_get_sc_object $P115, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    $P113."set_default_parent"($P114, $P115)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 105
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 55
    $P113 = $P112."new_type"("HLL::Compiler" :named("name"))
    nqp_add_object_to_sc cur_sc, 139, $P113
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    nqp_get_sc_object $P113, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 0
    nqp_get_package_through_who $P114, $P113, "HLL"
    get_who $P115, $P114
    set $P115["Compiler"], $P112
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("@!stages" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("$!parsegrammar" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("$!parseactions" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("@!cmdoptions" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("$!usage" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("$!compiler_progname" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("$!language" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("%!config" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2689 = "166_1329260312.462" 
    $P113."add_method"($P114, "new", $P2689)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2690 = "167_1329260312.462" 
    $P113."add_method"($P114, "BUILD", $P2690)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2691 = "169_1329260312.462" 
    $P113."add_method"($P114, "get_exports", $P2691)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2692 = "172_1329260312.462" 
    $P113."add_method"($P114, "get_module", $P2692)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2693 = "173_1329260312.462" 
    $P113."add_method"($P114, "language", $P2693)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2694 = "174_1329260312.462" 
    $P113."add_method"($P114, "compiler", $P2694)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2695 = "175_1329260312.462" 
    $P113."add_method"($P114, "config", $P2695)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2696 = "176_1329260312.462" 
    $P113."add_method"($P114, "load_module", $P2696)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2697 = "178_1329260312.462" 
    $P113."add_method"($P114, "import", $P2697)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2698 = "183_1329260312.462" 
    $P113."add_method"($P114, "autoprint", $P2698)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2699 = "184_1329260312.462" 
    $P113."add_method"($P114, "interactive", $P2699)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2700 = "191_1329260312.462" 
    $P113."add_method"($P114, "eval", $P2700)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2701 = "193_1329260312.462" 
    $P113."add_method"($P114, "ctxsave", $P2701)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2702 = "194_1329260312.462" 
    $P113."add_method"($P114, "panic", $P2702)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2703 = "195_1329260312.462" 
    $P113."add_method"($P114, "stages", $P2703)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2704 = "196_1329260312.462" 
    $P113."add_method"($P114, "parsegrammar", $P2704)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2705 = "197_1329260312.462" 
    $P113."add_method"($P114, "parseactions", $P2705)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2706 = "198_1329260312.462" 
    $P113."add_method"($P114, "interactive_banner", $P2706)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2707 = "199_1329260312.462" 
    $P113."add_method"($P114, "interactive_prompt", $P2707)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2708 = "200_1329260312.462" 
    $P113."add_method"($P114, "compiler_progname", $P2708)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2709 = "201_1329260312.462" 
    $P113."add_method"($P114, "commandline_options", $P2709)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2710 = "202_1329260312.462" 
    $P113."add_method"($P114, "command_line", $P2710)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2711 = "203_1329260312.462" 
    $P113."add_method"($P114, "command_eval", $P2711)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2712 = "210_1329260312.462" 
    $P113."add_method"($P114, "process_args", $P2712)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2713 = "213_1329260312.462" 
    $P113."add_method"($P114, "evalfiles", $P2713)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2714 = "217_1329260312.462" 
    $P113."add_method"($P114, "compile", $P2714)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2715 = "220_1329260312.462" 
    $P113."add_method"($P114, "parse", $P2715)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2716 = "223_1329260312.462" 
    $P113."add_method"($P114, "past", $P2716)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2717 = "224_1329260312.462" 
    $P113."add_method"($P114, "post", $P2717)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2718 = "225_1329260312.462" 
    $P113."add_method"($P114, "pirbegin", $P2718)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2719 = "226_1329260312.462" 
    $P113."add_method"($P114, "pir", $P2719)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2720 = "227_1329260312.462" 
    $P113."add_method"($P114, "evalpmc", $P2720)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2721 = "228_1329260312.462" 
    $P113."add_method"($P114, "dumper", $P2721)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2722 = "230_1329260312.462" 
    $P113."add_method"($P114, "usage", $P2722)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2723 = "231_1329260312.462" 
    $P113."add_method"($P114, "version", $P2723)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2724 = "232_1329260312.462" 
    $P113."add_method"($P114, "show-config", $P2724)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2725 = "235_1329260312.462" 
    $P113."add_method"($P114, "nqpevent", $P2725)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2726 = "238_1329260312.462" 
    $P113."add_method"($P114, "removestage", $P2726)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2727 = "240_1329260312.462" 
    $P113."add_method"($P114, "addstage", $P2727)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2728 = "243_1329260312.462" 
    $P113."add_method"($P114, "parse_name", $P2728)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    .const '' $P2729 = "245_1329260312.462" 
    $P113."add_method"($P114, "lineof", $P2729)
    .const 'LexInfo' $P2730 = "164_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    $P2730."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2731 = "164_1329260312.462" 
    $P2731."finish_static_lexpad"()
    .const 'LexInfo' $P2732 = "164_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    $P2732."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2733 = "164_1329260312.462" 
    $P2733."finish_static_lexpad"()
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    nqp_get_sc_object $P115, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    $P113."set_default_parent"($P114, $P115)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 139
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 55
    $P113 = $P112."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_add_object_to_sc cur_sc, 181, $P113
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    nqp_get_sc_object $P113, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 0
    nqp_get_package_through_who $P114, $P113, "HLL"
    nqp_get_package_through_who $P115, $P114, "CommandLine"
    get_who $P116, $P115
    set $P116["Result"], $P112
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("@!arguments" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("%!options" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    .const '' $P2734 = "247_1329260312.462" 
    $P113."add_method"($P114, "init", $P2734)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    .const '' $P2735 = "248_1329260312.462" 
    $P113."add_method"($P114, "arguments", $P2735)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    .const '' $P2736 = "249_1329260312.462" 
    $P113."add_method"($P114, "options", $P2736)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    .const '' $P2737 = "250_1329260312.462" 
    $P113."add_method"($P114, "add-argument", $P2737)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    .const '' $P2738 = "251_1329260312.462" 
    $P113."add_method"($P114, "add-option", $P2738)
    .const 'LexInfo' $P2739 = "246_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    $P2739."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2740 = "246_1329260312.462" 
    $P2740."finish_static_lexpad"()
    .const 'LexInfo' $P2741 = "246_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    $P2741."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2742 = "246_1329260312.462" 
    $P2742."finish_static_lexpad"()
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    nqp_get_sc_object $P115, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    $P113."set_default_parent"($P114, $P115)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 181
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 55
    $P113 = $P112."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_add_object_to_sc cur_sc, 187, $P113
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    nqp_get_sc_object $P113, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 0
    nqp_get_package_through_who $P114, $P113, "HLL"
    nqp_get_package_through_who $P115, $P114, "CommandLine"
    get_who $P116, $P115
    set $P116["Parser"], $P112
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("@!specs" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("%!options" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("%!stopper" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("$!stop-after-first-arg" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    .const '' $P2743 = "254_1329260312.462" 
    $P113."add_method"($P114, "new", $P2743)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    .const '' $P2744 = "255_1329260312.462" 
    $P113."add_method"($P114, "stop-after-first-arg", $P2744)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    .const '' $P2745 = "256_1329260312.462" 
    $P113."add_method"($P114, "BUILD", $P2745)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    .const '' $P2746 = "258_1329260312.462" 
    $P113."add_method"($P114, "add-stopper", $P2746)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    .const '' $P2747 = "259_1329260312.462" 
    $P113."add_method"($P114, "split-option-aliases", $P2747)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    .const '' $P2748 = "260_1329260312.462" 
    $P113."add_method"($P114, "add-spec", $P2748)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    .const '' $P2749 = "262_1329260312.462" 
    $P113."add_method"($P114, "is-option", $P2749)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    .const '' $P2750 = "263_1329260312.462" 
    $P113."add_method"($P114, "wants-value", $P2750)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    .const '' $P2751 = "264_1329260312.462" 
    $P113."add_method"($P114, "optional-value", $P2751)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    .const '' $P2752 = "265_1329260312.462" 
    $P113."add_method"($P114, "parse", $P2752)
    .const 'LexInfo' $P2753 = "253_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    $P2753."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2754 = "253_1329260312.462" 
    $P2754."finish_static_lexpad"()
    .const 'LexInfo' $P2755 = "253_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    $P2755."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2756 = "253_1329260312.462" 
    $P2756."finish_static_lexpad"()
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    nqp_get_sc_object $P115, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    $P113."set_default_parent"($P114, $P115)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 187
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 55
    $P113 = $P112."new_type"("HLL::World" :named("name"))
    nqp_add_object_to_sc cur_sc, 198, $P113
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    nqp_get_sc_object $P113, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 0
    nqp_get_package_through_who $P114, $P113, "HLL"
    get_who $P115, $P114
    set $P115["World"], $P112
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("$!sc" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("$!handle" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("$!precomp_mode" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("$!num_code_refs" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("$!code_ref_blocks" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("@!load_dependency_tasks" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("@!fixup_tasks" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("%!addr_to_slot" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    nqp_get_sc_object $P115, "F3E24B0F152705B4B497A988620E1A8B7CA5D66B-1329260306.061", 99
    $P116 = $P115."new"("%!dependencies" :named("name"))
    $P113."add_attribute"($P114, $P116)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2757 = "274_1329260312.462" 
    $P113."add_method"($P114, "new", $P2757)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2758 = "275_1329260312.462" 
    $P113."add_method"($P114, "BUILD", $P2758)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2759 = "276_1329260312.462" 
    $P113."add_method"($P114, "slot_for_object", $P2759)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2760 = "277_1329260312.462" 
    $P113."add_method"($P114, "get_slot_past_for_object", $P2760)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2761 = "278_1329260312.462" 
    $P113."add_method"($P114, "get_slot_past_for_code_ref_at", $P2761)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2762 = "279_1329260312.462" 
    $P113."add_method"($P114, "set_slot_past", $P2762)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2763 = "280_1329260312.462" 
    $P113."add_method"($P114, "set_cur_sc", $P2763)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2764 = "281_1329260312.462" 
    $P113."add_method"($P114, "add_object_to_cur_sc_past", $P2764)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2765 = "282_1329260312.462" 
    $P113."add_method"($P114, "add_object", $P2765)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2766 = "283_1329260312.462" 
    $P113."add_method"($P114, "add_code_LEGACY", $P2766)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2767 = "284_1329260312.462" 
    $P113."add_method"($P114, "add_root_code_ref", $P2767)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2768 = "285_1329260312.462" 
    $P113."add_method"($P114, "is_precompilation_mode", $P2768)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2769 = "286_1329260312.462" 
    $P113."add_method"($P114, "add_load_dependency_task", $P2769)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2770 = "287_1329260312.462" 
    $P113."add_method"($P114, "add_fixup_task", $P2770)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2771 = "288_1329260312.462" 
    $P113."add_method"($P114, "get_ref", $P2771)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2772 = "290_1329260312.462" 
    $P113."add_method"($P114, "sc", $P2772)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2773 = "291_1329260312.462" 
    $P113."add_method"($P114, "handle", $P2773)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2774 = "292_1329260312.462" 
    $P113."add_method"($P114, "load_dependency_tasks", $P2774)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2775 = "293_1329260312.462" 
    $P113."add_method"($P114, "fixup_tasks", $P2775)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    .const '' $P2776 = "294_1329260312.462" 
    $P113."add_method"($P114, "serialize_and_produce_deserialization_past", $P2776)
    .const 'LexInfo' $P2777 = "273_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    $P2777."set_static_lexpad_value"("$?PACKAGE", $P112)
    .const 'LexInfo' $P2778 = "273_1329260312.462" 
    $P2778."finish_static_lexpad"()
    .const 'LexInfo' $P2779 = "273_1329260312.462" 
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    $P2779."set_static_lexpad_value"("$?CLASS", $P112)
    .const 'LexInfo' $P2780 = "273_1329260312.462" 
    $P2780."finish_static_lexpad"()
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    nqp_get_sc_object $P115, "27F3ECF6B2C866B16E6CB93AFBA1EB3CA80F57C5-1329260308.629", 7
    $P113."set_default_parent"($P114, $P115)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    get_how $P113, $P112
    nqp_get_sc_object $P114, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 198
    $P113."compose"($P114)
    nqp_get_sc_object $P112, "876E116BE302376F7722A4391725308FCA8A04FA-1329260309.34", 0
    set_hll_global "GLOBAL", $P112
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1006"  :subid("11_1329260312.462") :outer("10_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P1308 = "118_1329260312.462" 
    capture_lex $P1308
    .const 'Sub' $P1305 = "117_1329260312.462" 
    capture_lex $P1305
    .const 'Sub' $P1297 = "116_1329260312.462" 
    capture_lex $P1297
    .const 'Sub' $P1289 = "115_1329260312.462" 
    capture_lex $P1289
    .const 'Sub' $P1285 = "114_1329260312.462" 
    capture_lex $P1285
    .const 'Sub' $P1282 = "113_1329260312.462" 
    capture_lex $P1282
    .const 'Sub' $P1279 = "112_1329260312.462" 
    capture_lex $P1279
    .const 'Sub' $P1277 = "111_1329260312.462" 
    capture_lex $P1277
    .const 'Sub' $P1275 = "110_1329260312.462" 
    capture_lex $P1275
    .const 'Sub' $P1272 = "109_1329260312.462" 
    capture_lex $P1272
    .const 'Sub' $P1269 = "108_1329260312.462" 
    capture_lex $P1269
    .const 'Sub' $P1265 = "107_1329260312.462" 
    capture_lex $P1265
    .const 'Sub' $P1254 = "106_1329260312.462" 
    capture_lex $P1254
    .const 'Sub' $P1250 = "105_1329260312.462" 
    capture_lex $P1250
    .const 'Sub' $P1249 = "104_1329260312.462" 
    capture_lex $P1249
    .const 'Sub' $P1244 = "103_1329260312.462" 
    capture_lex $P1244
    .const 'Sub' $P1243 = "102_1329260312.462" 
    capture_lex $P1243
    .const 'Sub' $P1239 = "101_1329260312.462" 
    capture_lex $P1239
    .const 'Sub' $P1238 = "100_1329260312.462" 
    capture_lex $P1238
    .const 'Sub' $P1228 = "98_1329260312.462" 
    capture_lex $P1228
    .const 'Sub' $P1227 = "97_1329260312.462" 
    capture_lex $P1227
    .const 'Sub' $P1211 = "93_1329260312.462" 
    capture_lex $P1211
    .const 'Sub' $P1210 = "92_1329260312.462" 
    capture_lex $P1210
    .const 'Sub' $P1206 = "91_1329260312.462" 
    capture_lex $P1206
    .const 'Sub' $P1205 = "90_1329260312.462" 
    capture_lex $P1205
    .const 'Sub' $P1202 = "89_1329260312.462" 
    capture_lex $P1202
    .const 'Sub' $P1201 = "88_1329260312.462" 
    capture_lex $P1201
    .const 'Sub' $P1197 = "87_1329260312.462" 
    capture_lex $P1197
    .const 'Sub' $P1196 = "86_1329260312.462" 
    capture_lex $P1196
    .const 'Sub' $P1192 = "85_1329260312.462" 
    capture_lex $P1192
    .const 'Sub' $P1191 = "84_1329260312.462" 
    capture_lex $P1191
    .const 'Sub' $P1188 = "83_1329260312.462" 
    capture_lex $P1188
    .const 'Sub' $P1187 = "82_1329260312.462" 
    capture_lex $P1187
    .const 'Sub' $P1184 = "81_1329260312.462" 
    capture_lex $P1184
    .const 'Sub' $P1183 = "80_1329260312.462" 
    capture_lex $P1183
    .const 'Sub' $P1180 = "79_1329260312.462" 
    capture_lex $P1180
    .const 'Sub' $P1179 = "78_1329260312.462" 
    capture_lex $P1179
    .const 'Sub' $P1176 = "77_1329260312.462" 
    capture_lex $P1176
    .const 'Sub' $P1175 = "76_1329260312.462" 
    capture_lex $P1175
    .const 'Sub' $P1172 = "75_1329260312.462" 
    capture_lex $P1172
    .const 'Sub' $P1171 = "74_1329260312.462" 
    capture_lex $P1171
    .const 'Sub' $P1168 = "73_1329260312.462" 
    capture_lex $P1168
    .const 'Sub' $P1167 = "72_1329260312.462" 
    capture_lex $P1167
    .const 'Sub' $P1164 = "71_1329260312.462" 
    capture_lex $P1164
    .const 'Sub' $P1163 = "70_1329260312.462" 
    capture_lex $P1163
    .const 'Sub' $P1160 = "69_1329260312.462" 
    capture_lex $P1160
    .const 'Sub' $P1155 = "66_1329260312.462" 
    capture_lex $P1155
    .const 'Sub' $P1151 = "65_1329260312.462" 
    capture_lex $P1151
    .const 'Sub' $P1150 = "64_1329260312.462" 
    capture_lex $P1150
    .const 'Sub' $P1139 = "63_1329260312.462" 
    capture_lex $P1139
    .const 'Sub' $P1138 = "62_1329260312.462" 
    capture_lex $P1138
    .const 'Sub' $P1133 = "61_1329260312.462" 
    capture_lex $P1133
    .const 'Sub' $P1132 = "60_1329260312.462" 
    capture_lex $P1132
    .const 'Sub' $P1128 = "59_1329260312.462" 
    capture_lex $P1128
    .const 'Sub' $P1127 = "58_1329260312.462" 
    capture_lex $P1127
    .const 'Sub' $P1122 = "57_1329260312.462" 
    capture_lex $P1122
    .const 'Sub' $P1121 = "56_1329260312.462" 
    capture_lex $P1121
    .const 'Sub' $P1117 = "55_1329260312.462" 
    capture_lex $P1117
    .const 'Sub' $P1116 = "54_1329260312.462" 
    capture_lex $P1116
    .const 'Sub' $P1111 = "53_1329260312.462" 
    capture_lex $P1111
    .const 'Sub' $P1110 = "52_1329260312.462" 
    capture_lex $P1110
    .const 'Sub' $P1106 = "51_1329260312.462" 
    capture_lex $P1106
    .const 'Sub' $P1105 = "50_1329260312.462" 
    capture_lex $P1105
    .const 'Sub' $P1100 = "49_1329260312.462" 
    capture_lex $P1100
    .const 'Sub' $P1099 = "48_1329260312.462" 
    capture_lex $P1099
    .const 'Sub' $P1095 = "47_1329260312.462" 
    capture_lex $P1095
    .const 'Sub' $P1094 = "46_1329260312.462" 
    capture_lex $P1094
    .const 'Sub' $P1090 = "45_1329260312.462" 
    capture_lex $P1090
    .const 'Sub' $P1089 = "44_1329260312.462" 
    capture_lex $P1089
    .const 'Sub' $P1084 = "43_1329260312.462" 
    capture_lex $P1084
    .const 'Sub' $P1083 = "42_1329260312.462" 
    capture_lex $P1083
    .const 'Sub' $P1078 = "41_1329260312.462" 
    capture_lex $P1078
    .const 'Sub' $P1075 = "40_1329260312.462" 
    capture_lex $P1075
    .const 'Sub' $P1074 = "39_1329260312.462" 
    capture_lex $P1074
    .const 'Sub' $P1071 = "38_1329260312.462" 
    capture_lex $P1071
    .const 'Sub' $P1070 = "37_1329260312.462" 
    capture_lex $P1070
    .const 'Sub' $P1067 = "36_1329260312.462" 
    capture_lex $P1067
    .const 'Sub' $P1066 = "35_1329260312.462" 
    capture_lex $P1066
    .const 'Sub' $P1062 = "34_1329260312.462" 
    capture_lex $P1062
    .const 'Sub' $P1061 = "33_1329260312.462" 
    capture_lex $P1061
    .const 'Sub' $P1058 = "32_1329260312.462" 
    capture_lex $P1058
    .const 'Sub' $P1057 = "31_1329260312.462" 
    capture_lex $P1057
    .const 'Sub' $P1054 = "30_1329260312.462" 
    capture_lex $P1054
    .const 'Sub' $P1053 = "29_1329260312.462" 
    capture_lex $P1053
    .const 'Sub' $P1050 = "28_1329260312.462" 
    capture_lex $P1050
    .const 'Sub' $P1025 = "15_1329260312.462" 
    capture_lex $P1025
    .const 'Sub' $P1018 = "14_1329260312.462" 
    capture_lex $P1018
    .const 'Sub' $P1017 = "13_1329260312.462" 
    capture_lex $P1017
    .const 'Sub' $P1012 = "12_1329260312.462" 
    capture_lex $P1012
.annotate 'line', 8
    new $P101, "Undef"
    set $P1008, $P101
    .lex "$brackets", $P1008
.annotate 'line', 10
    new $P102, "Undef"
    set $P1009, $P102
    .lex "$cursor_class", $P1009
    .lex "$?PACKAGE", $P1010
    .lex "$?CLASS", $P1011
.annotate 'line', 8
    new $P103, "String"
    assign $P103, unicode:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set $P1008, $P103
.annotate 'line', 10
    find_lex $P103, "GLOBALish"
    get_who $P104, $P103
    set $P105, $P104["Regex"]
    unless_null $P105, vivify_299
    new $P105, "Undef"
  vivify_299:
    get_who $P106, $P105
    set $P107, $P106["Cursor"]
    unless_null $P107, vivify_300
    new $P107, "Undef"
  vivify_300:
    set $P1009, $P107
.annotate 'line', 849
    .const 'Sub' $P1308 = "118_1329260312.462" 
    newclosure $P1316, $P1308
.annotate 'line', 7
    .return ($P1316)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 12
    .local string rx1013_tgt
    .local int rx1013_pos
    .local int rx1013_off
    .local int rx1013_eos
    .local int rx1013_rep
    .local pmc rx1013_cur
    .local pmc rx1013_debug
    (rx1013_cur, rx1013_pos, rx1013_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1013_cur
    .local pmc match
    .lex "$/", match
    length rx1013_eos, rx1013_tgt
    gt rx1013_pos, rx1013_eos, rx1013_done
    set rx1013_off, 0
    lt rx1013_pos, 2, rx1013_start
    sub rx1013_off, rx1013_pos, 1
    substr rx1013_tgt, rx1013_tgt, rx1013_off
  rx1013_start:
    eq $I10, 1, rx1013_restart
    if_null rx1013_debug, debug_301
    rx1013_cur."!cursor_debug"("START", "ws")
  debug_301:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1014_done
    goto rxscan1014_scan
  rxscan1014_loop:
    (rx1013_pos) = rx1013_cur."from"()
    inc rx1013_pos
    rx1013_cur."!cursor_from"(rx1013_pos)
    ge rx1013_pos, rx1013_eos, rxscan1014_done
  rxscan1014_scan:
    set_addr $I10, rxscan1014_loop
    rx1013_cur."!mark_push"(0, rx1013_pos, $I10)
  rxscan1014_done:
  # rx subrule "ww" subtype=zerowidth negate=1
    rx1013_cur."!cursor_pos"(rx1013_pos)
    $P10 = rx1013_cur."ww"()
    if $P10, rx1013_fail
  # rx rxquantr1015 ** 0..*
    set_addr $I10, rxquantr1015_done
    rx1013_cur."!mark_push"(0, rx1013_pos, $I10)
  rxquantr1015_loop:
  alt1016_0:
    set_addr $I10, alt1016_1
    rx1013_cur."!mark_push"(0, rx1013_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx1013_pos, rx1013_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx1013_tgt, $I10, rx1013_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1013_fail
    add rx1013_pos, rx1013_off, $I11
    goto alt1016_end
  alt1016_1:
  # rx literal  "#"
    add $I11, rx1013_pos, 1
    gt $I11, rx1013_eos, rx1013_fail
    sub $I11, rx1013_pos, rx1013_off
    ord $I11, rx1013_tgt, $I11
    ne $I11, 35, rx1013_fail
    add rx1013_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx1013_pos, rx1013_off
    find_cclass $I11, .CCLASS_NEWLINE, rx1013_tgt, $I10, rx1013_eos
    add rx1013_pos, rx1013_off, $I11
  alt1016_end:
    set_addr $I10, rxquantr1015_done
    (rx1013_rep) = rx1013_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1015_done
    rx1013_cur."!mark_push"(rx1013_rep, rx1013_pos, $I10)
    goto rxquantr1015_loop
  rxquantr1015_done:
  # rx pass
    rx1013_cur."!cursor_pass"(rx1013_pos, "ws")
    if_null rx1013_debug, debug_302
    rx1013_cur."!cursor_debug"("PASS", "ws", " at pos=", rx1013_pos)
  debug_302:
    .return (rx1013_cur)
  rx1013_restart:
    if_null rx1013_debug, debug_303
    rx1013_cur."!cursor_debug"("NEXT", "ws")
  debug_303:
  rx1013_fail:
    (rx1013_rep, rx1013_pos, $I10, $P10) = rx1013_cur."!mark_fail"(0)
    lt rx1013_pos, -1, rx1013_done
    eq rx1013_pos, -1, rx1013_fail
    jump $I10
  rx1013_done:
    rx1013_cur."!cursor_fail"()
    if_null rx1013_debug, debug_304
    rx1013_cur."!cursor_debug"("FAIL", "ws")
  debug_304:
    .return (rx1013_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :subid("13_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 12
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 14
    .local string rx1019_tgt
    .local int rx1019_pos
    .local int rx1019_off
    .local int rx1019_eos
    .local int rx1019_rep
    .local pmc rx1019_cur
    .local pmc rx1019_debug
    (rx1019_cur, rx1019_pos, rx1019_tgt, $I10) = self."!cursor_start"()
    rx1019_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx1019_cur
    .local pmc match
    .lex "$/", match
    length rx1019_eos, rx1019_tgt
    gt rx1019_pos, rx1019_eos, rx1019_done
    set rx1019_off, 0
    lt rx1019_pos, 2, rx1019_start
    sub rx1019_off, rx1019_pos, 1
    substr rx1019_tgt, rx1019_tgt, rx1019_off
  rx1019_start:
    eq $I10, 1, rx1019_restart
    if_null rx1019_debug, debug_305
    rx1019_cur."!cursor_debug"("START", "termish")
  debug_305:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1020_done
    goto rxscan1020_scan
  rxscan1020_loop:
    (rx1019_pos) = rx1019_cur."from"()
    inc rx1019_pos
    rx1019_cur."!cursor_from"(rx1019_pos)
    ge rx1019_pos, rx1019_eos, rxscan1020_done
  rxscan1020_scan:
    set_addr $I10, rxscan1020_loop
    rx1019_cur."!mark_push"(0, rx1019_pos, $I10)
  rxscan1020_done:
.annotate 'line', 15
  # rx rxquantr1021 ** 0..*
    set_addr $I10, rxquantr1021_done
    rx1019_cur."!mark_push"(0, rx1019_pos, $I10)
  rxquantr1021_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx1019_cur."!cursor_pos"(rx1019_pos)
    $P10 = rx1019_cur."prefixish"()
    unless $P10, rx1019_fail
    goto rxsubrule1022_pass
  rxsubrule1022_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1019_fail
  rxsubrule1022_pass:
    set_addr $I10, rxsubrule1022_back
    rx1019_cur."!mark_push"(0, rx1019_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx1019_pos = $P10."pos"()
    set_addr $I10, rxquantr1021_done
    (rx1019_rep) = rx1019_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1021_done
    rx1019_cur."!mark_push"(rx1019_rep, rx1019_pos, $I10)
    goto rxquantr1021_loop
  rxquantr1021_done:
.annotate 'line', 16
  # rx subrule "term" subtype=capture negate=
    rx1019_cur."!cursor_pos"(rx1019_pos)
    $P10 = rx1019_cur."term"()
    unless $P10, rx1019_fail
    rx1019_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx1019_pos = $P10."pos"()
.annotate 'line', 17
  # rx rxquantr1023 ** 0..*
    set_addr $I10, rxquantr1023_done
    rx1019_cur."!mark_push"(0, rx1019_pos, $I10)
  rxquantr1023_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx1019_cur."!cursor_pos"(rx1019_pos)
    $P10 = rx1019_cur."postfixish"()
    unless $P10, rx1019_fail
    goto rxsubrule1024_pass
  rxsubrule1024_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1019_fail
  rxsubrule1024_pass:
    set_addr $I10, rxsubrule1024_back
    rx1019_cur."!mark_push"(0, rx1019_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx1019_pos = $P10."pos"()
    set_addr $I10, rxquantr1023_done
    (rx1019_rep) = rx1019_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1023_done
    rx1019_cur."!mark_push"(rx1019_rep, rx1019_pos, $I10)
    goto rxquantr1023_loop
  rxquantr1023_done:
.annotate 'line', 14
  # rx pass
    rx1019_cur."!cursor_pass"(rx1019_pos, "termish")
    if_null rx1019_debug, debug_306
    rx1019_cur."!cursor_debug"("PASS", "termish", " at pos=", rx1019_pos)
  debug_306:
    .return (rx1019_cur)
  rx1019_restart:
    if_null rx1019_debug, debug_307
    rx1019_cur."!cursor_debug"("NEXT", "termish")
  debug_307:
  rx1019_fail:
    (rx1019_rep, rx1019_pos, $I10, $P10) = rx1019_cur."!mark_fail"(0)
    lt rx1019_pos, -1, rx1019_done
    eq rx1019_pos, -1, rx1019_fail
    jump $I10
  rx1019_done:
    rx1019_cur."!cursor_fail"()
    if_null rx1019_debug, debug_308
    rx1019_cur."!cursor_debug"("FAIL", "termish")
  debug_308:
    .return (rx1019_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("15_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 14
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1329260312.462")
    .param pmc param_1027
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 20
    .lex "self", param_1027
    $P103 = param_1027."!protoregex"("term")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1329260312.462")
    .param pmc param_1029
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 20
    .lex "self", param_1029
    $P104 = param_1029."!PREFIX__!protoregex"("term")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1329260312.462")
    .param pmc param_1031
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .lex "self", param_1031
    $P103 = param_1031."!protoregex"("infix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1329260312.462")
    .param pmc param_1033
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .lex "self", param_1033
    $P104 = param_1033."!PREFIX__!protoregex"("infix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1329260312.462")
    .param pmc param_1035
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .lex "self", param_1035
    $P103 = param_1035."!protoregex"("prefix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1329260312.462")
    .param pmc param_1037
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .lex "self", param_1037
    $P104 = param_1037."!PREFIX__!protoregex"("prefix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1329260312.462")
    .param pmc param_1039
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 23
    .lex "self", param_1039
    $P103 = param_1039."!protoregex"("postfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1329260312.462")
    .param pmc param_1041
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 23
    .lex "self", param_1041
    $P104 = param_1041."!PREFIX__!protoregex"("postfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1329260312.462")
    .param pmc param_1043
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
    .lex "self", param_1043
    $P103 = param_1043."!protoregex"("circumfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1329260312.462")
    .param pmc param_1045
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
    .lex "self", param_1045
    $P104 = param_1045."!PREFIX__!protoregex"("circumfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1329260312.462")
    .param pmc param_1047
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 25
    .lex "self", param_1047
    $P103 = param_1047."!protoregex"("postcircumfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1329260312.462")
    .param pmc param_1049
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 25
    .lex "self", param_1049
    $P104 = param_1049."!PREFIX__!protoregex"("postcircumfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 27
    .local string rx1051_tgt
    .local int rx1051_pos
    .local int rx1051_off
    .local int rx1051_eos
    .local int rx1051_rep
    .local pmc rx1051_cur
    .local pmc rx1051_debug
    (rx1051_cur, rx1051_pos, rx1051_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1051_cur
    .local pmc match
    .lex "$/", match
    length rx1051_eos, rx1051_tgt
    gt rx1051_pos, rx1051_eos, rx1051_done
    set rx1051_off, 0
    lt rx1051_pos, 2, rx1051_start
    sub rx1051_off, rx1051_pos, 1
    substr rx1051_tgt, rx1051_tgt, rx1051_off
  rx1051_start:
    eq $I10, 1, rx1051_restart
    if_null rx1051_debug, debug_309
    rx1051_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_309:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1052_done
    goto rxscan1052_scan
  rxscan1052_loop:
    (rx1051_pos) = rx1051_cur."from"()
    inc rx1051_pos
    rx1051_cur."!cursor_from"(rx1051_pos)
    ge rx1051_pos, rx1051_eos, rxscan1052_done
  rxscan1052_scan:
    set_addr $I10, rxscan1052_loop
    rx1051_cur."!mark_push"(0, rx1051_pos, $I10)
  rxscan1052_done:
  # rx subrule "circumfix" subtype=capture negate=
    rx1051_cur."!cursor_pos"(rx1051_pos)
    $P10 = rx1051_cur."circumfix"()
    unless $P10, rx1051_fail
    rx1051_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx1051_pos = $P10."pos"()
  # rx pass
    rx1051_cur."!cursor_pass"(rx1051_pos, "term:sym<circumfix>")
    if_null rx1051_debug, debug_310
    rx1051_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx1051_pos)
  debug_310:
    .return (rx1051_cur)
  rx1051_restart:
    if_null rx1051_debug, debug_311
    rx1051_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_311:
  rx1051_fail:
    (rx1051_rep, rx1051_pos, $I10, $P10) = rx1051_cur."!mark_fail"(0)
    lt rx1051_pos, -1, rx1051_done
    eq rx1051_pos, -1, rx1051_fail
    jump $I10
  rx1051_done:
    rx1051_cur."!cursor_fail"()
    if_null rx1051_debug, debug_312
    rx1051_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_312:
    .return (rx1051_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 27
    $P103 = self."!PREFIX__!subrule"("circumfix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 29
    .local string rx1055_tgt
    .local int rx1055_pos
    .local int rx1055_off
    .local int rx1055_eos
    .local int rx1055_rep
    .local pmc rx1055_cur
    .local pmc rx1055_debug
    (rx1055_cur, rx1055_pos, rx1055_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1055_cur
    .local pmc match
    .lex "$/", match
    length rx1055_eos, rx1055_tgt
    gt rx1055_pos, rx1055_eos, rx1055_done
    set rx1055_off, 0
    lt rx1055_pos, 2, rx1055_start
    sub rx1055_off, rx1055_pos, 1
    substr rx1055_tgt, rx1055_tgt, rx1055_off
  rx1055_start:
    eq $I10, 1, rx1055_restart
    if_null rx1055_debug, debug_313
    rx1055_cur."!cursor_debug"("START", "infixish")
  debug_313:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1056_done
    goto rxscan1056_scan
  rxscan1056_loop:
    (rx1055_pos) = rx1055_cur."from"()
    inc rx1055_pos
    rx1055_cur."!cursor_from"(rx1055_pos)
    ge rx1055_pos, rx1055_eos, rxscan1056_done
  rxscan1056_scan:
    set_addr $I10, rxscan1056_loop
    rx1055_cur."!mark_push"(0, rx1055_pos, $I10)
  rxscan1056_done:
  # rx subrule "infix" subtype=capture negate=
    rx1055_cur."!cursor_pos"(rx1055_pos)
    $P10 = rx1055_cur."infix"()
    unless $P10, rx1055_fail
    rx1055_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx1055_pos = $P10."pos"()
  # rx pass
    rx1055_cur."!cursor_pass"(rx1055_pos, "infixish")
    if_null rx1055_debug, debug_314
    rx1055_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx1055_pos)
  debug_314:
    .return (rx1055_cur)
  rx1055_restart:
    if_null rx1055_debug, debug_315
    rx1055_cur."!cursor_debug"("NEXT", "infixish")
  debug_315:
  rx1055_fail:
    (rx1055_rep, rx1055_pos, $I10, $P10) = rx1055_cur."!mark_fail"(0)
    lt rx1055_pos, -1, rx1055_done
    eq rx1055_pos, -1, rx1055_fail
    jump $I10
  rx1055_done:
    rx1055_cur."!cursor_fail"()
    if_null rx1055_debug, debug_316
    rx1055_cur."!cursor_debug"("FAIL", "infixish")
  debug_316:
    .return (rx1055_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("31_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 29
    $P103 = self."!PREFIX__!subrule"("infix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 30
    .local string rx1059_tgt
    .local int rx1059_pos
    .local int rx1059_off
    .local int rx1059_eos
    .local int rx1059_rep
    .local pmc rx1059_cur
    .local pmc rx1059_debug
    (rx1059_cur, rx1059_pos, rx1059_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1059_cur
    .local pmc match
    .lex "$/", match
    length rx1059_eos, rx1059_tgt
    gt rx1059_pos, rx1059_eos, rx1059_done
    set rx1059_off, 0
    lt rx1059_pos, 2, rx1059_start
    sub rx1059_off, rx1059_pos, 1
    substr rx1059_tgt, rx1059_tgt, rx1059_off
  rx1059_start:
    eq $I10, 1, rx1059_restart
    if_null rx1059_debug, debug_317
    rx1059_cur."!cursor_debug"("START", "prefixish")
  debug_317:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1060_done
    goto rxscan1060_scan
  rxscan1060_loop:
    (rx1059_pos) = rx1059_cur."from"()
    inc rx1059_pos
    rx1059_cur."!cursor_from"(rx1059_pos)
    ge rx1059_pos, rx1059_eos, rxscan1060_done
  rxscan1060_scan:
    set_addr $I10, rxscan1060_loop
    rx1059_cur."!mark_push"(0, rx1059_pos, $I10)
  rxscan1060_done:
  # rx subrule "prefix" subtype=capture negate=
    rx1059_cur."!cursor_pos"(rx1059_pos)
    $P10 = rx1059_cur."prefix"()
    unless $P10, rx1059_fail
    rx1059_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx1059_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1059_cur."!cursor_pos"(rx1059_pos)
    $P10 = rx1059_cur."ws"()
    unless $P10, rx1059_fail
    rx1059_pos = $P10."pos"()
  # rx pass
    rx1059_cur."!cursor_pass"(rx1059_pos, "prefixish")
    if_null rx1059_debug, debug_318
    rx1059_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx1059_pos)
  debug_318:
    .return (rx1059_cur)
  rx1059_restart:
    if_null rx1059_debug, debug_319
    rx1059_cur."!cursor_debug"("NEXT", "prefixish")
  debug_319:
  rx1059_fail:
    (rx1059_rep, rx1059_pos, $I10, $P10) = rx1059_cur."!mark_fail"(0)
    lt rx1059_pos, -1, rx1059_done
    eq rx1059_pos, -1, rx1059_fail
    jump $I10
  rx1059_done:
    rx1059_cur."!cursor_fail"()
    if_null rx1059_debug, debug_320
    rx1059_cur."!cursor_debug"("FAIL", "prefixish")
  debug_320:
    .return (rx1059_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("33_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 30
    $P103 = self."!PREFIX__!subrule"("prefix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 31
    .local string rx1063_tgt
    .local int rx1063_pos
    .local int rx1063_off
    .local int rx1063_eos
    .local int rx1063_rep
    .local pmc rx1063_cur
    .local pmc rx1063_debug
    (rx1063_cur, rx1063_pos, rx1063_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1063_cur
    .local pmc match
    .lex "$/", match
    length rx1063_eos, rx1063_tgt
    gt rx1063_pos, rx1063_eos, rx1063_done
    set rx1063_off, 0
    lt rx1063_pos, 2, rx1063_start
    sub rx1063_off, rx1063_pos, 1
    substr rx1063_tgt, rx1063_tgt, rx1063_off
  rx1063_start:
    eq $I10, 1, rx1063_restart
    if_null rx1063_debug, debug_321
    rx1063_cur."!cursor_debug"("START", "postfixish")
  debug_321:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1064_done
    goto rxscan1064_scan
  rxscan1064_loop:
    (rx1063_pos) = rx1063_cur."from"()
    inc rx1063_pos
    rx1063_cur."!cursor_from"(rx1063_pos)
    ge rx1063_pos, rx1063_eos, rxscan1064_done
  rxscan1064_scan:
    set_addr $I10, rxscan1064_loop
    rx1063_cur."!mark_push"(0, rx1063_pos, $I10)
  rxscan1064_done:
  alt1065_0:
    set_addr $I10, alt1065_1
    rx1063_cur."!mark_push"(0, rx1063_pos, $I10)
.annotate 'line', 32
  # rx subrule "postfix" subtype=capture negate=
    rx1063_cur."!cursor_pos"(rx1063_pos)
    $P10 = rx1063_cur."postfix"()
    unless $P10, rx1063_fail
    rx1063_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx1063_pos = $P10."pos"()
    goto alt1065_end
  alt1065_1:
.annotate 'line', 33
  # rx subrule "postcircumfix" subtype=capture negate=
    rx1063_cur."!cursor_pos"(rx1063_pos)
    $P10 = rx1063_cur."postcircumfix"()
    unless $P10, rx1063_fail
    rx1063_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx1063_pos = $P10."pos"()
  alt1065_end:
.annotate 'line', 31
  # rx pass
    rx1063_cur."!cursor_pass"(rx1063_pos, "postfixish")
    if_null rx1063_debug, debug_322
    rx1063_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx1063_pos)
  debug_322:
    .return (rx1063_cur)
  rx1063_restart:
    if_null rx1063_debug, debug_323
    rx1063_cur."!cursor_debug"("NEXT", "postfixish")
  debug_323:
  rx1063_fail:
    (rx1063_rep, rx1063_pos, $I10, $P10) = rx1063_cur."!mark_fail"(0)
    lt rx1063_pos, -1, rx1063_done
    eq rx1063_pos, -1, rx1063_fail
    jump $I10
  rx1063_done:
    rx1063_cur."!cursor_fail"()
    if_null rx1063_debug, debug_324
    rx1063_cur."!cursor_debug"("FAIL", "postfixish")
  debug_324:
    .return (rx1063_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("35_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 31
    $P103 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P104 = self."!PREFIX__!subrule"("postfix", "")
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 36
    .local string rx1068_tgt
    .local int rx1068_pos
    .local int rx1068_off
    .local int rx1068_eos
    .local int rx1068_rep
    .local pmc rx1068_cur
    .local pmc rx1068_debug
    (rx1068_cur, rx1068_pos, rx1068_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1068_cur
    .local pmc match
    .lex "$/", match
    length rx1068_eos, rx1068_tgt
    gt rx1068_pos, rx1068_eos, rx1068_done
    set rx1068_off, 0
    lt rx1068_pos, 2, rx1068_start
    sub rx1068_off, rx1068_pos, 1
    substr rx1068_tgt, rx1068_tgt, rx1068_off
  rx1068_start:
    eq $I10, 1, rx1068_restart
    if_null rx1068_debug, debug_325
    rx1068_cur."!cursor_debug"("START", "nullterm")
  debug_325:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1069_done
    goto rxscan1069_scan
  rxscan1069_loop:
    (rx1068_pos) = rx1068_cur."from"()
    inc rx1068_pos
    rx1068_cur."!cursor_from"(rx1068_pos)
    ge rx1068_pos, rx1068_eos, rxscan1069_done
  rxscan1069_scan:
    set_addr $I10, rxscan1069_loop
    rx1068_cur."!mark_push"(0, rx1068_pos, $I10)
  rxscan1069_done:
  # rx pass
    rx1068_cur."!cursor_pass"(rx1068_pos, "nullterm")
    if_null rx1068_debug, debug_326
    rx1068_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx1068_pos)
  debug_326:
    .return (rx1068_cur)
  rx1068_restart:
    if_null rx1068_debug, debug_327
    rx1068_cur."!cursor_debug"("NEXT", "nullterm")
  debug_327:
  rx1068_fail:
    (rx1068_rep, rx1068_pos, $I10, $P10) = rx1068_cur."!mark_fail"(0)
    lt rx1068_pos, -1, rx1068_done
    eq rx1068_pos, -1, rx1068_fail
    jump $I10
  rx1068_done:
    rx1068_cur."!cursor_fail"()
    if_null rx1068_debug, debug_328
    rx1068_cur."!cursor_debug"("FAIL", "nullterm")
  debug_328:
    .return (rx1068_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :subid("37_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 36
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 37
    .local string rx1072_tgt
    .local int rx1072_pos
    .local int rx1072_off
    .local int rx1072_eos
    .local int rx1072_rep
    .local pmc rx1072_cur
    .local pmc rx1072_debug
    (rx1072_cur, rx1072_pos, rx1072_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1072_cur
    .local pmc match
    .lex "$/", match
    length rx1072_eos, rx1072_tgt
    gt rx1072_pos, rx1072_eos, rx1072_done
    set rx1072_off, 0
    lt rx1072_pos, 2, rx1072_start
    sub rx1072_off, rx1072_pos, 1
    substr rx1072_tgt, rx1072_tgt, rx1072_off
  rx1072_start:
    eq $I10, 1, rx1072_restart
    if_null rx1072_debug, debug_329
    rx1072_cur."!cursor_debug"("START", "nullterm_alt")
  debug_329:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1073_done
    goto rxscan1073_scan
  rxscan1073_loop:
    (rx1072_pos) = rx1072_cur."from"()
    inc rx1072_pos
    rx1072_cur."!cursor_from"(rx1072_pos)
    ge rx1072_pos, rx1072_eos, rxscan1073_done
  rxscan1073_scan:
    set_addr $I10, rxscan1073_loop
    rx1072_cur."!mark_push"(0, rx1072_pos, $I10)
  rxscan1073_done:
  # rx subrule "nullterm" subtype=capture negate=
    rx1072_cur."!cursor_pos"(rx1072_pos)
    $P10 = rx1072_cur."nullterm"()
    unless $P10, rx1072_fail
    rx1072_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx1072_pos = $P10."pos"()
  # rx pass
    rx1072_cur."!cursor_pass"(rx1072_pos, "nullterm_alt")
    if_null rx1072_debug, debug_330
    rx1072_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx1072_pos)
  debug_330:
    .return (rx1072_cur)
  rx1072_restart:
    if_null rx1072_debug, debug_331
    rx1072_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_331:
  rx1072_fail:
    (rx1072_rep, rx1072_pos, $I10, $P10) = rx1072_cur."!mark_fail"(0)
    lt rx1072_pos, -1, rx1072_done
    eq rx1072_pos, -1, rx1072_fail
    jump $I10
  rx1072_done:
    rx1072_cur."!cursor_fail"()
    if_null rx1072_debug, debug_332
    rx1072_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_332:
    .return (rx1072_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :subid("39_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 37
    $P103 = self."!PREFIX__!subrule"("nullterm", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish" :anon :subid("40_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1076
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 40
    .lex "self", param_1076
    set $P104, param_1076
    nqp_decontainerize $P105, $P104
    $P106 = $P105."termish"()
    unless $P106, unless_1077
    set $P103, $P106
    goto unless_1077_end
  unless_1077:
    set $P107, param_1076
    nqp_decontainerize $P108, $P107
    $P109 = $P108."nullterm_alt"()
    set $P103, $P109
  unless_1077_end:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 43
    .local string rx1079_tgt
    .local int rx1079_pos
    .local int rx1079_off
    .local int rx1079_eos
    .local int rx1079_rep
    .local pmc rx1079_cur
    .local pmc rx1079_debug
    (rx1079_cur, rx1079_pos, rx1079_tgt, $I10) = self."!cursor_start"()
    rx1079_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx1079_cur
    .local pmc match
    .lex "$/", match
    length rx1079_eos, rx1079_tgt
    gt rx1079_pos, rx1079_eos, rx1079_done
    set rx1079_off, 0
    lt rx1079_pos, 2, rx1079_start
    sub rx1079_off, rx1079_pos, 1
    substr rx1079_tgt, rx1079_tgt, rx1079_off
  rx1079_start:
    eq $I10, 1, rx1079_restart
    if_null rx1079_debug, debug_333
    rx1079_cur."!cursor_debug"("START", "quote_delimited")
  debug_333:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1080_done
    goto rxscan1080_scan
  rxscan1080_loop:
    (rx1079_pos) = rx1079_cur."from"()
    inc rx1079_pos
    rx1079_cur."!cursor_from"(rx1079_pos)
    ge rx1079_pos, rx1079_eos, rxscan1080_done
  rxscan1080_scan:
    set_addr $I10, rxscan1080_loop
    rx1079_cur."!mark_push"(0, rx1079_pos, $I10)
  rxscan1080_done:
.annotate 'line', 44
  # rx subrule "starter" subtype=capture negate=
    rx1079_cur."!cursor_pos"(rx1079_pos)
    $P10 = rx1079_cur."starter"()
    unless $P10, rx1079_fail
    rx1079_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx1079_pos = $P10."pos"()
  # rx rxquantr1081 ** 0..*
    set_addr $I10, rxquantr1081_done
    rx1079_cur."!mark_push"(0, rx1079_pos, $I10)
  rxquantr1081_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx1079_cur."!cursor_pos"(rx1079_pos)
    $P10 = rx1079_cur."quote_atom"()
    unless $P10, rx1079_fail
    goto rxsubrule1082_pass
  rxsubrule1082_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1079_fail
  rxsubrule1082_pass:
    set_addr $I10, rxsubrule1082_back
    rx1079_cur."!mark_push"(0, rx1079_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx1079_pos = $P10."pos"()
    set_addr $I10, rxquantr1081_done
    (rx1079_rep) = rx1079_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1081_done
    rx1079_cur."!mark_push"(rx1079_rep, rx1079_pos, $I10)
    goto rxquantr1081_loop
  rxquantr1081_done:
  # rx subrule "stopper" subtype=capture negate=
    rx1079_cur."!cursor_pos"(rx1079_pos)
    $P10 = rx1079_cur."stopper"()
    unless $P10, rx1079_fail
    rx1079_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx1079_pos = $P10."pos"()
.annotate 'line', 43
  # rx pass
    rx1079_cur."!cursor_pass"(rx1079_pos, "quote_delimited")
    if_null rx1079_debug, debug_334
    rx1079_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx1079_pos)
  debug_334:
    .return (rx1079_cur)
  rx1079_restart:
    if_null rx1079_debug, debug_335
    rx1079_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_335:
  rx1079_fail:
    (rx1079_rep, rx1079_pos, $I10, $P10) = rx1079_cur."!mark_fail"(0)
    lt rx1079_pos, -1, rx1079_done
    eq rx1079_pos, -1, rx1079_fail
    jump $I10
  rx1079_done:
    rx1079_cur."!cursor_fail"()
    if_null rx1079_debug, debug_336
    rx1079_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_336:
    .return (rx1079_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("42_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 43
    $P103 = self."!PREFIX__!subrule"("starter", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 47
    .local string rx1085_tgt
    .local int rx1085_pos
    .local int rx1085_off
    .local int rx1085_eos
    .local int rx1085_rep
    .local pmc rx1085_cur
    .local pmc rx1085_debug
    (rx1085_cur, rx1085_pos, rx1085_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1085_cur
    .local pmc match
    .lex "$/", match
    length rx1085_eos, rx1085_tgt
    gt rx1085_pos, rx1085_eos, rx1085_done
    set rx1085_off, 0
    lt rx1085_pos, 2, rx1085_start
    sub rx1085_off, rx1085_pos, 1
    substr rx1085_tgt, rx1085_tgt, rx1085_off
  rx1085_start:
    eq $I10, 1, rx1085_restart
    if_null rx1085_debug, debug_337
    rx1085_cur."!cursor_debug"("START", "quote_atom")
  debug_337:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1086_done
    goto rxscan1086_scan
  rxscan1086_loop:
    (rx1085_pos) = rx1085_cur."from"()
    inc rx1085_pos
    rx1085_cur."!cursor_from"(rx1085_pos)
    ge rx1085_pos, rx1085_eos, rxscan1086_done
  rxscan1086_scan:
    set_addr $I10, rxscan1086_loop
    rx1085_cur."!mark_push"(0, rx1085_pos, $I10)
  rxscan1086_done:
.annotate 'line', 48
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx1085_cur."!cursor_pos"(rx1085_pos)
    $P10 = rx1085_cur."stopper"()
    if $P10, rx1085_fail
  alt1087_0:
.annotate 'line', 49
    set_addr $I10, alt1087_1
    rx1085_cur."!mark_push"(0, rx1085_pos, $I10)
.annotate 'line', 50
  # rx subrule "quote_escape" subtype=capture negate=
    rx1085_cur."!cursor_pos"(rx1085_pos)
    $P10 = rx1085_cur."quote_escape"()
    unless $P10, rx1085_fail
    rx1085_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx1085_pos = $P10."pos"()
    goto alt1087_end
  alt1087_1:
.annotate 'line', 51
  # rx rxquantr1088 ** 1..*
    set_addr $I10, rxquantr1088_done
    rx1085_cur."!mark_push"(0, -1, $I10)
  rxquantr1088_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx1085_cur."!cursor_pos"(rx1085_pos)
    $P10 = rx1085_cur."stopper"()
    if $P10, rx1085_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx1085_cur."!cursor_pos"(rx1085_pos)
    $P10 = rx1085_cur."quote_escape"()
    if $P10, rx1085_fail
  # rx charclass .
    ge rx1085_pos, rx1085_eos, rx1085_fail
    inc rx1085_pos
    set_addr $I10, rxquantr1088_done
    (rx1085_rep) = rx1085_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1088_done
    rx1085_cur."!mark_push"(rx1085_rep, rx1085_pos, $I10)
    goto rxquantr1088_loop
  rxquantr1088_done:
  alt1087_end:
.annotate 'line', 47
  # rx pass
    rx1085_cur."!cursor_pass"(rx1085_pos, "quote_atom")
    if_null rx1085_debug, debug_338
    rx1085_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx1085_pos)
  debug_338:
    .return (rx1085_cur)
  rx1085_restart:
    if_null rx1085_debug, debug_339
    rx1085_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_339:
  rx1085_fail:
    (rx1085_rep, rx1085_pos, $I10, $P10) = rx1085_cur."!mark_fail"(0)
    lt rx1085_pos, -1, rx1085_done
    eq rx1085_pos, -1, rx1085_fail
    jump $I10
  rx1085_done:
    rx1085_cur."!cursor_fail"()
    if_null rx1085_debug, debug_340
    rx1085_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_340:
    .return (rx1085_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("44_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 47
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 55
    .local string rx1091_tgt
    .local int rx1091_pos
    .local int rx1091_off
    .local int rx1091_eos
    .local int rx1091_rep
    .local pmc rx1091_cur
    .local pmc rx1091_debug
    (rx1091_cur, rx1091_pos, rx1091_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1091_cur
    .local pmc match
    .lex "$/", match
    length rx1091_eos, rx1091_tgt
    gt rx1091_pos, rx1091_eos, rx1091_done
    set rx1091_off, 0
    lt rx1091_pos, 2, rx1091_start
    sub rx1091_off, rx1091_pos, 1
    substr rx1091_tgt, rx1091_tgt, rx1091_off
  rx1091_start:
    eq $I10, 1, rx1091_restart
    if_null rx1091_debug, debug_341
    rx1091_cur."!cursor_debug"("START", "decint")
  debug_341:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1092_done
    goto rxscan1092_scan
  rxscan1092_loop:
    (rx1091_pos) = rx1091_cur."from"()
    inc rx1091_pos
    rx1091_cur."!cursor_from"(rx1091_pos)
    ge rx1091_pos, rx1091_eos, rxscan1092_done
  rxscan1092_scan:
    set_addr $I10, rxscan1092_loop
    rx1091_cur."!mark_push"(0, rx1091_pos, $I10)
  rxscan1092_done:
  # rx rxquantr1093 ** 1..*
    set_addr $I10, rxquantr1093_done
    rx1091_cur."!mark_push"(0, -1, $I10)
  rxquantr1093_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx1091_pos, rx1091_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1091_tgt, $I10, rx1091_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1091_fail
    add rx1091_pos, rx1091_off, $I11
    set_addr $I10, rxquantr1093_done
    (rx1091_rep) = rx1091_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1093_done
    rx1091_cur."!mark_push"(rx1091_rep, rx1091_pos, $I10)
  # rx literal  "_"
    add $I11, rx1091_pos, 1
    gt $I11, rx1091_eos, rx1091_fail
    sub $I11, rx1091_pos, rx1091_off
    ord $I11, rx1091_tgt, $I11
    ne $I11, 95, rx1091_fail
    add rx1091_pos, 1
    goto rxquantr1093_loop
  rxquantr1093_done:
  # rx pass
    rx1091_cur."!cursor_pass"(rx1091_pos, "decint")
    if_null rx1091_debug, debug_342
    rx1091_cur."!cursor_debug"("PASS", "decint", " at pos=", rx1091_pos)
  debug_342:
    .return (rx1091_cur)
  rx1091_restart:
    if_null rx1091_debug, debug_343
    rx1091_cur."!cursor_debug"("NEXT", "decint")
  debug_343:
  rx1091_fail:
    (rx1091_rep, rx1091_pos, $I10, $P10) = rx1091_cur."!mark_fail"(0)
    lt rx1091_pos, -1, rx1091_done
    eq rx1091_pos, -1, rx1091_fail
    jump $I10
  rx1091_done:
    rx1091_cur."!cursor_fail"()
    if_null rx1091_debug, debug_344
    rx1091_cur."!cursor_debug"("FAIL", "decint")
  debug_344:
    .return (rx1091_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :subid("46_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 55
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 56
    .local string rx1096_tgt
    .local int rx1096_pos
    .local int rx1096_off
    .local int rx1096_eos
    .local int rx1096_rep
    .local pmc rx1096_cur
    .local pmc rx1096_debug
    (rx1096_cur, rx1096_pos, rx1096_tgt, $I10) = self."!cursor_start"()
    rx1096_cur."!cursor_caparray"("decint")
    .lex unicode:"$\x{a2}", rx1096_cur
    .local pmc match
    .lex "$/", match
    length rx1096_eos, rx1096_tgt
    gt rx1096_pos, rx1096_eos, rx1096_done
    set rx1096_off, 0
    lt rx1096_pos, 2, rx1096_start
    sub rx1096_off, rx1096_pos, 1
    substr rx1096_tgt, rx1096_tgt, rx1096_off
  rx1096_start:
    eq $I10, 1, rx1096_restart
    if_null rx1096_debug, debug_345
    rx1096_cur."!cursor_debug"("START", "decints")
  debug_345:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1097_done
    goto rxscan1097_scan
  rxscan1097_loop:
    (rx1096_pos) = rx1096_cur."from"()
    inc rx1096_pos
    rx1096_cur."!cursor_from"(rx1096_pos)
    ge rx1096_pos, rx1096_eos, rxscan1097_done
  rxscan1097_scan:
    set_addr $I10, rxscan1097_loop
    rx1096_cur."!mark_push"(0, rx1096_pos, $I10)
  rxscan1097_done:
  # rx rxquantr1098 ** 1..*
    set_addr $I10, rxquantr1098_done
    rx1096_cur."!mark_push"(0, -1, $I10)
  rxquantr1098_loop:
  # rx subrule "ws" subtype=method negate=
    rx1096_cur."!cursor_pos"(rx1096_pos)
    $P10 = rx1096_cur."ws"()
    unless $P10, rx1096_fail
    rx1096_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx1096_cur."!cursor_pos"(rx1096_pos)
    $P10 = rx1096_cur."decint"()
    unless $P10, rx1096_fail
    rx1096_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx1096_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1096_cur."!cursor_pos"(rx1096_pos)
    $P10 = rx1096_cur."ws"()
    unless $P10, rx1096_fail
    rx1096_pos = $P10."pos"()
    set_addr $I10, rxquantr1098_done
    (rx1096_rep) = rx1096_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1098_done
    rx1096_cur."!mark_push"(rx1096_rep, rx1096_pos, $I10)
  # rx literal  ","
    add $I11, rx1096_pos, 1
    gt $I11, rx1096_eos, rx1096_fail
    sub $I11, rx1096_pos, rx1096_off
    ord $I11, rx1096_tgt, $I11
    ne $I11, 44, rx1096_fail
    add rx1096_pos, 1
    goto rxquantr1098_loop
  rxquantr1098_done:
  # rx pass
    rx1096_cur."!cursor_pass"(rx1096_pos, "decints")
    if_null rx1096_debug, debug_346
    rx1096_cur."!cursor_debug"("PASS", "decints", " at pos=", rx1096_pos)
  debug_346:
    .return (rx1096_cur)
  rx1096_restart:
    if_null rx1096_debug, debug_347
    rx1096_cur."!cursor_debug"("NEXT", "decints")
  debug_347:
  rx1096_fail:
    (rx1096_rep, rx1096_pos, $I10, $P10) = rx1096_cur."!mark_fail"(0)
    lt rx1096_pos, -1, rx1096_done
    eq rx1096_pos, -1, rx1096_fail
    jump $I10
  rx1096_done:
    rx1096_cur."!cursor_fail"()
    if_null rx1096_debug, debug_348
    rx1096_cur."!cursor_debug"("FAIL", "decints")
  debug_348:
    .return (rx1096_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :subid("48_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 56
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 58
    .local string rx1101_tgt
    .local int rx1101_pos
    .local int rx1101_off
    .local int rx1101_eos
    .local int rx1101_rep
    .local pmc rx1101_cur
    .local pmc rx1101_debug
    (rx1101_cur, rx1101_pos, rx1101_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1101_cur
    .local pmc match
    .lex "$/", match
    length rx1101_eos, rx1101_tgt
    gt rx1101_pos, rx1101_eos, rx1101_done
    set rx1101_off, 0
    lt rx1101_pos, 2, rx1101_start
    sub rx1101_off, rx1101_pos, 1
    substr rx1101_tgt, rx1101_tgt, rx1101_off
  rx1101_start:
    eq $I10, 1, rx1101_restart
    if_null rx1101_debug, debug_349
    rx1101_cur."!cursor_debug"("START", "hexint")
  debug_349:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1102_done
    goto rxscan1102_scan
  rxscan1102_loop:
    (rx1101_pos) = rx1101_cur."from"()
    inc rx1101_pos
    rx1101_cur."!cursor_from"(rx1101_pos)
    ge rx1101_pos, rx1101_eos, rxscan1102_done
  rxscan1102_scan:
    set_addr $I10, rxscan1102_loop
    rx1101_cur."!mark_push"(0, rx1101_pos, $I10)
  rxscan1102_done:
  # rx rxquantr1103 ** 1..*
    set_addr $I10, rxquantr1103_done
    rx1101_cur."!mark_push"(0, -1, $I10)
  rxquantr1103_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx1101_pos, rx1101_off
    set rx1101_rep, 0
    sub $I12, rx1101_eos, rx1101_pos
  rxenumcharlistq1104_loop:
    le $I12, 0, rxenumcharlistq1104_done
    substr $S10, rx1101_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq1104_done
    inc rx1101_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq1104_loop
  rxenumcharlistq1104_done:
    lt rx1101_rep, 1, rx1101_fail
    add rx1101_pos, rx1101_pos, rx1101_rep
    set_addr $I10, rxquantr1103_done
    (rx1101_rep) = rx1101_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1103_done
    rx1101_cur."!mark_push"(rx1101_rep, rx1101_pos, $I10)
  # rx literal  "_"
    add $I11, rx1101_pos, 1
    gt $I11, rx1101_eos, rx1101_fail
    sub $I11, rx1101_pos, rx1101_off
    ord $I11, rx1101_tgt, $I11
    ne $I11, 95, rx1101_fail
    add rx1101_pos, 1
    goto rxquantr1103_loop
  rxquantr1103_done:
  # rx pass
    rx1101_cur."!cursor_pass"(rx1101_pos, "hexint")
    if_null rx1101_debug, debug_350
    rx1101_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx1101_pos)
  debug_350:
    .return (rx1101_cur)
  rx1101_restart:
    if_null rx1101_debug, debug_351
    rx1101_cur."!cursor_debug"("NEXT", "hexint")
  debug_351:
  rx1101_fail:
    (rx1101_rep, rx1101_pos, $I10, $P10) = rx1101_cur."!mark_fail"(0)
    lt rx1101_pos, -1, rx1101_done
    eq rx1101_pos, -1, rx1101_fail
    jump $I10
  rx1101_done:
    rx1101_cur."!cursor_fail"()
    if_null rx1101_debug, debug_352
    rx1101_cur."!cursor_debug"("FAIL", "hexint")
  debug_352:
    .return (rx1101_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("50_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 58
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 59
    .local string rx1107_tgt
    .local int rx1107_pos
    .local int rx1107_off
    .local int rx1107_eos
    .local int rx1107_rep
    .local pmc rx1107_cur
    .local pmc rx1107_debug
    (rx1107_cur, rx1107_pos, rx1107_tgt, $I10) = self."!cursor_start"()
    rx1107_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx1107_cur
    .local pmc match
    .lex "$/", match
    length rx1107_eos, rx1107_tgt
    gt rx1107_pos, rx1107_eos, rx1107_done
    set rx1107_off, 0
    lt rx1107_pos, 2, rx1107_start
    sub rx1107_off, rx1107_pos, 1
    substr rx1107_tgt, rx1107_tgt, rx1107_off
  rx1107_start:
    eq $I10, 1, rx1107_restart
    if_null rx1107_debug, debug_353
    rx1107_cur."!cursor_debug"("START", "hexints")
  debug_353:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1108_done
    goto rxscan1108_scan
  rxscan1108_loop:
    (rx1107_pos) = rx1107_cur."from"()
    inc rx1107_pos
    rx1107_cur."!cursor_from"(rx1107_pos)
    ge rx1107_pos, rx1107_eos, rxscan1108_done
  rxscan1108_scan:
    set_addr $I10, rxscan1108_loop
    rx1107_cur."!mark_push"(0, rx1107_pos, $I10)
  rxscan1108_done:
  # rx rxquantr1109 ** 1..*
    set_addr $I10, rxquantr1109_done
    rx1107_cur."!mark_push"(0, -1, $I10)
  rxquantr1109_loop:
  # rx subrule "ws" subtype=method negate=
    rx1107_cur."!cursor_pos"(rx1107_pos)
    $P10 = rx1107_cur."ws"()
    unless $P10, rx1107_fail
    rx1107_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx1107_cur."!cursor_pos"(rx1107_pos)
    $P10 = rx1107_cur."hexint"()
    unless $P10, rx1107_fail
    rx1107_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx1107_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1107_cur."!cursor_pos"(rx1107_pos)
    $P10 = rx1107_cur."ws"()
    unless $P10, rx1107_fail
    rx1107_pos = $P10."pos"()
    set_addr $I10, rxquantr1109_done
    (rx1107_rep) = rx1107_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1109_done
    rx1107_cur."!mark_push"(rx1107_rep, rx1107_pos, $I10)
  # rx literal  ","
    add $I11, rx1107_pos, 1
    gt $I11, rx1107_eos, rx1107_fail
    sub $I11, rx1107_pos, rx1107_off
    ord $I11, rx1107_tgt, $I11
    ne $I11, 44, rx1107_fail
    add rx1107_pos, 1
    goto rxquantr1109_loop
  rxquantr1109_done:
  # rx pass
    rx1107_cur."!cursor_pass"(rx1107_pos, "hexints")
    if_null rx1107_debug, debug_354
    rx1107_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx1107_pos)
  debug_354:
    .return (rx1107_cur)
  rx1107_restart:
    if_null rx1107_debug, debug_355
    rx1107_cur."!cursor_debug"("NEXT", "hexints")
  debug_355:
  rx1107_fail:
    (rx1107_rep, rx1107_pos, $I10, $P10) = rx1107_cur."!mark_fail"(0)
    lt rx1107_pos, -1, rx1107_done
    eq rx1107_pos, -1, rx1107_fail
    jump $I10
  rx1107_done:
    rx1107_cur."!cursor_fail"()
    if_null rx1107_debug, debug_356
    rx1107_cur."!cursor_debug"("FAIL", "hexints")
  debug_356:
    .return (rx1107_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("52_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 59
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 61
    .local string rx1112_tgt
    .local int rx1112_pos
    .local int rx1112_off
    .local int rx1112_eos
    .local int rx1112_rep
    .local pmc rx1112_cur
    .local pmc rx1112_debug
    (rx1112_cur, rx1112_pos, rx1112_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1112_cur
    .local pmc match
    .lex "$/", match
    length rx1112_eos, rx1112_tgt
    gt rx1112_pos, rx1112_eos, rx1112_done
    set rx1112_off, 0
    lt rx1112_pos, 2, rx1112_start
    sub rx1112_off, rx1112_pos, 1
    substr rx1112_tgt, rx1112_tgt, rx1112_off
  rx1112_start:
    eq $I10, 1, rx1112_restart
    if_null rx1112_debug, debug_357
    rx1112_cur."!cursor_debug"("START", "octint")
  debug_357:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1113_done
    goto rxscan1113_scan
  rxscan1113_loop:
    (rx1112_pos) = rx1112_cur."from"()
    inc rx1112_pos
    rx1112_cur."!cursor_from"(rx1112_pos)
    ge rx1112_pos, rx1112_eos, rxscan1113_done
  rxscan1113_scan:
    set_addr $I10, rxscan1113_loop
    rx1112_cur."!mark_push"(0, rx1112_pos, $I10)
  rxscan1113_done:
  # rx rxquantr1114 ** 1..*
    set_addr $I10, rxquantr1114_done
    rx1112_cur."!mark_push"(0, -1, $I10)
  rxquantr1114_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx1112_pos, rx1112_off
    set rx1112_rep, 0
    sub $I12, rx1112_eos, rx1112_pos
  rxenumcharlistq1115_loop:
    le $I12, 0, rxenumcharlistq1115_done
    substr $S10, rx1112_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq1115_done
    inc rx1112_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq1115_loop
  rxenumcharlistq1115_done:
    lt rx1112_rep, 1, rx1112_fail
    add rx1112_pos, rx1112_pos, rx1112_rep
    set_addr $I10, rxquantr1114_done
    (rx1112_rep) = rx1112_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1114_done
    rx1112_cur."!mark_push"(rx1112_rep, rx1112_pos, $I10)
  # rx literal  "_"
    add $I11, rx1112_pos, 1
    gt $I11, rx1112_eos, rx1112_fail
    sub $I11, rx1112_pos, rx1112_off
    ord $I11, rx1112_tgt, $I11
    ne $I11, 95, rx1112_fail
    add rx1112_pos, 1
    goto rxquantr1114_loop
  rxquantr1114_done:
  # rx pass
    rx1112_cur."!cursor_pass"(rx1112_pos, "octint")
    if_null rx1112_debug, debug_358
    rx1112_cur."!cursor_debug"("PASS", "octint", " at pos=", rx1112_pos)
  debug_358:
    .return (rx1112_cur)
  rx1112_restart:
    if_null rx1112_debug, debug_359
    rx1112_cur."!cursor_debug"("NEXT", "octint")
  debug_359:
  rx1112_fail:
    (rx1112_rep, rx1112_pos, $I10, $P10) = rx1112_cur."!mark_fail"(0)
    lt rx1112_pos, -1, rx1112_done
    eq rx1112_pos, -1, rx1112_fail
    jump $I10
  rx1112_done:
    rx1112_cur."!cursor_fail"()
    if_null rx1112_debug, debug_360
    rx1112_cur."!cursor_debug"("FAIL", "octint")
  debug_360:
    .return (rx1112_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("54_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 61
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 62
    .local string rx1118_tgt
    .local int rx1118_pos
    .local int rx1118_off
    .local int rx1118_eos
    .local int rx1118_rep
    .local pmc rx1118_cur
    .local pmc rx1118_debug
    (rx1118_cur, rx1118_pos, rx1118_tgt, $I10) = self."!cursor_start"()
    rx1118_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx1118_cur
    .local pmc match
    .lex "$/", match
    length rx1118_eos, rx1118_tgt
    gt rx1118_pos, rx1118_eos, rx1118_done
    set rx1118_off, 0
    lt rx1118_pos, 2, rx1118_start
    sub rx1118_off, rx1118_pos, 1
    substr rx1118_tgt, rx1118_tgt, rx1118_off
  rx1118_start:
    eq $I10, 1, rx1118_restart
    if_null rx1118_debug, debug_361
    rx1118_cur."!cursor_debug"("START", "octints")
  debug_361:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1119_done
    goto rxscan1119_scan
  rxscan1119_loop:
    (rx1118_pos) = rx1118_cur."from"()
    inc rx1118_pos
    rx1118_cur."!cursor_from"(rx1118_pos)
    ge rx1118_pos, rx1118_eos, rxscan1119_done
  rxscan1119_scan:
    set_addr $I10, rxscan1119_loop
    rx1118_cur."!mark_push"(0, rx1118_pos, $I10)
  rxscan1119_done:
  # rx rxquantr1120 ** 1..*
    set_addr $I10, rxquantr1120_done
    rx1118_cur."!mark_push"(0, -1, $I10)
  rxquantr1120_loop:
  # rx subrule "ws" subtype=method negate=
    rx1118_cur."!cursor_pos"(rx1118_pos)
    $P10 = rx1118_cur."ws"()
    unless $P10, rx1118_fail
    rx1118_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx1118_cur."!cursor_pos"(rx1118_pos)
    $P10 = rx1118_cur."octint"()
    unless $P10, rx1118_fail
    rx1118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx1118_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1118_cur."!cursor_pos"(rx1118_pos)
    $P10 = rx1118_cur."ws"()
    unless $P10, rx1118_fail
    rx1118_pos = $P10."pos"()
    set_addr $I10, rxquantr1120_done
    (rx1118_rep) = rx1118_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1120_done
    rx1118_cur."!mark_push"(rx1118_rep, rx1118_pos, $I10)
  # rx literal  ","
    add $I11, rx1118_pos, 1
    gt $I11, rx1118_eos, rx1118_fail
    sub $I11, rx1118_pos, rx1118_off
    ord $I11, rx1118_tgt, $I11
    ne $I11, 44, rx1118_fail
    add rx1118_pos, 1
    goto rxquantr1120_loop
  rxquantr1120_done:
  # rx pass
    rx1118_cur."!cursor_pass"(rx1118_pos, "octints")
    if_null rx1118_debug, debug_362
    rx1118_cur."!cursor_debug"("PASS", "octints", " at pos=", rx1118_pos)
  debug_362:
    .return (rx1118_cur)
  rx1118_restart:
    if_null rx1118_debug, debug_363
    rx1118_cur."!cursor_debug"("NEXT", "octints")
  debug_363:
  rx1118_fail:
    (rx1118_rep, rx1118_pos, $I10, $P10) = rx1118_cur."!mark_fail"(0)
    lt rx1118_pos, -1, rx1118_done
    eq rx1118_pos, -1, rx1118_fail
    jump $I10
  rx1118_done:
    rx1118_cur."!cursor_fail"()
    if_null rx1118_debug, debug_364
    rx1118_cur."!cursor_debug"("FAIL", "octints")
  debug_364:
    .return (rx1118_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("56_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 62
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 64
    .local string rx1123_tgt
    .local int rx1123_pos
    .local int rx1123_off
    .local int rx1123_eos
    .local int rx1123_rep
    .local pmc rx1123_cur
    .local pmc rx1123_debug
    (rx1123_cur, rx1123_pos, rx1123_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1123_cur
    .local pmc match
    .lex "$/", match
    length rx1123_eos, rx1123_tgt
    gt rx1123_pos, rx1123_eos, rx1123_done
    set rx1123_off, 0
    lt rx1123_pos, 2, rx1123_start
    sub rx1123_off, rx1123_pos, 1
    substr rx1123_tgt, rx1123_tgt, rx1123_off
  rx1123_start:
    eq $I10, 1, rx1123_restart
    if_null rx1123_debug, debug_365
    rx1123_cur."!cursor_debug"("START", "binint")
  debug_365:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1124_done
    goto rxscan1124_scan
  rxscan1124_loop:
    (rx1123_pos) = rx1123_cur."from"()
    inc rx1123_pos
    rx1123_cur."!cursor_from"(rx1123_pos)
    ge rx1123_pos, rx1123_eos, rxscan1124_done
  rxscan1124_scan:
    set_addr $I10, rxscan1124_loop
    rx1123_cur."!mark_push"(0, rx1123_pos, $I10)
  rxscan1124_done:
  # rx rxquantr1125 ** 1..*
    set_addr $I10, rxquantr1125_done
    rx1123_cur."!mark_push"(0, -1, $I10)
  rxquantr1125_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx1123_pos, rx1123_off
    set rx1123_rep, 0
    sub $I12, rx1123_eos, rx1123_pos
  rxenumcharlistq1126_loop:
    le $I12, 0, rxenumcharlistq1126_done
    substr $S10, rx1123_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq1126_done
    inc rx1123_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq1126_loop
  rxenumcharlistq1126_done:
    lt rx1123_rep, 1, rx1123_fail
    add rx1123_pos, rx1123_pos, rx1123_rep
    set_addr $I10, rxquantr1125_done
    (rx1123_rep) = rx1123_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1125_done
    rx1123_cur."!mark_push"(rx1123_rep, rx1123_pos, $I10)
  # rx literal  "_"
    add $I11, rx1123_pos, 1
    gt $I11, rx1123_eos, rx1123_fail
    sub $I11, rx1123_pos, rx1123_off
    ord $I11, rx1123_tgt, $I11
    ne $I11, 95, rx1123_fail
    add rx1123_pos, 1
    goto rxquantr1125_loop
  rxquantr1125_done:
  # rx pass
    rx1123_cur."!cursor_pass"(rx1123_pos, "binint")
    if_null rx1123_debug, debug_366
    rx1123_cur."!cursor_debug"("PASS", "binint", " at pos=", rx1123_pos)
  debug_366:
    .return (rx1123_cur)
  rx1123_restart:
    if_null rx1123_debug, debug_367
    rx1123_cur."!cursor_debug"("NEXT", "binint")
  debug_367:
  rx1123_fail:
    (rx1123_rep, rx1123_pos, $I10, $P10) = rx1123_cur."!mark_fail"(0)
    lt rx1123_pos, -1, rx1123_done
    eq rx1123_pos, -1, rx1123_fail
    jump $I10
  rx1123_done:
    rx1123_cur."!cursor_fail"()
    if_null rx1123_debug, debug_368
    rx1123_cur."!cursor_debug"("FAIL", "binint")
  debug_368:
    .return (rx1123_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :subid("58_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 64
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 65
    .local string rx1129_tgt
    .local int rx1129_pos
    .local int rx1129_off
    .local int rx1129_eos
    .local int rx1129_rep
    .local pmc rx1129_cur
    .local pmc rx1129_debug
    (rx1129_cur, rx1129_pos, rx1129_tgt, $I10) = self."!cursor_start"()
    rx1129_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx1129_cur
    .local pmc match
    .lex "$/", match
    length rx1129_eos, rx1129_tgt
    gt rx1129_pos, rx1129_eos, rx1129_done
    set rx1129_off, 0
    lt rx1129_pos, 2, rx1129_start
    sub rx1129_off, rx1129_pos, 1
    substr rx1129_tgt, rx1129_tgt, rx1129_off
  rx1129_start:
    eq $I10, 1, rx1129_restart
    if_null rx1129_debug, debug_369
    rx1129_cur."!cursor_debug"("START", "binints")
  debug_369:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1130_done
    goto rxscan1130_scan
  rxscan1130_loop:
    (rx1129_pos) = rx1129_cur."from"()
    inc rx1129_pos
    rx1129_cur."!cursor_from"(rx1129_pos)
    ge rx1129_pos, rx1129_eos, rxscan1130_done
  rxscan1130_scan:
    set_addr $I10, rxscan1130_loop
    rx1129_cur."!mark_push"(0, rx1129_pos, $I10)
  rxscan1130_done:
  # rx rxquantr1131 ** 1..*
    set_addr $I10, rxquantr1131_done
    rx1129_cur."!mark_push"(0, -1, $I10)
  rxquantr1131_loop:
  # rx subrule "ws" subtype=method negate=
    rx1129_cur."!cursor_pos"(rx1129_pos)
    $P10 = rx1129_cur."ws"()
    unless $P10, rx1129_fail
    rx1129_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx1129_cur."!cursor_pos"(rx1129_pos)
    $P10 = rx1129_cur."binint"()
    unless $P10, rx1129_fail
    rx1129_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx1129_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1129_cur."!cursor_pos"(rx1129_pos)
    $P10 = rx1129_cur."ws"()
    unless $P10, rx1129_fail
    rx1129_pos = $P10."pos"()
    set_addr $I10, rxquantr1131_done
    (rx1129_rep) = rx1129_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1131_done
    rx1129_cur."!mark_push"(rx1129_rep, rx1129_pos, $I10)
  # rx literal  ","
    add $I11, rx1129_pos, 1
    gt $I11, rx1129_eos, rx1129_fail
    sub $I11, rx1129_pos, rx1129_off
    ord $I11, rx1129_tgt, $I11
    ne $I11, 44, rx1129_fail
    add rx1129_pos, 1
    goto rxquantr1131_loop
  rxquantr1131_done:
  # rx pass
    rx1129_cur."!cursor_pass"(rx1129_pos, "binints")
    if_null rx1129_debug, debug_370
    rx1129_cur."!cursor_debug"("PASS", "binints", " at pos=", rx1129_pos)
  debug_370:
    .return (rx1129_cur)
  rx1129_restart:
    if_null rx1129_debug, debug_371
    rx1129_cur."!cursor_debug"("NEXT", "binints")
  debug_371:
  rx1129_fail:
    (rx1129_rep, rx1129_pos, $I10, $P10) = rx1129_cur."!mark_fail"(0)
    lt rx1129_pos, -1, rx1129_done
    eq rx1129_pos, -1, rx1129_fail
    jump $I10
  rx1129_done:
    rx1129_cur."!cursor_fail"()
    if_null rx1129_debug, debug_372
    rx1129_cur."!cursor_debug"("FAIL", "binints")
  debug_372:
    .return (rx1129_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :subid("60_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 65
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 67
    .local string rx1134_tgt
    .local int rx1134_pos
    .local int rx1134_off
    .local int rx1134_eos
    .local int rx1134_rep
    .local pmc rx1134_cur
    .local pmc rx1134_debug
    (rx1134_cur, rx1134_pos, rx1134_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1134_cur
    .local pmc match
    .lex "$/", match
    length rx1134_eos, rx1134_tgt
    gt rx1134_pos, rx1134_eos, rx1134_done
    set rx1134_off, 0
    lt rx1134_pos, 2, rx1134_start
    sub rx1134_off, rx1134_pos, 1
    substr rx1134_tgt, rx1134_tgt, rx1134_off
  rx1134_start:
    eq $I10, 1, rx1134_restart
    if_null rx1134_debug, debug_373
    rx1134_cur."!cursor_debug"("START", "integer")
  debug_373:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1135_done
    goto rxscan1135_scan
  rxscan1135_loop:
    (rx1134_pos) = rx1134_cur."from"()
    inc rx1134_pos
    rx1134_cur."!cursor_from"(rx1134_pos)
    ge rx1134_pos, rx1134_eos, rxscan1135_done
  rxscan1135_scan:
    set_addr $I10, rxscan1135_loop
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
  rxscan1135_done:
  alt1136_0:
.annotate 'line', 68
    set_addr $I10, alt1136_1
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
.annotate 'line', 69
  # rx literal  "0"
    add $I11, rx1134_pos, 1
    gt $I11, rx1134_eos, rx1134_fail
    sub $I11, rx1134_pos, rx1134_off
    ord $I11, rx1134_tgt, $I11
    ne $I11, 48, rx1134_fail
    add rx1134_pos, 1
  alt1137_0:
    set_addr $I10, alt1137_1
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
  # rx literal  "b"
    add $I11, rx1134_pos, 1
    gt $I11, rx1134_eos, rx1134_fail
    sub $I11, rx1134_pos, rx1134_off
    ord $I11, rx1134_tgt, $I11
    ne $I11, 98, rx1134_fail
    add rx1134_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx1134_cur."!cursor_pos"(rx1134_pos)
    $P10 = rx1134_cur."binint"()
    unless $P10, rx1134_fail
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx1134_pos = $P10."pos"()
    goto alt1137_end
  alt1137_1:
    set_addr $I10, alt1137_2
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
.annotate 'line', 70
  # rx literal  "o"
    add $I11, rx1134_pos, 1
    gt $I11, rx1134_eos, rx1134_fail
    sub $I11, rx1134_pos, rx1134_off
    ord $I11, rx1134_tgt, $I11
    ne $I11, 111, rx1134_fail
    add rx1134_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx1134_cur."!cursor_pos"(rx1134_pos)
    $P10 = rx1134_cur."octint"()
    unless $P10, rx1134_fail
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx1134_pos = $P10."pos"()
    goto alt1137_end
  alt1137_2:
    set_addr $I10, alt1137_3
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
.annotate 'line', 71
  # rx literal  "x"
    add $I11, rx1134_pos, 1
    gt $I11, rx1134_eos, rx1134_fail
    sub $I11, rx1134_pos, rx1134_off
    ord $I11, rx1134_tgt, $I11
    ne $I11, 120, rx1134_fail
    add rx1134_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx1134_cur."!cursor_pos"(rx1134_pos)
    $P10 = rx1134_cur."hexint"()
    unless $P10, rx1134_fail
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx1134_pos = $P10."pos"()
    goto alt1137_end
  alt1137_3:
.annotate 'line', 72
  # rx literal  "d"
    add $I11, rx1134_pos, 1
    gt $I11, rx1134_eos, rx1134_fail
    sub $I11, rx1134_pos, rx1134_off
    ord $I11, rx1134_tgt, $I11
    ne $I11, 100, rx1134_fail
    add rx1134_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx1134_cur."!cursor_pos"(rx1134_pos)
    $P10 = rx1134_cur."decint"()
    unless $P10, rx1134_fail
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx1134_pos = $P10."pos"()
  alt1137_end:
.annotate 'line', 69
    goto alt1136_end
  alt1136_1:
.annotate 'line', 74
  # rx subrule "decint" subtype=capture negate=
    rx1134_cur."!cursor_pos"(rx1134_pos)
    $P10 = rx1134_cur."decint"()
    unless $P10, rx1134_fail
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx1134_pos = $P10."pos"()
  alt1136_end:
.annotate 'line', 67
  # rx pass
    rx1134_cur."!cursor_pass"(rx1134_pos, "integer")
    if_null rx1134_debug, debug_374
    rx1134_cur."!cursor_debug"("PASS", "integer", " at pos=", rx1134_pos)
  debug_374:
    .return (rx1134_cur)
  rx1134_restart:
    if_null rx1134_debug, debug_375
    rx1134_cur."!cursor_debug"("NEXT", "integer")
  debug_375:
  rx1134_fail:
    (rx1134_rep, rx1134_pos, $I10, $P10) = rx1134_cur."!mark_fail"(0)
    lt rx1134_pos, -1, rx1134_done
    eq rx1134_pos, -1, rx1134_fail
    jump $I10
  rx1134_done:
    rx1134_cur."!cursor_fail"()
    if_null rx1134_debug, debug_376
    rx1134_cur."!cursor_debug"("FAIL", "integer")
  debug_376:
    .return (rx1134_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("62_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 67
    $P103 = self."!PREFIX__!subrule"("decint", "")
    $P104 = self."!PREFIX__!subrule"("decint", "0d")
    $P105 = self."!PREFIX__!subrule"("hexint", "0x")
    $P106 = self."!PREFIX__!subrule"("octint", "0o")
    $P107 = self."!PREFIX__!subrule"("binint", "0b")
    new $P108, "ResizablePMCArray"
    push $P108, $P103
    push $P108, $P104
    push $P108, $P105
    push $P108, $P106
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 78
    .local string rx1140_tgt
    .local int rx1140_pos
    .local int rx1140_off
    .local int rx1140_eos
    .local int rx1140_rep
    .local pmc rx1140_cur
    .local pmc rx1140_debug
    (rx1140_cur, rx1140_pos, rx1140_tgt, $I10) = self."!cursor_start"()
    rx1140_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx1140_cur
    .local pmc match
    .lex "$/", match
    length rx1140_eos, rx1140_tgt
    gt rx1140_pos, rx1140_eos, rx1140_done
    set rx1140_off, 0
    lt rx1140_pos, 2, rx1140_start
    sub rx1140_off, rx1140_pos, 1
    substr rx1140_tgt, rx1140_tgt, rx1140_off
  rx1140_start:
    eq $I10, 1, rx1140_restart
    if_null rx1140_debug, debug_377
    rx1140_cur."!cursor_debug"("START", "dec_number")
  debug_377:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1141_done
    goto rxscan1141_scan
  rxscan1141_loop:
    (rx1140_pos) = rx1140_cur."from"()
    inc rx1140_pos
    rx1140_cur."!cursor_from"(rx1140_pos)
    ge rx1140_pos, rx1140_eos, rxscan1141_done
  rxscan1141_scan:
    set_addr $I10, rxscan1141_loop
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  rxscan1141_done:
  alt1142_0:
    set_addr $I10, alt1142_1
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
.annotate 'line', 79
  # rx subcapture "coeff"
    set_addr $I10, rxcap_1143_fail
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  # rx literal  "."
    add $I11, rx1140_pos, 1
    gt $I11, rx1140_eos, rx1140_fail
    sub $I11, rx1140_pos, rx1140_off
    ord $I11, rx1140_tgt, $I11
    ne $I11, 46, rx1140_fail
    add rx1140_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx1140_pos, rx1140_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1140_tgt, $I10, rx1140_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1140_fail
    add rx1140_pos, rx1140_off, $I11
    set_addr $I10, rxcap_1143_fail
    ($I12, $I11) = rx1140_cur."!mark_peek"($I10)
    rx1140_cur."!cursor_pos"($I11)
    ($P10) = rx1140_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1140_pos, "")
    rx1140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_1143_done
  rxcap_1143_fail:
    goto rx1140_fail
  rxcap_1143_done:
  # rx rxquantr1144 ** 0..1
    set_addr $I10, rxquantr1144_done
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  rxquantr1144_loop:
  # rx subrule "escale" subtype=capture negate=
    rx1140_cur."!cursor_pos"(rx1140_pos)
    $P10 = rx1140_cur."escale"()
    unless $P10, rx1140_fail
    goto rxsubrule1145_pass
  rxsubrule1145_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1140_fail
  rxsubrule1145_pass:
    set_addr $I10, rxsubrule1145_back
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx1140_pos = $P10."pos"()
    set_addr $I10, rxquantr1144_done
    (rx1140_rep) = rx1140_cur."!mark_commit"($I10)
  rxquantr1144_done:
    goto alt1142_end
  alt1142_1:
    set_addr $I10, alt1142_2
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
.annotate 'line', 80
  # rx subcapture "coeff"
    set_addr $I10, rxcap_1146_fail
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx1140_pos, rx1140_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1140_tgt, $I10, rx1140_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1140_fail
    add rx1140_pos, rx1140_off, $I11
  # rx literal  "."
    add $I11, rx1140_pos, 1
    gt $I11, rx1140_eos, rx1140_fail
    sub $I11, rx1140_pos, rx1140_off
    ord $I11, rx1140_tgt, $I11
    ne $I11, 46, rx1140_fail
    add rx1140_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx1140_pos, rx1140_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1140_tgt, $I10, rx1140_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1140_fail
    add rx1140_pos, rx1140_off, $I11
    set_addr $I10, rxcap_1146_fail
    ($I12, $I11) = rx1140_cur."!mark_peek"($I10)
    rx1140_cur."!cursor_pos"($I11)
    ($P10) = rx1140_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1140_pos, "")
    rx1140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_1146_done
  rxcap_1146_fail:
    goto rx1140_fail
  rxcap_1146_done:
  # rx rxquantr1147 ** 0..1
    set_addr $I10, rxquantr1147_done
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  rxquantr1147_loop:
  # rx subrule "escale" subtype=capture negate=
    rx1140_cur."!cursor_pos"(rx1140_pos)
    $P10 = rx1140_cur."escale"()
    unless $P10, rx1140_fail
    goto rxsubrule1148_pass
  rxsubrule1148_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1140_fail
  rxsubrule1148_pass:
    set_addr $I10, rxsubrule1148_back
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx1140_pos = $P10."pos"()
    set_addr $I10, rxquantr1147_done
    (rx1140_rep) = rx1140_cur."!mark_commit"($I10)
  rxquantr1147_done:
    goto alt1142_end
  alt1142_2:
.annotate 'line', 81
  # rx subcapture "coeff"
    set_addr $I10, rxcap_1149_fail
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx1140_pos, rx1140_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1140_tgt, $I10, rx1140_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1140_fail
    add rx1140_pos, rx1140_off, $I11
    set_addr $I10, rxcap_1149_fail
    ($I12, $I11) = rx1140_cur."!mark_peek"($I10)
    rx1140_cur."!cursor_pos"($I11)
    ($P10) = rx1140_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1140_pos, "")
    rx1140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_1149_done
  rxcap_1149_fail:
    goto rx1140_fail
  rxcap_1149_done:
  # rx subrule "escale" subtype=capture negate=
    rx1140_cur."!cursor_pos"(rx1140_pos)
    $P10 = rx1140_cur."escale"()
    unless $P10, rx1140_fail
    rx1140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx1140_pos = $P10."pos"()
  alt1142_end:
.annotate 'line', 78
  # rx pass
    rx1140_cur."!cursor_pass"(rx1140_pos, "dec_number")
    if_null rx1140_debug, debug_378
    rx1140_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx1140_pos)
  debug_378:
    .return (rx1140_cur)
  rx1140_restart:
    if_null rx1140_debug, debug_379
    rx1140_cur."!cursor_debug"("NEXT", "dec_number")
  debug_379:
  rx1140_fail:
    (rx1140_rep, rx1140_pos, $I10, $P10) = rx1140_cur."!mark_fail"(0)
    lt rx1140_pos, -1, rx1140_done
    eq rx1140_pos, -1, rx1140_fail
    jump $I10
  rx1140_done:
    rx1140_cur."!cursor_fail"()
    if_null rx1140_debug, debug_380
    rx1140_cur."!cursor_debug"("FAIL", "dec_number")
  debug_380:
    .return (rx1140_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :subid("64_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 78
    new $P103, "ResizablePMCArray"
    push $P103, ""
    push $P103, ""
    push $P103, "."
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 84
    .local string rx1152_tgt
    .local int rx1152_pos
    .local int rx1152_off
    .local int rx1152_eos
    .local int rx1152_rep
    .local pmc rx1152_cur
    .local pmc rx1152_debug
    (rx1152_cur, rx1152_pos, rx1152_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1152_cur
    .local pmc match
    .lex "$/", match
    length rx1152_eos, rx1152_tgt
    gt rx1152_pos, rx1152_eos, rx1152_done
    set rx1152_off, 0
    lt rx1152_pos, 2, rx1152_start
    sub rx1152_off, rx1152_pos, 1
    substr rx1152_tgt, rx1152_tgt, rx1152_off
  rx1152_start:
    eq $I10, 1, rx1152_restart
    if_null rx1152_debug, debug_381
    rx1152_cur."!cursor_debug"("START", "escale")
  debug_381:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1153_done
    goto rxscan1153_scan
  rxscan1153_loop:
    (rx1152_pos) = rx1152_cur."from"()
    inc rx1152_pos
    rx1152_cur."!cursor_from"(rx1152_pos)
    ge rx1152_pos, rx1152_eos, rxscan1153_done
  rxscan1153_scan:
    set_addr $I10, rxscan1153_loop
    rx1152_cur."!mark_push"(0, rx1152_pos, $I10)
  rxscan1153_done:
  # rx enumcharlist negate=0 
    ge rx1152_pos, rx1152_eos, rx1152_fail
    sub $I10, rx1152_pos, rx1152_off
    substr $S10, rx1152_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx1152_fail
    inc rx1152_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx1152_pos, rx1152_off
    set rx1152_rep, 0
    sub $I12, rx1152_eos, rx1152_pos
    le $I12, 1, rxenumcharlistq1154_loop
    set $I12, 1
  rxenumcharlistq1154_loop:
    le $I12, 0, rxenumcharlistq1154_done
    substr $S10, rx1152_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq1154_done
    inc rx1152_rep
  rxenumcharlistq1154_done:
    add rx1152_pos, rx1152_pos, rx1152_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx1152_pos, rx1152_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1152_tgt, $I10, rx1152_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1152_fail
    add rx1152_pos, rx1152_off, $I11
  # rx pass
    rx1152_cur."!cursor_pass"(rx1152_pos, "escale")
    if_null rx1152_debug, debug_382
    rx1152_cur."!cursor_debug"("PASS", "escale", " at pos=", rx1152_pos)
  debug_382:
    .return (rx1152_cur)
  rx1152_restart:
    if_null rx1152_debug, debug_383
    rx1152_cur."!cursor_debug"("NEXT", "escale")
  debug_383:
  rx1152_fail:
    (rx1152_rep, rx1152_pos, $I10, $P10) = rx1152_cur."!mark_fail"(0)
    lt rx1152_pos, -1, rx1152_done
    eq rx1152_pos, -1, rx1152_fail
    jump $I10
  rx1152_done:
    rx1152_cur."!cursor_fail"()
    if_null rx1152_debug, debug_384
    rx1152_cur."!cursor_debug"("FAIL", "escale")
  debug_384:
    .return (rx1152_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :subid("66_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 84
    new $P103, "ResizablePMCArray"
    push $P103, "e"
    push $P103, "E"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1329260312.462")
    .param pmc param_1157
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 86
    .lex "self", param_1157
    $P103 = param_1157."!protoregex"("quote_escape")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1329260312.462")
    .param pmc param_1159
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 86
    .lex "self", param_1159
    $P104 = param_1159."!PREFIX__!protoregex"("quote_escape")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 87
    .local string rx1161_tgt
    .local int rx1161_pos
    .local int rx1161_off
    .local int rx1161_eos
    .local int rx1161_rep
    .local pmc rx1161_cur
    .local pmc rx1161_debug
    (rx1161_cur, rx1161_pos, rx1161_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1161_cur
    .local pmc match
    .lex "$/", match
    length rx1161_eos, rx1161_tgt
    gt rx1161_pos, rx1161_eos, rx1161_done
    set rx1161_off, 0
    lt rx1161_pos, 2, rx1161_start
    sub rx1161_off, rx1161_pos, 1
    substr rx1161_tgt, rx1161_tgt, rx1161_off
  rx1161_start:
    eq $I10, 1, rx1161_restart
    if_null rx1161_debug, debug_385
    rx1161_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_385:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1162_done
    goto rxscan1162_scan
  rxscan1162_loop:
    (rx1161_pos) = rx1161_cur."from"()
    inc rx1161_pos
    rx1161_cur."!cursor_from"(rx1161_pos)
    ge rx1161_pos, rx1161_eos, rxscan1162_done
  rxscan1162_scan:
    set_addr $I10, rxscan1162_loop
    rx1161_cur."!mark_push"(0, rx1161_pos, $I10)
  rxscan1162_done:
  # rx literal  "\\\\"
    add $I11, rx1161_pos, 2
    gt $I11, rx1161_eos, rx1161_fail
    sub $I11, rx1161_pos, rx1161_off
    substr $S10, rx1161_tgt, $I11, 2
    ne $S10, "\\\\", rx1161_fail
    add rx1161_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1161_cur."!cursor_pos"(rx1161_pos)
    $P10 = rx1161_cur."quotemod_check"("q")
    unless $P10, rx1161_fail
  # rx pass
    rx1161_cur."!cursor_pass"(rx1161_pos, "quote_escape:sym<backslash>")
    if_null rx1161_debug, debug_386
    rx1161_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx1161_pos)
  debug_386:
    .return (rx1161_cur)
  rx1161_restart:
    if_null rx1161_debug, debug_387
    rx1161_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_387:
  rx1161_fail:
    (rx1161_rep, rx1161_pos, $I10, $P10) = rx1161_cur."!mark_fail"(0)
    lt rx1161_pos, -1, rx1161_done
    eq rx1161_pos, -1, rx1161_fail
    jump $I10
  rx1161_done:
    rx1161_cur."!cursor_fail"()
    if_null rx1161_debug, debug_388
    rx1161_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_388:
    .return (rx1161_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("70_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 87
    new $P103, "ResizablePMCArray"
    push $P103, "\\\\"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 88
    .local string rx1165_tgt
    .local int rx1165_pos
    .local int rx1165_off
    .local int rx1165_eos
    .local int rx1165_rep
    .local pmc rx1165_cur
    .local pmc rx1165_debug
    (rx1165_cur, rx1165_pos, rx1165_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1165_cur
    .local pmc match
    .lex "$/", match
    length rx1165_eos, rx1165_tgt
    gt rx1165_pos, rx1165_eos, rx1165_done
    set rx1165_off, 0
    lt rx1165_pos, 2, rx1165_start
    sub rx1165_off, rx1165_pos, 1
    substr rx1165_tgt, rx1165_tgt, rx1165_off
  rx1165_start:
    eq $I10, 1, rx1165_restart
    if_null rx1165_debug, debug_389
    rx1165_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_389:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1166_done
    goto rxscan1166_scan
  rxscan1166_loop:
    (rx1165_pos) = rx1165_cur."from"()
    inc rx1165_pos
    rx1165_cur."!cursor_from"(rx1165_pos)
    ge rx1165_pos, rx1165_eos, rxscan1166_done
  rxscan1166_scan:
    set_addr $I10, rxscan1166_loop
    rx1165_cur."!mark_push"(0, rx1165_pos, $I10)
  rxscan1166_done:
  # rx literal  "\\"
    add $I11, rx1165_pos, 1
    gt $I11, rx1165_eos, rx1165_fail
    sub $I11, rx1165_pos, rx1165_off
    ord $I11, rx1165_tgt, $I11
    ne $I11, 92, rx1165_fail
    add rx1165_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1165_cur."!cursor_pos"(rx1165_pos)
    $P10 = rx1165_cur."quotemod_check"("q")
    unless $P10, rx1165_fail
  # rx subrule "stopper" subtype=capture negate=
    rx1165_cur."!cursor_pos"(rx1165_pos)
    $P10 = rx1165_cur."stopper"()
    unless $P10, rx1165_fail
    rx1165_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx1165_pos = $P10."pos"()
  # rx pass
    rx1165_cur."!cursor_pass"(rx1165_pos, "quote_escape:sym<stopper>")
    if_null rx1165_debug, debug_390
    rx1165_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx1165_pos)
  debug_390:
    .return (rx1165_cur)
  rx1165_restart:
    if_null rx1165_debug, debug_391
    rx1165_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_391:
  rx1165_fail:
    (rx1165_rep, rx1165_pos, $I10, $P10) = rx1165_cur."!mark_fail"(0)
    lt rx1165_pos, -1, rx1165_done
    eq rx1165_pos, -1, rx1165_fail
    jump $I10
  rx1165_done:
    rx1165_cur."!cursor_fail"()
    if_null rx1165_debug, debug_392
    rx1165_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_392:
    .return (rx1165_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("72_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 88
    new $P103, "ResizablePMCArray"
    push $P103, "\\"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 90
    .local string rx1169_tgt
    .local int rx1169_pos
    .local int rx1169_off
    .local int rx1169_eos
    .local int rx1169_rep
    .local pmc rx1169_cur
    .local pmc rx1169_debug
    (rx1169_cur, rx1169_pos, rx1169_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1169_cur
    .local pmc match
    .lex "$/", match
    length rx1169_eos, rx1169_tgt
    gt rx1169_pos, rx1169_eos, rx1169_done
    set rx1169_off, 0
    lt rx1169_pos, 2, rx1169_start
    sub rx1169_off, rx1169_pos, 1
    substr rx1169_tgt, rx1169_tgt, rx1169_off
  rx1169_start:
    eq $I10, 1, rx1169_restart
    if_null rx1169_debug, debug_393
    rx1169_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_393:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1170_done
    goto rxscan1170_scan
  rxscan1170_loop:
    (rx1169_pos) = rx1169_cur."from"()
    inc rx1169_pos
    rx1169_cur."!cursor_from"(rx1169_pos)
    ge rx1169_pos, rx1169_eos, rxscan1170_done
  rxscan1170_scan:
    set_addr $I10, rxscan1170_loop
    rx1169_cur."!mark_push"(0, rx1169_pos, $I10)
  rxscan1170_done:
  # rx literal  "\\b"
    add $I11, rx1169_pos, 2
    gt $I11, rx1169_eos, rx1169_fail
    sub $I11, rx1169_pos, rx1169_off
    substr $S10, rx1169_tgt, $I11, 2
    ne $S10, "\\b", rx1169_fail
    add rx1169_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1169_cur."!cursor_pos"(rx1169_pos)
    $P10 = rx1169_cur."quotemod_check"("b")
    unless $P10, rx1169_fail
  # rx pass
    rx1169_cur."!cursor_pass"(rx1169_pos, "quote_escape:sym<bs>")
    if_null rx1169_debug, debug_394
    rx1169_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx1169_pos)
  debug_394:
    .return (rx1169_cur)
  rx1169_restart:
    if_null rx1169_debug, debug_395
    rx1169_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_395:
  rx1169_fail:
    (rx1169_rep, rx1169_pos, $I10, $P10) = rx1169_cur."!mark_fail"(0)
    lt rx1169_pos, -1, rx1169_done
    eq rx1169_pos, -1, rx1169_fail
    jump $I10
  rx1169_done:
    rx1169_cur."!cursor_fail"()
    if_null rx1169_debug, debug_396
    rx1169_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_396:
    .return (rx1169_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("74_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 90
    new $P103, "ResizablePMCArray"
    push $P103, "\\b"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 91
    .local string rx1173_tgt
    .local int rx1173_pos
    .local int rx1173_off
    .local int rx1173_eos
    .local int rx1173_rep
    .local pmc rx1173_cur
    .local pmc rx1173_debug
    (rx1173_cur, rx1173_pos, rx1173_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1173_cur
    .local pmc match
    .lex "$/", match
    length rx1173_eos, rx1173_tgt
    gt rx1173_pos, rx1173_eos, rx1173_done
    set rx1173_off, 0
    lt rx1173_pos, 2, rx1173_start
    sub rx1173_off, rx1173_pos, 1
    substr rx1173_tgt, rx1173_tgt, rx1173_off
  rx1173_start:
    eq $I10, 1, rx1173_restart
    if_null rx1173_debug, debug_397
    rx1173_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_397:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1174_done
    goto rxscan1174_scan
  rxscan1174_loop:
    (rx1173_pos) = rx1173_cur."from"()
    inc rx1173_pos
    rx1173_cur."!cursor_from"(rx1173_pos)
    ge rx1173_pos, rx1173_eos, rxscan1174_done
  rxscan1174_scan:
    set_addr $I10, rxscan1174_loop
    rx1173_cur."!mark_push"(0, rx1173_pos, $I10)
  rxscan1174_done:
  # rx literal  "\\n"
    add $I11, rx1173_pos, 2
    gt $I11, rx1173_eos, rx1173_fail
    sub $I11, rx1173_pos, rx1173_off
    substr $S10, rx1173_tgt, $I11, 2
    ne $S10, "\\n", rx1173_fail
    add rx1173_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1173_cur."!cursor_pos"(rx1173_pos)
    $P10 = rx1173_cur."quotemod_check"("b")
    unless $P10, rx1173_fail
  # rx pass
    rx1173_cur."!cursor_pass"(rx1173_pos, "quote_escape:sym<nl>")
    if_null rx1173_debug, debug_398
    rx1173_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx1173_pos)
  debug_398:
    .return (rx1173_cur)
  rx1173_restart:
    if_null rx1173_debug, debug_399
    rx1173_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_399:
  rx1173_fail:
    (rx1173_rep, rx1173_pos, $I10, $P10) = rx1173_cur."!mark_fail"(0)
    lt rx1173_pos, -1, rx1173_done
    eq rx1173_pos, -1, rx1173_fail
    jump $I10
  rx1173_done:
    rx1173_cur."!cursor_fail"()
    if_null rx1173_debug, debug_400
    rx1173_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_400:
    .return (rx1173_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("76_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 91
    new $P103, "ResizablePMCArray"
    push $P103, "\\n"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 92
    .local string rx1177_tgt
    .local int rx1177_pos
    .local int rx1177_off
    .local int rx1177_eos
    .local int rx1177_rep
    .local pmc rx1177_cur
    .local pmc rx1177_debug
    (rx1177_cur, rx1177_pos, rx1177_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1177_cur
    .local pmc match
    .lex "$/", match
    length rx1177_eos, rx1177_tgt
    gt rx1177_pos, rx1177_eos, rx1177_done
    set rx1177_off, 0
    lt rx1177_pos, 2, rx1177_start
    sub rx1177_off, rx1177_pos, 1
    substr rx1177_tgt, rx1177_tgt, rx1177_off
  rx1177_start:
    eq $I10, 1, rx1177_restart
    if_null rx1177_debug, debug_401
    rx1177_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_401:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1178_done
    goto rxscan1178_scan
  rxscan1178_loop:
    (rx1177_pos) = rx1177_cur."from"()
    inc rx1177_pos
    rx1177_cur."!cursor_from"(rx1177_pos)
    ge rx1177_pos, rx1177_eos, rxscan1178_done
  rxscan1178_scan:
    set_addr $I10, rxscan1178_loop
    rx1177_cur."!mark_push"(0, rx1177_pos, $I10)
  rxscan1178_done:
  # rx literal  "\\r"
    add $I11, rx1177_pos, 2
    gt $I11, rx1177_eos, rx1177_fail
    sub $I11, rx1177_pos, rx1177_off
    substr $S10, rx1177_tgt, $I11, 2
    ne $S10, "\\r", rx1177_fail
    add rx1177_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1177_cur."!cursor_pos"(rx1177_pos)
    $P10 = rx1177_cur."quotemod_check"("b")
    unless $P10, rx1177_fail
  # rx pass
    rx1177_cur."!cursor_pass"(rx1177_pos, "quote_escape:sym<cr>")
    if_null rx1177_debug, debug_402
    rx1177_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx1177_pos)
  debug_402:
    .return (rx1177_cur)
  rx1177_restart:
    if_null rx1177_debug, debug_403
    rx1177_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_403:
  rx1177_fail:
    (rx1177_rep, rx1177_pos, $I10, $P10) = rx1177_cur."!mark_fail"(0)
    lt rx1177_pos, -1, rx1177_done
    eq rx1177_pos, -1, rx1177_fail
    jump $I10
  rx1177_done:
    rx1177_cur."!cursor_fail"()
    if_null rx1177_debug, debug_404
    rx1177_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_404:
    .return (rx1177_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("78_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 92
    new $P103, "ResizablePMCArray"
    push $P103, "\\r"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 93
    .local string rx1181_tgt
    .local int rx1181_pos
    .local int rx1181_off
    .local int rx1181_eos
    .local int rx1181_rep
    .local pmc rx1181_cur
    .local pmc rx1181_debug
    (rx1181_cur, rx1181_pos, rx1181_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1181_cur
    .local pmc match
    .lex "$/", match
    length rx1181_eos, rx1181_tgt
    gt rx1181_pos, rx1181_eos, rx1181_done
    set rx1181_off, 0
    lt rx1181_pos, 2, rx1181_start
    sub rx1181_off, rx1181_pos, 1
    substr rx1181_tgt, rx1181_tgt, rx1181_off
  rx1181_start:
    eq $I10, 1, rx1181_restart
    if_null rx1181_debug, debug_405
    rx1181_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_405:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1182_done
    goto rxscan1182_scan
  rxscan1182_loop:
    (rx1181_pos) = rx1181_cur."from"()
    inc rx1181_pos
    rx1181_cur."!cursor_from"(rx1181_pos)
    ge rx1181_pos, rx1181_eos, rxscan1182_done
  rxscan1182_scan:
    set_addr $I10, rxscan1182_loop
    rx1181_cur."!mark_push"(0, rx1181_pos, $I10)
  rxscan1182_done:
  # rx literal  "\\t"
    add $I11, rx1181_pos, 2
    gt $I11, rx1181_eos, rx1181_fail
    sub $I11, rx1181_pos, rx1181_off
    substr $S10, rx1181_tgt, $I11, 2
    ne $S10, "\\t", rx1181_fail
    add rx1181_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1181_cur."!cursor_pos"(rx1181_pos)
    $P10 = rx1181_cur."quotemod_check"("b")
    unless $P10, rx1181_fail
  # rx pass
    rx1181_cur."!cursor_pass"(rx1181_pos, "quote_escape:sym<tab>")
    if_null rx1181_debug, debug_406
    rx1181_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx1181_pos)
  debug_406:
    .return (rx1181_cur)
  rx1181_restart:
    if_null rx1181_debug, debug_407
    rx1181_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_407:
  rx1181_fail:
    (rx1181_rep, rx1181_pos, $I10, $P10) = rx1181_cur."!mark_fail"(0)
    lt rx1181_pos, -1, rx1181_done
    eq rx1181_pos, -1, rx1181_fail
    jump $I10
  rx1181_done:
    rx1181_cur."!cursor_fail"()
    if_null rx1181_debug, debug_408
    rx1181_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_408:
    .return (rx1181_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("80_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 93
    new $P103, "ResizablePMCArray"
    push $P103, "\\t"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 94
    .local string rx1185_tgt
    .local int rx1185_pos
    .local int rx1185_off
    .local int rx1185_eos
    .local int rx1185_rep
    .local pmc rx1185_cur
    .local pmc rx1185_debug
    (rx1185_cur, rx1185_pos, rx1185_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1185_cur
    .local pmc match
    .lex "$/", match
    length rx1185_eos, rx1185_tgt
    gt rx1185_pos, rx1185_eos, rx1185_done
    set rx1185_off, 0
    lt rx1185_pos, 2, rx1185_start
    sub rx1185_off, rx1185_pos, 1
    substr rx1185_tgt, rx1185_tgt, rx1185_off
  rx1185_start:
    eq $I10, 1, rx1185_restart
    if_null rx1185_debug, debug_409
    rx1185_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_409:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1186_done
    goto rxscan1186_scan
  rxscan1186_loop:
    (rx1185_pos) = rx1185_cur."from"()
    inc rx1185_pos
    rx1185_cur."!cursor_from"(rx1185_pos)
    ge rx1185_pos, rx1185_eos, rxscan1186_done
  rxscan1186_scan:
    set_addr $I10, rxscan1186_loop
    rx1185_cur."!mark_push"(0, rx1185_pos, $I10)
  rxscan1186_done:
  # rx literal  "\\f"
    add $I11, rx1185_pos, 2
    gt $I11, rx1185_eos, rx1185_fail
    sub $I11, rx1185_pos, rx1185_off
    substr $S10, rx1185_tgt, $I11, 2
    ne $S10, "\\f", rx1185_fail
    add rx1185_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1185_cur."!cursor_pos"(rx1185_pos)
    $P10 = rx1185_cur."quotemod_check"("b")
    unless $P10, rx1185_fail
  # rx pass
    rx1185_cur."!cursor_pass"(rx1185_pos, "quote_escape:sym<ff>")
    if_null rx1185_debug, debug_410
    rx1185_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx1185_pos)
  debug_410:
    .return (rx1185_cur)
  rx1185_restart:
    if_null rx1185_debug, debug_411
    rx1185_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_411:
  rx1185_fail:
    (rx1185_rep, rx1185_pos, $I10, $P10) = rx1185_cur."!mark_fail"(0)
    lt rx1185_pos, -1, rx1185_done
    eq rx1185_pos, -1, rx1185_fail
    jump $I10
  rx1185_done:
    rx1185_cur."!cursor_fail"()
    if_null rx1185_debug, debug_412
    rx1185_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_412:
    .return (rx1185_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("82_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 94
    new $P103, "ResizablePMCArray"
    push $P103, "\\f"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 95
    .local string rx1189_tgt
    .local int rx1189_pos
    .local int rx1189_off
    .local int rx1189_eos
    .local int rx1189_rep
    .local pmc rx1189_cur
    .local pmc rx1189_debug
    (rx1189_cur, rx1189_pos, rx1189_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1189_cur
    .local pmc match
    .lex "$/", match
    length rx1189_eos, rx1189_tgt
    gt rx1189_pos, rx1189_eos, rx1189_done
    set rx1189_off, 0
    lt rx1189_pos, 2, rx1189_start
    sub rx1189_off, rx1189_pos, 1
    substr rx1189_tgt, rx1189_tgt, rx1189_off
  rx1189_start:
    eq $I10, 1, rx1189_restart
    if_null rx1189_debug, debug_413
    rx1189_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_413:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1190_done
    goto rxscan1190_scan
  rxscan1190_loop:
    (rx1189_pos) = rx1189_cur."from"()
    inc rx1189_pos
    rx1189_cur."!cursor_from"(rx1189_pos)
    ge rx1189_pos, rx1189_eos, rxscan1190_done
  rxscan1190_scan:
    set_addr $I10, rxscan1190_loop
    rx1189_cur."!mark_push"(0, rx1189_pos, $I10)
  rxscan1190_done:
  # rx literal  "\\e"
    add $I11, rx1189_pos, 2
    gt $I11, rx1189_eos, rx1189_fail
    sub $I11, rx1189_pos, rx1189_off
    substr $S10, rx1189_tgt, $I11, 2
    ne $S10, "\\e", rx1189_fail
    add rx1189_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1189_cur."!cursor_pos"(rx1189_pos)
    $P10 = rx1189_cur."quotemod_check"("b")
    unless $P10, rx1189_fail
  # rx pass
    rx1189_cur."!cursor_pass"(rx1189_pos, "quote_escape:sym<esc>")
    if_null rx1189_debug, debug_414
    rx1189_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx1189_pos)
  debug_414:
    .return (rx1189_cur)
  rx1189_restart:
    if_null rx1189_debug, debug_415
    rx1189_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_415:
  rx1189_fail:
    (rx1189_rep, rx1189_pos, $I10, $P10) = rx1189_cur."!mark_fail"(0)
    lt rx1189_pos, -1, rx1189_done
    eq rx1189_pos, -1, rx1189_fail
    jump $I10
  rx1189_done:
    rx1189_cur."!cursor_fail"()
    if_null rx1189_debug, debug_416
    rx1189_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_416:
    .return (rx1189_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("84_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 95
    new $P103, "ResizablePMCArray"
    push $P103, "\\e"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 96
    .local string rx1193_tgt
    .local int rx1193_pos
    .local int rx1193_off
    .local int rx1193_eos
    .local int rx1193_rep
    .local pmc rx1193_cur
    .local pmc rx1193_debug
    (rx1193_cur, rx1193_pos, rx1193_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1193_cur
    .local pmc match
    .lex "$/", match
    length rx1193_eos, rx1193_tgt
    gt rx1193_pos, rx1193_eos, rx1193_done
    set rx1193_off, 0
    lt rx1193_pos, 2, rx1193_start
    sub rx1193_off, rx1193_pos, 1
    substr rx1193_tgt, rx1193_tgt, rx1193_off
  rx1193_start:
    eq $I10, 1, rx1193_restart
    if_null rx1193_debug, debug_417
    rx1193_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_417:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1194_done
    goto rxscan1194_scan
  rxscan1194_loop:
    (rx1193_pos) = rx1193_cur."from"()
    inc rx1193_pos
    rx1193_cur."!cursor_from"(rx1193_pos)
    ge rx1193_pos, rx1193_eos, rxscan1194_done
  rxscan1194_scan:
    set_addr $I10, rxscan1194_loop
    rx1193_cur."!mark_push"(0, rx1193_pos, $I10)
  rxscan1194_done:
.annotate 'line', 97
  # rx literal  unicode:"\\x"
    add $I11, rx1193_pos, 2
    gt $I11, rx1193_eos, rx1193_fail
    sub $I11, rx1193_pos, rx1193_off
    substr $S10, rx1193_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx1193_fail
    add rx1193_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1193_cur."!cursor_pos"(rx1193_pos)
    $P10 = rx1193_cur."quotemod_check"("b")
    unless $P10, rx1193_fail
  alt1195_0:
.annotate 'line', 98
    set_addr $I10, alt1195_1
    rx1193_cur."!mark_push"(0, rx1193_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx1193_cur."!cursor_pos"(rx1193_pos)
    $P10 = rx1193_cur."hexint"()
    unless $P10, rx1193_fail
    rx1193_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx1193_pos = $P10."pos"()
    goto alt1195_end
  alt1195_1:
  # rx literal  "["
    add $I11, rx1193_pos, 1
    gt $I11, rx1193_eos, rx1193_fail
    sub $I11, rx1193_pos, rx1193_off
    ord $I11, rx1193_tgt, $I11
    ne $I11, 91, rx1193_fail
    add rx1193_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx1193_cur."!cursor_pos"(rx1193_pos)
    $P10 = rx1193_cur."hexints"()
    unless $P10, rx1193_fail
    rx1193_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx1193_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1193_pos, 1
    gt $I11, rx1193_eos, rx1193_fail
    sub $I11, rx1193_pos, rx1193_off
    ord $I11, rx1193_tgt, $I11
    ne $I11, 93, rx1193_fail
    add rx1193_pos, 1
  alt1195_end:
.annotate 'line', 96
  # rx pass
    rx1193_cur."!cursor_pass"(rx1193_pos, "quote_escape:sym<hex>")
    if_null rx1193_debug, debug_418
    rx1193_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx1193_pos)
  debug_418:
    .return (rx1193_cur)
  rx1193_restart:
    if_null rx1193_debug, debug_419
    rx1193_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_419:
  rx1193_fail:
    (rx1193_rep, rx1193_pos, $I10, $P10) = rx1193_cur."!mark_fail"(0)
    lt rx1193_pos, -1, rx1193_done
    eq rx1193_pos, -1, rx1193_fail
    jump $I10
  rx1193_done:
    rx1193_cur."!cursor_fail"()
    if_null rx1193_debug, debug_420
    rx1193_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_420:
    .return (rx1193_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("86_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 96
    new $P103, "ResizablePMCArray"
    push $P103, unicode:"\\x"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 100
    .local string rx1198_tgt
    .local int rx1198_pos
    .local int rx1198_off
    .local int rx1198_eos
    .local int rx1198_rep
    .local pmc rx1198_cur
    .local pmc rx1198_debug
    (rx1198_cur, rx1198_pos, rx1198_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1198_cur
    .local pmc match
    .lex "$/", match
    length rx1198_eos, rx1198_tgt
    gt rx1198_pos, rx1198_eos, rx1198_done
    set rx1198_off, 0
    lt rx1198_pos, 2, rx1198_start
    sub rx1198_off, rx1198_pos, 1
    substr rx1198_tgt, rx1198_tgt, rx1198_off
  rx1198_start:
    eq $I10, 1, rx1198_restart
    if_null rx1198_debug, debug_421
    rx1198_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_421:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1199_done
    goto rxscan1199_scan
  rxscan1199_loop:
    (rx1198_pos) = rx1198_cur."from"()
    inc rx1198_pos
    rx1198_cur."!cursor_from"(rx1198_pos)
    ge rx1198_pos, rx1198_eos, rxscan1199_done
  rxscan1199_scan:
    set_addr $I10, rxscan1199_loop
    rx1198_cur."!mark_push"(0, rx1198_pos, $I10)
  rxscan1199_done:
.annotate 'line', 101
  # rx literal  "\\o"
    add $I11, rx1198_pos, 2
    gt $I11, rx1198_eos, rx1198_fail
    sub $I11, rx1198_pos, rx1198_off
    substr $S10, rx1198_tgt, $I11, 2
    ne $S10, "\\o", rx1198_fail
    add rx1198_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1198_cur."!cursor_pos"(rx1198_pos)
    $P10 = rx1198_cur."quotemod_check"("b")
    unless $P10, rx1198_fail
  alt1200_0:
.annotate 'line', 102
    set_addr $I10, alt1200_1
    rx1198_cur."!mark_push"(0, rx1198_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx1198_cur."!cursor_pos"(rx1198_pos)
    $P10 = rx1198_cur."octint"()
    unless $P10, rx1198_fail
    rx1198_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx1198_pos = $P10."pos"()
    goto alt1200_end
  alt1200_1:
  # rx literal  "["
    add $I11, rx1198_pos, 1
    gt $I11, rx1198_eos, rx1198_fail
    sub $I11, rx1198_pos, rx1198_off
    ord $I11, rx1198_tgt, $I11
    ne $I11, 91, rx1198_fail
    add rx1198_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx1198_cur."!cursor_pos"(rx1198_pos)
    $P10 = rx1198_cur."octints"()
    unless $P10, rx1198_fail
    rx1198_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx1198_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1198_pos, 1
    gt $I11, rx1198_eos, rx1198_fail
    sub $I11, rx1198_pos, rx1198_off
    ord $I11, rx1198_tgt, $I11
    ne $I11, 93, rx1198_fail
    add rx1198_pos, 1
  alt1200_end:
.annotate 'line', 100
  # rx pass
    rx1198_cur."!cursor_pass"(rx1198_pos, "quote_escape:sym<oct>")
    if_null rx1198_debug, debug_422
    rx1198_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx1198_pos)
  debug_422:
    .return (rx1198_cur)
  rx1198_restart:
    if_null rx1198_debug, debug_423
    rx1198_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_423:
  rx1198_fail:
    (rx1198_rep, rx1198_pos, $I10, $P10) = rx1198_cur."!mark_fail"(0)
    lt rx1198_pos, -1, rx1198_done
    eq rx1198_pos, -1, rx1198_fail
    jump $I10
  rx1198_done:
    rx1198_cur."!cursor_fail"()
    if_null rx1198_debug, debug_424
    rx1198_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_424:
    .return (rx1198_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("88_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 100
    new $P103, "ResizablePMCArray"
    push $P103, "\\o"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 104
    .local string rx1203_tgt
    .local int rx1203_pos
    .local int rx1203_off
    .local int rx1203_eos
    .local int rx1203_rep
    .local pmc rx1203_cur
    .local pmc rx1203_debug
    (rx1203_cur, rx1203_pos, rx1203_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1203_cur
    .local pmc match
    .lex "$/", match
    length rx1203_eos, rx1203_tgt
    gt rx1203_pos, rx1203_eos, rx1203_done
    set rx1203_off, 0
    lt rx1203_pos, 2, rx1203_start
    sub rx1203_off, rx1203_pos, 1
    substr rx1203_tgt, rx1203_tgt, rx1203_off
  rx1203_start:
    eq $I10, 1, rx1203_restart
    if_null rx1203_debug, debug_425
    rx1203_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_425:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1204_done
    goto rxscan1204_scan
  rxscan1204_loop:
    (rx1203_pos) = rx1203_cur."from"()
    inc rx1203_pos
    rx1203_cur."!cursor_from"(rx1203_pos)
    ge rx1203_pos, rx1203_eos, rxscan1204_done
  rxscan1204_scan:
    set_addr $I10, rxscan1204_loop
    rx1203_cur."!mark_push"(0, rx1203_pos, $I10)
  rxscan1204_done:
  # rx literal  "\\c"
    add $I11, rx1203_pos, 2
    gt $I11, rx1203_eos, rx1203_fail
    sub $I11, rx1203_pos, rx1203_off
    substr $S10, rx1203_tgt, $I11, 2
    ne $S10, "\\c", rx1203_fail
    add rx1203_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1203_cur."!cursor_pos"(rx1203_pos)
    $P10 = rx1203_cur."quotemod_check"("b")
    unless $P10, rx1203_fail
  # rx subrule "charspec" subtype=capture negate=
    rx1203_cur."!cursor_pos"(rx1203_pos)
    $P10 = rx1203_cur."charspec"()
    unless $P10, rx1203_fail
    rx1203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx1203_pos = $P10."pos"()
  # rx pass
    rx1203_cur."!cursor_pass"(rx1203_pos, "quote_escape:sym<chr>")
    if_null rx1203_debug, debug_426
    rx1203_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx1203_pos)
  debug_426:
    .return (rx1203_cur)
  rx1203_restart:
    if_null rx1203_debug, debug_427
    rx1203_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_427:
  rx1203_fail:
    (rx1203_rep, rx1203_pos, $I10, $P10) = rx1203_cur."!mark_fail"(0)
    lt rx1203_pos, -1, rx1203_done
    eq rx1203_pos, -1, rx1203_fail
    jump $I10
  rx1203_done:
    rx1203_cur."!cursor_fail"()
    if_null rx1203_debug, debug_428
    rx1203_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_428:
    .return (rx1203_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("90_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 104
    new $P103, "ResizablePMCArray"
    push $P103, "\\c"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 105
    .local string rx1207_tgt
    .local int rx1207_pos
    .local int rx1207_off
    .local int rx1207_eos
    .local int rx1207_rep
    .local pmc rx1207_cur
    .local pmc rx1207_debug
    (rx1207_cur, rx1207_pos, rx1207_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1207_cur
    .local pmc match
    .lex "$/", match
    length rx1207_eos, rx1207_tgt
    gt rx1207_pos, rx1207_eos, rx1207_done
    set rx1207_off, 0
    lt rx1207_pos, 2, rx1207_start
    sub rx1207_off, rx1207_pos, 1
    substr rx1207_tgt, rx1207_tgt, rx1207_off
  rx1207_start:
    eq $I10, 1, rx1207_restart
    if_null rx1207_debug, debug_429
    rx1207_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_429:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1208_done
    goto rxscan1208_scan
  rxscan1208_loop:
    (rx1207_pos) = rx1207_cur."from"()
    inc rx1207_pos
    rx1207_cur."!cursor_from"(rx1207_pos)
    ge rx1207_pos, rx1207_eos, rxscan1208_done
  rxscan1208_scan:
    set_addr $I10, rxscan1208_loop
    rx1207_cur."!mark_push"(0, rx1207_pos, $I10)
  rxscan1208_done:
  # rx literal  "\\"
    add $I11, rx1207_pos, 1
    gt $I11, rx1207_eos, rx1207_fail
    sub $I11, rx1207_pos, rx1207_off
    ord $I11, rx1207_tgt, $I11
    ne $I11, 92, rx1207_fail
    add rx1207_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_1209_fail
    rx1207_cur."!mark_push"(0, rx1207_pos, $I10)
  # rx literal  "0"
    add $I11, rx1207_pos, 1
    gt $I11, rx1207_eos, rx1207_fail
    sub $I11, rx1207_pos, rx1207_off
    ord $I11, rx1207_tgt, $I11
    ne $I11, 48, rx1207_fail
    add rx1207_pos, 1
    set_addr $I10, rxcap_1209_fail
    ($I12, $I11) = rx1207_cur."!mark_peek"($I10)
    rx1207_cur."!cursor_pos"($I11)
    ($P10) = rx1207_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1207_pos, "")
    rx1207_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1209_done
  rxcap_1209_fail:
    goto rx1207_fail
  rxcap_1209_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1207_cur."!cursor_pos"(rx1207_pos)
    $P10 = rx1207_cur."quotemod_check"("b")
    unless $P10, rx1207_fail
  # rx pass
    rx1207_cur."!cursor_pass"(rx1207_pos, "quote_escape:sym<0>")
    if_null rx1207_debug, debug_430
    rx1207_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx1207_pos)
  debug_430:
    .return (rx1207_cur)
  rx1207_restart:
    if_null rx1207_debug, debug_431
    rx1207_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_431:
  rx1207_fail:
    (rx1207_rep, rx1207_pos, $I10, $P10) = rx1207_cur."!mark_fail"(0)
    lt rx1207_pos, -1, rx1207_done
    eq rx1207_pos, -1, rx1207_fail
    jump $I10
  rx1207_done:
    rx1207_cur."!cursor_fail"()
    if_null rx1207_debug, debug_432
    rx1207_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_432:
    .return (rx1207_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :subid("92_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 105
    new $P103, "ResizablePMCArray"
    push $P103, "\\0"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 106
    .const 'Sub' $P1224 = "96_1329260312.462" 
    capture_lex $P1224
    .const 'Sub' $P1219 = "95_1329260312.462" 
    capture_lex $P1219
    .const 'Sub' $P1215 = "94_1329260312.462" 
    capture_lex $P1215
    .local string rx1212_tgt
    .local int rx1212_pos
    .local int rx1212_off
    .local int rx1212_eos
    .local int rx1212_rep
    .local pmc rx1212_cur
    .local pmc rx1212_debug
    (rx1212_cur, rx1212_pos, rx1212_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1212_cur
    .local pmc match
    .lex "$/", match
    length rx1212_eos, rx1212_tgt
    gt rx1212_pos, rx1212_eos, rx1212_done
    set rx1212_off, 0
    lt rx1212_pos, 2, rx1212_start
    sub rx1212_off, rx1212_pos, 1
    substr rx1212_tgt, rx1212_tgt, rx1212_off
  rx1212_start:
    eq $I10, 1, rx1212_restart
    if_null rx1212_debug, debug_433
    rx1212_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_433:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1213_done
    goto rxscan1213_scan
  rxscan1213_loop:
    (rx1212_pos) = rx1212_cur."from"()
    inc rx1212_pos
    rx1212_cur."!cursor_from"(rx1212_pos)
    ge rx1212_pos, rx1212_eos, rxscan1213_done
  rxscan1213_scan:
    set_addr $I10, rxscan1213_loop
    rx1212_cur."!mark_push"(0, rx1212_pos, $I10)
  rxscan1213_done:
.annotate 'line', 107
    rx1212_cur."!cursor_pos"(rx1212_pos)
    find_lex $P103, unicode:"$\x{a2}"
    $P104 = $P103."MATCH"()
    store_lex "$/", $P104
    .const 'Sub' $P1215 = "94_1329260312.462" 
    capture_lex $P1215
    $P105 = $P1215()
  # rx literal  "\\"
    add $I11, rx1212_pos, 1
    gt $I11, rx1212_eos, rx1212_fail
    sub $I11, rx1212_pos, rx1212_off
    ord $I11, rx1212_tgt, $I11
    ne $I11, 92, rx1212_fail
    add rx1212_pos, 1
  alt1216_0:
.annotate 'line', 108
    set_addr $I10, alt1216_1
    rx1212_cur."!mark_push"(0, rx1212_pos, $I10)
.annotate 'line', 109
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1212_cur."!cursor_pos"(rx1212_pos)
    $P10 = rx1212_cur."quotemod_check"("b")
    unless $P10, rx1212_fail
  alt1217_0:
.annotate 'line', 110
    set_addr $I10, alt1217_1
    rx1212_cur."!mark_push"(0, rx1212_pos, $I10)
.annotate 'line', 111
  # rx subrule $P1219 subtype=capture negate=
    rx1212_cur."!cursor_pos"(rx1212_pos)
    .const 'Sub' $P1219 = "95_1329260312.462" 
    capture_lex $P1219
    $P10 = rx1212_cur.$P1219()
    unless $P10, rx1212_fail
    rx1212_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx1212_pos = $P10."pos"()
    goto alt1217_end
  alt1217_1:
.annotate 'line', 112
  # rx subcapture "x"
    set_addr $I10, rxcap_1222_fail
    rx1212_cur."!mark_push"(0, rx1212_pos, $I10)
  # rx charclass w
    ge rx1212_pos, rx1212_eos, rx1212_fail
    sub $I10, rx1212_pos, rx1212_off
    is_cclass $I11, .CCLASS_WORD, rx1212_tgt, $I10
    unless $I11, rx1212_fail
    inc rx1212_pos
    set_addr $I10, rxcap_1222_fail
    ($I12, $I11) = rx1212_cur."!mark_peek"($I10)
    rx1212_cur."!cursor_pos"($I11)
    ($P10) = rx1212_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1212_pos, "")
    rx1212_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_1222_done
  rxcap_1222_fail:
    goto rx1212_fail
  rxcap_1222_done:
    rx1212_cur."!cursor_pos"(rx1212_pos)
    find_lex $P106, unicode:"$\x{a2}"
    $P107 = $P106."MATCH"()
    store_lex "$/", $P107
    .const 'Sub' $P1224 = "96_1329260312.462" 
    capture_lex $P1224
    $P108 = $P1224()
  alt1217_end:
.annotate 'line', 109
    goto alt1216_end
  alt1216_1:
.annotate 'line', 114
  # rx subcapture "textq"
    set_addr $I10, rxcap_1226_fail
    rx1212_cur."!mark_push"(0, rx1212_pos, $I10)
  # rx charclass .
    ge rx1212_pos, rx1212_eos, rx1212_fail
    inc rx1212_pos
    set_addr $I10, rxcap_1226_fail
    ($I12, $I11) = rx1212_cur."!mark_peek"($I10)
    rx1212_cur."!cursor_pos"($I11)
    ($P10) = rx1212_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1212_pos, "")
    rx1212_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_1226_done
  rxcap_1226_fail:
    goto rx1212_fail
  rxcap_1226_done:
  alt1216_end:
.annotate 'line', 106
  # rx pass
    rx1212_cur."!cursor_pass"(rx1212_pos, "quote_escape:sym<misc>")
    if_null rx1212_debug, debug_441
    rx1212_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx1212_pos)
  debug_441:
    .return (rx1212_cur)
  rx1212_restart:
    if_null rx1212_debug, debug_442
    rx1212_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_442:
  rx1212_fail:
    (rx1212_rep, rx1212_pos, $I10, $P10) = rx1212_cur."!mark_fail"(0)
    lt rx1212_pos, -1, rx1212_done
    eq rx1212_pos, -1, rx1212_fail
    jump $I10
  rx1212_done:
    rx1212_cur."!cursor_fail"()
    if_null rx1212_debug, debug_443
    rx1212_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_443:
    .return (rx1212_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1214"  :anon :subid("94_1329260312.462") :outer("93_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 107
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1218"  :anon :subid("95_1329260312.462") :method :outer("93_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 111
    .local string rx1220_tgt
    .local int rx1220_pos
    .local int rx1220_off
    .local int rx1220_eos
    .local int rx1220_rep
    .local pmc rx1220_cur
    .local pmc rx1220_debug
    (rx1220_cur, rx1220_pos, rx1220_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1220_cur
    .local pmc match
    .lex "$/", match
    length rx1220_eos, rx1220_tgt
    gt rx1220_pos, rx1220_eos, rx1220_done
    set rx1220_off, 0
    lt rx1220_pos, 2, rx1220_start
    sub rx1220_off, rx1220_pos, 1
    substr rx1220_tgt, rx1220_tgt, rx1220_off
  rx1220_start:
    eq $I10, 1, rx1220_restart
    if_null rx1220_debug, debug_434
    rx1220_cur."!cursor_debug"("START", "")
  debug_434:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1221_done
    goto rxscan1221_scan
  rxscan1221_loop:
    (rx1220_pos) = rx1220_cur."from"()
    inc rx1220_pos
    rx1220_cur."!cursor_from"(rx1220_pos)
    ge rx1220_pos, rx1220_eos, rxscan1221_done
  rxscan1221_scan:
    set_addr $I10, rxscan1221_loop
    rx1220_cur."!mark_push"(0, rx1220_pos, $I10)
  rxscan1221_done:
  # rx charclass W
    ge rx1220_pos, rx1220_eos, rx1220_fail
    sub $I10, rx1220_pos, rx1220_off
    is_cclass $I11, .CCLASS_WORD, rx1220_tgt, $I10
    if $I11, rx1220_fail
    inc rx1220_pos
  # rx pass
    rx1220_cur."!cursor_pass"(rx1220_pos, "")
    if_null rx1220_debug, debug_435
    rx1220_cur."!cursor_debug"("PASS", "", " at pos=", rx1220_pos)
  debug_435:
    .return (rx1220_cur)
  rx1220_restart:
    if_null rx1220_debug, debug_436
    rx1220_cur."!cursor_debug"("NEXT", "")
  debug_436:
  rx1220_fail:
    (rx1220_rep, rx1220_pos, $I10, $P10) = rx1220_cur."!mark_fail"(0)
    lt rx1220_pos, -1, rx1220_done
    eq rx1220_pos, -1, rx1220_fail
    jump $I10
  rx1220_done:
    rx1220_cur."!cursor_fail"()
    if_null rx1220_debug, debug_437
    rx1220_cur."!cursor_debug"("FAIL", "")
  debug_437:
    .return (rx1220_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1223"  :anon :subid("96_1329260312.462") :outer("93_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 112
    find_lex $P108, "$/"
    unless_null $P108, vivify_438
    new $P108, "Undef"
  vivify_438:
    $P109 = $P108."CURSOR"()
    new $P110, "String"
    assign $P110, "Unrecognized backslash sequence: '\\"
    find_lex $P1225, "$/"
    unless_null $P1225, vivify_439
    $P1225 = root_new ['parrot';'Hash']
  vivify_439:
    set $P111, $P1225["x"]
    unless_null $P111, vivify_440
    new $P111, "Undef"
  vivify_440:
    $S100 = $P111."Str"()
    concat $P112, $P110, $S100
    concat $P113, $P112, "'"
    $P114 = $P109."panic"($P113)
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("97_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 106
    new $P109, "ResizablePMCArray"
    push $P109, ""
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 118
    .const 'Sub' $P1235 = "99_1329260312.462" 
    capture_lex $P1235
    .local string rx1229_tgt
    .local int rx1229_pos
    .local int rx1229_off
    .local int rx1229_eos
    .local int rx1229_rep
    .local pmc rx1229_cur
    .local pmc rx1229_debug
    (rx1229_cur, rx1229_pos, rx1229_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1229_cur
    .local pmc match
    .lex "$/", match
    length rx1229_eos, rx1229_tgt
    gt rx1229_pos, rx1229_eos, rx1229_done
    set rx1229_off, 0
    lt rx1229_pos, 2, rx1229_start
    sub rx1229_off, rx1229_pos, 1
    substr rx1229_tgt, rx1229_tgt, rx1229_off
  rx1229_start:
    eq $I10, 1, rx1229_restart
    if_null rx1229_debug, debug_444
    rx1229_cur."!cursor_debug"("START", "charname")
  debug_444:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1230_done
    goto rxscan1230_scan
  rxscan1230_loop:
    (rx1229_pos) = rx1229_cur."from"()
    inc rx1229_pos
    rx1229_cur."!cursor_from"(rx1229_pos)
    ge rx1229_pos, rx1229_eos, rxscan1230_done
  rxscan1230_scan:
    set_addr $I10, rxscan1230_loop
    rx1229_cur."!mark_push"(0, rx1229_pos, $I10)
  rxscan1230_done:
  alt1231_0:
    set_addr $I10, alt1231_1
    rx1229_cur."!mark_push"(0, rx1229_pos, $I10)
.annotate 'line', 119
  # rx subrule "integer" subtype=capture negate=
    rx1229_cur."!cursor_pos"(rx1229_pos)
    $P10 = rx1229_cur."integer"()
    unless $P10, rx1229_fail
    rx1229_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx1229_pos = $P10."pos"()
    goto alt1231_end
  alt1231_1:
.annotate 'line', 120
  # rx enumcharlist negate=0 
    ge rx1229_pos, rx1229_eos, rx1229_fail
    sub $I10, rx1229_pos, rx1229_off
    substr $S10, rx1229_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx1229_fail
    inc rx1229_pos
  # rx rxquantf1232 ** 0..*
    set_addr $I10, rxquantf1232_loop
    rx1229_cur."!mark_push"(0, rx1229_pos, $I10)
    goto rxquantf1232_done
  rxquantf1232_loop:
  # rx enumcharlist negate=1 
    ge rx1229_pos, rx1229_eos, rx1229_fail
    sub $I10, rx1229_pos, rx1229_off
    substr $S10, rx1229_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx1229_fail
    inc rx1229_pos
    set_addr $I10, rxquantf1232_loop
    rx1229_cur."!mark_push"(rx1229_rep, rx1229_pos, $I10)
  rxquantf1232_done:
  # rx enumcharlist negate=0 
    ge rx1229_pos, rx1229_eos, rx1229_fail
    sub $I10, rx1229_pos, rx1229_off
    substr $S10, rx1229_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx1229_fail
    inc rx1229_pos
.annotate 'line', 121
  # rx subrule "before" subtype=zerowidth negate=
    rx1229_cur."!cursor_pos"(rx1229_pos)
    .const 'Sub' $P1235 = "99_1329260312.462" 
    capture_lex $P1235
    $P10 = rx1229_cur."before"($P1235)
    unless $P10, rx1229_fail
  alt1231_end:
.annotate 'line', 118
  # rx pass
    rx1229_cur."!cursor_pass"(rx1229_pos, "charname")
    if_null rx1229_debug, debug_449
    rx1229_cur."!cursor_debug"("PASS", "charname", " at pos=", rx1229_pos)
  debug_449:
    .return (rx1229_cur)
  rx1229_restart:
    if_null rx1229_debug, debug_450
    rx1229_cur."!cursor_debug"("NEXT", "charname")
  debug_450:
  rx1229_fail:
    (rx1229_rep, rx1229_pos, $I10, $P10) = rx1229_cur."!mark_fail"(0)
    lt rx1229_pos, -1, rx1229_done
    eq rx1229_pos, -1, rx1229_fail
    jump $I10
  rx1229_done:
    rx1229_cur."!cursor_fail"()
    if_null rx1229_debug, debug_451
    rx1229_cur."!cursor_debug"("FAIL", "charname")
  debug_451:
    .return (rx1229_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1234"  :anon :subid("99_1329260312.462") :method :outer("98_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 121
    .local string rx1236_tgt
    .local int rx1236_pos
    .local int rx1236_off
    .local int rx1236_eos
    .local int rx1236_rep
    .local pmc rx1236_cur
    .local pmc rx1236_debug
    (rx1236_cur, rx1236_pos, rx1236_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1236_cur
    .local pmc match
    .lex "$/", match
    length rx1236_eos, rx1236_tgt
    gt rx1236_pos, rx1236_eos, rx1236_done
    set rx1236_off, 0
    lt rx1236_pos, 2, rx1236_start
    sub rx1236_off, rx1236_pos, 1
    substr rx1236_tgt, rx1236_tgt, rx1236_off
  rx1236_start:
    eq $I10, 1, rx1236_restart
    if_null rx1236_debug, debug_445
    rx1236_cur."!cursor_debug"("START", "")
  debug_445:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1237_done
    goto rxscan1237_scan
  rxscan1237_loop:
    (rx1236_pos) = rx1236_cur."from"()
    inc rx1236_pos
    rx1236_cur."!cursor_from"(rx1236_pos)
    ge rx1236_pos, rx1236_eos, rxscan1237_done
  rxscan1237_scan:
    set_addr $I10, rxscan1237_loop
    rx1236_cur."!mark_push"(0, rx1236_pos, $I10)
  rxscan1237_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx1236_pos, rx1236_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx1236_tgt, $I10, rx1236_eos
    add rx1236_pos, rx1236_off, $I11
  # rx enumcharlist negate=0 
    ge rx1236_pos, rx1236_eos, rx1236_fail
    sub $I10, rx1236_pos, rx1236_off
    substr $S10, rx1236_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx1236_fail
    inc rx1236_pos
  # rx pass
    rx1236_cur."!cursor_pass"(rx1236_pos, "")
    if_null rx1236_debug, debug_446
    rx1236_cur."!cursor_debug"("PASS", "", " at pos=", rx1236_pos)
  debug_446:
    .return (rx1236_cur)
  rx1236_restart:
    if_null rx1236_debug, debug_447
    rx1236_cur."!cursor_debug"("NEXT", "")
  debug_447:
  rx1236_fail:
    (rx1236_rep, rx1236_pos, $I10, $P10) = rx1236_cur."!mark_fail"(0)
    lt rx1236_pos, -1, rx1236_done
    eq rx1236_pos, -1, rx1236_fail
    jump $I10
  rx1236_done:
    rx1236_cur."!cursor_fail"()
    if_null rx1236_debug, debug_448
    rx1236_cur."!cursor_debug"("FAIL", "")
  debug_448:
    .return (rx1236_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("100_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 118
    $P103 = self."!PREFIX__!subrule"("integer", "")
    new $P104, "ResizablePMCArray"
    push $P104, "Z"
    push $P104, "Y"
    push $P104, "X"
    push $P104, "W"
    push $P104, "V"
    push $P104, "U"
    push $P104, "T"
    push $P104, "S"
    push $P104, "R"
    push $P104, "Q"
    push $P104, "P"
    push $P104, "O"
    push $P104, "N"
    push $P104, "M"
    push $P104, "L"
    push $P104, "K"
    push $P104, "J"
    push $P104, "I"
    push $P104, "H"
    push $P104, "G"
    push $P104, "F"
    push $P104, "E"
    push $P104, "D"
    push $P104, "C"
    push $P104, "B"
    push $P104, "A"
    push $P104, "z"
    push $P104, "y"
    push $P104, "x"
    push $P104, "w"
    push $P104, "v"
    push $P104, "u"
    push $P104, "t"
    push $P104, "s"
    push $P104, "r"
    push $P104, "q"
    push $P104, "p"
    push $P104, "o"
    push $P104, "n"
    push $P104, "m"
    push $P104, "l"
    push $P104, "k"
    push $P104, "j"
    push $P104, "i"
    push $P104, "h"
    push $P104, "g"
    push $P104, "f"
    push $P104, "e"
    push $P104, "d"
    push $P104, "c"
    push $P104, "b"
    push $P104, "a"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 123
    .local string rx1240_tgt
    .local int rx1240_pos
    .local int rx1240_off
    .local int rx1240_eos
    .local int rx1240_rep
    .local pmc rx1240_cur
    .local pmc rx1240_debug
    (rx1240_cur, rx1240_pos, rx1240_tgt, $I10) = self."!cursor_start"()
    rx1240_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx1240_cur
    .local pmc match
    .lex "$/", match
    length rx1240_eos, rx1240_tgt
    gt rx1240_pos, rx1240_eos, rx1240_done
    set rx1240_off, 0
    lt rx1240_pos, 2, rx1240_start
    sub rx1240_off, rx1240_pos, 1
    substr rx1240_tgt, rx1240_tgt, rx1240_off
  rx1240_start:
    eq $I10, 1, rx1240_restart
    if_null rx1240_debug, debug_452
    rx1240_cur."!cursor_debug"("START", "charnames")
  debug_452:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1241_done
    goto rxscan1241_scan
  rxscan1241_loop:
    (rx1240_pos) = rx1240_cur."from"()
    inc rx1240_pos
    rx1240_cur."!cursor_from"(rx1240_pos)
    ge rx1240_pos, rx1240_eos, rxscan1241_done
  rxscan1241_scan:
    set_addr $I10, rxscan1241_loop
    rx1240_cur."!mark_push"(0, rx1240_pos, $I10)
  rxscan1241_done:
  # rx rxquantr1242 ** 1..*
    set_addr $I10, rxquantr1242_done
    rx1240_cur."!mark_push"(0, -1, $I10)
  rxquantr1242_loop:
  # rx subrule "ws" subtype=method negate=
    rx1240_cur."!cursor_pos"(rx1240_pos)
    $P10 = rx1240_cur."ws"()
    unless $P10, rx1240_fail
    rx1240_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx1240_cur."!cursor_pos"(rx1240_pos)
    $P10 = rx1240_cur."charname"()
    unless $P10, rx1240_fail
    rx1240_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx1240_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1240_cur."!cursor_pos"(rx1240_pos)
    $P10 = rx1240_cur."ws"()
    unless $P10, rx1240_fail
    rx1240_pos = $P10."pos"()
    set_addr $I10, rxquantr1242_done
    (rx1240_rep) = rx1240_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1242_done
    rx1240_cur."!mark_push"(rx1240_rep, rx1240_pos, $I10)
  # rx literal  ","
    add $I11, rx1240_pos, 1
    gt $I11, rx1240_eos, rx1240_fail
    sub $I11, rx1240_pos, rx1240_off
    ord $I11, rx1240_tgt, $I11
    ne $I11, 44, rx1240_fail
    add rx1240_pos, 1
    goto rxquantr1242_loop
  rxquantr1242_done:
  # rx pass
    rx1240_cur."!cursor_pass"(rx1240_pos, "charnames")
    if_null rx1240_debug, debug_453
    rx1240_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx1240_pos)
  debug_453:
    .return (rx1240_cur)
  rx1240_restart:
    if_null rx1240_debug, debug_454
    rx1240_cur."!cursor_debug"("NEXT", "charnames")
  debug_454:
  rx1240_fail:
    (rx1240_rep, rx1240_pos, $I10, $P10) = rx1240_cur."!mark_fail"(0)
    lt rx1240_pos, -1, rx1240_done
    eq rx1240_pos, -1, rx1240_fail
    jump $I10
  rx1240_done:
    rx1240_cur."!cursor_fail"()
    if_null rx1240_debug, debug_455
    rx1240_cur."!cursor_debug"("FAIL", "charnames")
  debug_455:
    .return (rx1240_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("102_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 123
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 124
    .local string rx1245_tgt
    .local int rx1245_pos
    .local int rx1245_off
    .local int rx1245_eos
    .local int rx1245_rep
    .local pmc rx1245_cur
    .local pmc rx1245_debug
    (rx1245_cur, rx1245_pos, rx1245_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1245_cur
    .local pmc match
    .lex "$/", match
    length rx1245_eos, rx1245_tgt
    gt rx1245_pos, rx1245_eos, rx1245_done
    set rx1245_off, 0
    lt rx1245_pos, 2, rx1245_start
    sub rx1245_off, rx1245_pos, 1
    substr rx1245_tgt, rx1245_tgt, rx1245_off
  rx1245_start:
    eq $I10, 1, rx1245_restart
    if_null rx1245_debug, debug_456
    rx1245_cur."!cursor_debug"("START", "charspec")
  debug_456:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1246_done
    goto rxscan1246_scan
  rxscan1246_loop:
    (rx1245_pos) = rx1245_cur."from"()
    inc rx1245_pos
    rx1245_cur."!cursor_from"(rx1245_pos)
    ge rx1245_pos, rx1245_eos, rxscan1246_done
  rxscan1246_scan:
    set_addr $I10, rxscan1246_loop
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
  rxscan1246_done:
  alt1247_0:
.annotate 'line', 125
    set_addr $I10, alt1247_1
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
.annotate 'line', 126
  # rx literal  "["
    add $I11, rx1245_pos, 1
    gt $I11, rx1245_eos, rx1245_fail
    sub $I11, rx1245_pos, rx1245_off
    ord $I11, rx1245_tgt, $I11
    ne $I11, 91, rx1245_fail
    add rx1245_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx1245_cur."!cursor_pos"(rx1245_pos)
    $P10 = rx1245_cur."charnames"()
    unless $P10, rx1245_fail
    rx1245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx1245_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1245_pos, 1
    gt $I11, rx1245_eos, rx1245_fail
    sub $I11, rx1245_pos, rx1245_off
    ord $I11, rx1245_tgt, $I11
    ne $I11, 93, rx1245_fail
    add rx1245_pos, 1
    goto alt1247_end
  alt1247_1:
    set_addr $I10, alt1247_2
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
.annotate 'line', 127
  # rx charclass_q d r 1..-1
    sub $I10, rx1245_pos, rx1245_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1245_tgt, $I10, rx1245_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1245_fail
    add rx1245_pos, rx1245_off, $I11
  # rx rxquantr1248 ** 0..*
    set_addr $I10, rxquantr1248_done
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
  rxquantr1248_loop:
  # rx literal  "_"
    add $I11, rx1245_pos, 1
    gt $I11, rx1245_eos, rx1245_fail
    sub $I11, rx1245_pos, rx1245_off
    ord $I11, rx1245_tgt, $I11
    ne $I11, 95, rx1245_fail
    add rx1245_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx1245_pos, rx1245_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1245_tgt, $I10, rx1245_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1245_fail
    add rx1245_pos, rx1245_off, $I11
    set_addr $I10, rxquantr1248_done
    (rx1245_rep) = rx1245_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1248_done
    rx1245_cur."!mark_push"(rx1245_rep, rx1245_pos, $I10)
    goto rxquantr1248_loop
  rxquantr1248_done:
    goto alt1247_end
  alt1247_2:
    set_addr $I10, alt1247_3
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
.annotate 'line', 128
  # rx enumcharlist negate=0 
    ge rx1245_pos, rx1245_eos, rx1245_fail
    sub $I10, rx1245_pos, rx1245_off
    substr $S10, rx1245_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx1245_fail
    inc rx1245_pos
    goto alt1247_end
  alt1247_3:
.annotate 'line', 129
  # rx subrule "panic" subtype=method negate=
    rx1245_cur."!cursor_pos"(rx1245_pos)
    $P10 = rx1245_cur."panic"("Unrecognized \\c character")
    unless $P10, rx1245_fail
    rx1245_pos = $P10."pos"()
  alt1247_end:
.annotate 'line', 124
  # rx pass
    rx1245_cur."!cursor_pass"(rx1245_pos, "charspec")
    if_null rx1245_debug, debug_457
    rx1245_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx1245_pos)
  debug_457:
    .return (rx1245_cur)
  rx1245_restart:
    if_null rx1245_debug, debug_458
    rx1245_cur."!cursor_debug"("NEXT", "charspec")
  debug_458:
  rx1245_fail:
    (rx1245_rep, rx1245_pos, $I10, $P10) = rx1245_cur."!mark_fail"(0)
    lt rx1245_pos, -1, rx1245_done
    eq rx1245_pos, -1, rx1245_fail
    jump $I10
  rx1245_done:
    rx1245_cur."!cursor_fail"()
    if_null rx1245_debug, debug_459
    rx1245_cur."!cursor_debug"("FAIL", "charspec")
  debug_459:
    .return (rx1245_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("104_1329260312.462") :method :outer("11_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 124
    $P103 = self."!PREFIX__!subrule"("panic", "")
    $P104 = self."!PREFIX__!subrule"("charnames", "[")
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, "?"
    push $P105, "@"
    push $P105, "A"
    push $P105, "B"
    push $P105, "C"
    push $P105, "D"
    push $P105, "E"
    push $P105, "F"
    push $P105, "G"
    push $P105, "H"
    push $P105, "I"
    push $P105, "J"
    push $P105, "K"
    push $P105, "L"
    push $P105, "M"
    push $P105, "N"
    push $P105, "O"
    push $P105, "P"
    push $P105, "Q"
    push $P105, "R"
    push $P105, "S"
    push $P105, "T"
    push $P105, "U"
    push $P105, "V"
    push $P105, "W"
    push $P105, "X"
    push $P105, "Y"
    push $P105, "Z"
    push $P105, ""
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O" :anon :subid("105_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1251
    .param pmc param_1252
    .param pmc param_1253 :optional
    .param int has_param_1253 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 175
    .lex "self", param_1251
    .lex "$spec", param_1252
    if has_param_1253, optparam_460
    new $P103, "Undef"
    set param_1253, $P103
  optparam_460:
    .lex "$save", param_1253
.annotate 'line', 176

            .local pmc self, cur_class
            .local string spec, save
            .local int has_save
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'
            $P0 = find_lex '$spec'
            spec = $P0
            has_save = 0
            $P0 = find_lex '$save'
            unless $P0 goto no_save
            save = $P0
            has_save = 1
          no_save:

            # First, get the hash cache.  Right now we have one
            # cache for all grammars; eventually we may need a way to
            # separate them out by cursor type.
            .local pmc ohash
            ohash = get_global '%!ohash'
            unless null ohash goto have_ohash
            ohash = new ['Hash']
            set_global '%!ohash', ohash
          have_ohash:

            # See if we've already created a Hash for the current
            # specification string -- if so, use that.
            .local pmc hash
            hash = ohash[spec]
            unless null hash goto hash_done

            # Otherwise, we need to build a new one.
            hash = new ['Hash']
            .local int pos, eos
            pos = 0
            eos = length spec
          spec_loop:
            pos = find_not_cclass .CCLASS_WHITESPACE, spec, pos, eos
            if pos >= eos goto spec_done
            $S0 = substr spec, pos, 1
            if $S0 == ',' goto spec_comma
            if $S0 == ':' goto spec_pair

            # If whatever we found doesn't start with a colon, treat it
            # as a lookup of a previously saved hash to be merged in.
            .local string lookup
            .local int lpos
            # Find the first whitespace or comma
            lpos = find_cclass .CCLASS_WHITESPACE, spec, pos, eos
            $I0 = index spec, ',', pos
            if $I0 < 0 goto have_lookup_lpos
            if $I0 >= lpos goto have_lookup_lpos
            lpos = $I0
          have_lookup_lpos:
            $I0 = lpos - pos
            lookup = substr spec, pos, $I0
            .local pmc lhash, lhash_it
            lhash = ohash[lookup]
            if null lhash goto err_lookup
            lhash_it = iter lhash
          lhash_loop:
            unless lhash_it goto lhash_done
            $S0 = shift lhash_it
            $P0 = lhash[$S0]
            hash[$S0] = $P0
            goto lhash_loop
          lhash_done:
            pos = lpos
            goto spec_loop

            # We just ignore commas between elements for now.
          spec_comma:
            inc pos
            goto spec_loop

            # If we see a colon, then we want to parse whatever
            # comes next like a pair.
          spec_pair:
            # eat colon
            inc pos
            .local string name
            .local pmc value
            value = new ['Boolean']

            # If the pair is of the form :!name, then reverse the value
            # and skip the colon.
            $S0 = substr spec, pos, 1
            $I0 = iseq $S0, '!'
            pos += $I0
            $I0 = not $I0
            value = $I0

            # Get the name of the pair.
            lpos = find_not_cclass .CCLASS_WORD, spec, pos, eos
            $I0 = lpos - pos
            name = substr spec, pos, $I0
            pos = lpos

            # Look for a <...> that follows.
            $S0 = substr spec, pos, 1
            unless $S0 == '<' goto have_value
            inc pos
            lpos = index spec, '>', pos
            $I0 = lpos - pos
            $S0 = substr spec, pos, $I0
            value = box $S0
            pos = lpos + 1
          have_value:
            # Done processing the pair, store it in the hash.
            hash[name] = value
            goto spec_loop
          spec_done:
            # Done processing the spec string, cache the hash for later.
            ohash[spec] = hash
          hash_done:

            # If we've been called as a subrule, then build a pass-cursor
            # to indicate success and set the hash as the subrule's match object.
            if has_save goto save_hash
            ($P0, $I0) = self.'!cursor_start'()
            $P0.'!cursor_pass'($I0, '')
            setattribute $P0, cur_class, '$!match', hash
            .return ($P0)

            # save the hash under a new entry
          save_hash:
            ohash[save] = hash
            .return (self)

          err_lookup:
            self.'panic'('Unknown operator precedence specification "', lookup, '"')
        
.annotate 'line', 175
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "panic" :anon :subid("106_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1255
    .param pmc param_1256 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 321
    .lex "self", param_1255
    .lex "@args", param_1256
.annotate 'line', 322
    new $P103, "Undef"
    set $P1257, $P103
    .lex "$pos", $P1257
.annotate 'line', 323
    new $P104, "Undef"
    set $P1258, $P104
    .lex "$target", $P1258
.annotate 'line', 322
    set $P105, param_1255
    nqp_decontainerize $P106, $P105
    $P107 = $P106."pos"()
    set $P1257, $P107
.annotate 'line', 323
    set $P105, param_1255
    nqp_decontainerize $P106, $P105
    get_hll_global $P107, "GLOBAL"
    nqp_get_package_through_who $P108, $P107, "Regex"
    get_who $P109, $P108
    set $P110, $P109["Cursor"]
    getattribute $P111, $P106, $P110, "$!target"
    set $P1258, $P111
.annotate 'line', 324
    set $P1259, param_1256
    unless_null $P1259, vivify_461
    $P1259 = root_new ['parrot';'ResizablePMCArray']
  vivify_461:
    $P1259."push"(" at line ")
.annotate 'line', 325
    set $P1260, param_1256
    unless_null $P1260, vivify_462
    $P1260 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "HLL"
    get_who $P107, $P106
    set $P108, $P107["Compiler"]
    set $P109, $P1258
    unless_null $P109, vivify_463
    new $P109, "Undef"
  vivify_463:
    set $P110, $P1257
    unless_null $P110, vivify_464
    new $P110, "Undef"
  vivify_464:
    $P111 = $P108."lineof"($P109, $P110)
    $P1260."push"($P111)
.annotate 'line', 326
    set $P1261, param_1256
    unless_null $P1261, vivify_465
    $P1261 = root_new ['parrot';'ResizablePMCArray']
  vivify_465:
    $P1261."push"(", near \"")
.annotate 'line', 327
    set $P1262, param_1256
    unless_null $P1262, vivify_466
    $P1262 = root_new ['parrot';'ResizablePMCArray']
  vivify_466:
    set $P105, $P1258
    unless_null $P105, vivify_467
    new $P105, "Undef"
  vivify_467:
    set $S100, $P105
    set $P106, $P1257
    unless_null $P106, vivify_468
    new $P106, "Undef"
  vivify_468:
    set $I100, $P106
    new $P107, "Float"
    assign $P107, 10
    set $I101, $P107
    substr $S101, $S100, $I100, $I101
    escape $S102, $S101
    $P1262."push"($S102)
.annotate 'line', 328
    set $P1263, param_1256
    unless_null $P1263, vivify_469
    $P1263 = root_new ['parrot';'ResizablePMCArray']
  vivify_469:
    $P1263."push"("\"")
.annotate 'line', 329
    set $P1264, param_1256
    unless_null $P1264, vivify_470
    $P1264 = root_new ['parrot';'ResizablePMCArray']
  vivify_470:
    join $S100, "", $P1264
    die $S100
.annotate 'line', 321
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters" :anon :subid("107_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1266
    .param pmc param_1267
    .param pmc param_1268
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 342
    .lex "self", param_1266
    .lex "$target", param_1267
    .lex "$pos", param_1268
.annotate 'line', 343

            .local pmc self
            self = find_lex 'self'
            .local string target
            $P0 = find_lex '$target'
            target = $P0
            .local int pos
            $P0 = find_lex '$pos'
            pos = $P0

            .local string brackets, start, stop
            $P0 = find_lex '$brackets'
            brackets = $P0

            # peek at the next character
            start = substr target, pos, 1
            # colon and word characters aren't valid delimiters
            if start == ':' goto err_colon_delim
            $I0 = is_cclass .CCLASS_WORD, start, 0
            if $I0 goto err_word_delim
            $I0 = is_cclass .CCLASS_WHITESPACE, start, 0
            if $I0 goto err_ws_delim

            # assume stop delim is same as start, for the moment
            stop = start

            # see if we have an opener or closer
            $I0 = index brackets, start
            if $I0 < 0 goto bracket_end
            # if it's a closing bracket, that's an error also
            $I1 = $I0 % 2
            if $I1 goto err_close
            # it's an opener, so get the closing bracket
            inc $I0
            stop = substr brackets, $I0, 1

            # see if the opening bracket is repeated
            .local int len
            len = 0
          bracket_loop:
            inc pos
            inc len
            $S0 = substr target, pos, 1
            if $S0 == start goto bracket_loop
            if len == 1 goto bracket_end
            start = repeat start, len
            stop = repeat stop, len
          bracket_end:
            .return (start, stop, pos)

          err_colon_delim:
            self.'panic'('Colons may not be used to delimit quoting constructs')
          err_word_delim:
            self.'panic'('Alphanumeric character is not allowed as a delimiter')
          err_ws_delim:
            self.'panic'('Whitespace character is not allowed as a delimiter')
          err_close:
            self.'panic'('Use of a closing delimiter for an opener is reserved')
        
.annotate 'line', 342
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_EXPR" :anon :subid("108_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1270
    .param pmc param_1271 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 404
    .lex "self", param_1270
    .lex "@args", param_1271
.annotate 'line', 405

            .include 'src/Regex/constants.pir'
            
            .local pmc self, cur_class, args
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'
            args = find_lex '@args'

            .local pmc cur, debug
            .local string target
            .local int pos

            (cur, pos, target) = self.'!cursor_start'()
            debug = getattribute cur, cur_class, '$!debug'
            if null debug goto debug_1
            cur.'!cursor_debug'('START', 'quote_EXPR')
          debug_1:

            .local pmc quotemod, true
            .lex '%*QUOTEMOD', quotemod
            quotemod = new ['Hash']

            true = box 1


          args_loop:
            unless args goto args_done
            .local string mod
            mod = shift args
            mod = substr mod, 1
            quotemod[mod] = true
            if mod == 'qq' goto opt_qq
            if mod == 'b' goto opt_b
            goto args_loop
          opt_qq:
            quotemod['s'] = true
            quotemod['a'] = true
            quotemod['h'] = true
            quotemod['f'] = true
            quotemod['c'] = true
            quotemod['b'] = true
          opt_b:
            quotemod['q'] = true
            goto args_loop
          args_done:


            .local pmc start, stop
            (start, stop) = self.'peek_delimiters'(target, pos)

            .lex '$*QUOTE_START', start
            .lex '$*QUOTE_STOP', stop

            $P10 = cur.'quote_delimited'()
            unless $P10 goto fail
            cur.'!mark_push'(0, CURSOR_FAIL, 0, $P10)
            $P10.'!cursor_names'('quote_delimited')
            pos = $P10.'pos'()
            cur.'!cursor_pass'(pos, 'quote_EXPR')
            if null debug goto done
            cur.'!cursor_debug'('PASS', 'quote_EXPR')
            goto done
          fail:
            if null debug goto done
            cur.'!cursor_debug'('FAIL', 'quote_EXPR')
          done:
            .return (cur)
        
.annotate 'line', 404
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quotemod_check"  :subid("109_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1273
    .param pmc param_1274
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 475
    .lex "self", param_1273
    .lex "$mod", param_1274
    set $P103, param_1274
    unless_null $P103, vivify_471
    new $P103, "Undef"
  vivify_471:
    find_dynamic_lex $P106, "%*QUOTEMOD"
    unless_null $P106, vivify_472
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%QUOTEMOD"]
    unless_null $P106, vivify_473
    die "Contextual %*QUOTEMOD not found"
  vivify_473:
  vivify_472:
    set $P107, $P106[$P103]
    unless_null $P107, vivify_474
    new $P107, "Undef"
  vivify_474:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter" :anon :subid("110_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1276
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 479
    .lex "self", param_1276
.annotate 'line', 480

            .local pmc self, cur
            .local string target, start
            .local int pos
            self = find_lex 'self'

            (cur, pos, target) = self.'!cursor_start'()

            $P0 = find_dynamic_lex '$*QUOTE_START'
            if null $P0 goto fail
            start = $P0

            $I0 = length start
            $S0 = substr target, pos, $I0
            unless $S0 == start goto fail
            pos += $I0
            cur.'!cursor_pass'(pos, 'starter')
          fail:
            .return (cur)
        
.annotate 'line', 479
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "stopper" :anon :subid("111_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1278
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 502
    .lex "self", param_1278
.annotate 'line', 503

            .local pmc self, cur
            .local string target, stop
            .local int pos
            self = find_lex 'self'

            (cur, pos, target) = self.'!cursor_start'()

            $P0 = find_dynamic_lex '$*QUOTE_STOP'
            if null $P0 goto fail
            stop = $P0

            $I0 = length stop
            $S0 = substr target, pos, $I0
            unless $S0 == stop goto fail
            pos += $I0
            cur.'!cursor_pass'(pos, 'stopper')
          fail:
            .return (cur)
        
.annotate 'line', 502
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "split_words"  :subid("112_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1280
    .param pmc param_1281
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 525
    .lex "self", param_1280
    .lex "$words", param_1281
.annotate 'line', 526

            .local string words
            $P0 = find_lex '$words'
            words = $P0
            .local int pos, eos
            .local pmc result
            pos = 0
            eos = length words
            result = new ['ResizablePMCArray']
          split_loop:
            pos = find_not_cclass .CCLASS_WHITESPACE, words, pos, eos
            unless pos < eos goto split_done
            $I0 = find_cclass .CCLASS_WHITESPACE, words, pos, eos
            $I1 = $I0 - pos
            $S0 = substr words, pos, $I1
            push result, $S0
            pos = $I0
            goto split_loop
          split_done:
            .return (result)
        
.annotate 'line', 525
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR" :anon :subid("113_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1283
    .param pmc param_1284 :optional
    .param int has_param_1284 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 557
    .lex "self", param_1283
    if has_param_1284, optparam_475
    new $P103, "String"
    assign $P103, ""
    set param_1284, $P103
  optparam_475:
    .lex "$preclim", param_1284
.annotate 'line', 558

            .local pmc self, cur_class
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'

            .local string preclim
            $P0 = find_lex '$preclim'
            preclim = $P0
            
            .local pmc here, debug
            .local int pos
            (here, pos) = self.'!cursor_start'()
            debug = getattribute here, cur_class, '$!debug'
            if null debug goto debug_1
            here.'!cursor_debug'('START', 'EXPR')
          debug_1:

            .local string termishrx
            termishrx = 'termish'

            .local pmc opstack, termstack
            opstack = new ['ResizablePMCArray']
            .lex '@opstack', opstack
            termstack = new ['ResizablePMCArray']
            .lex '@termstack', termstack

          term_loop:
            here = here.termishrx()
            unless here goto fail
            .local pmc termish
            termish = here.'MATCH'()

            # interleave any prefix/postfix we might have found
            .local pmc termOPER, prefixish, postfixish
            termOPER = termish
          termOPER_loop:
            $I0 = exists termOPER['OPER']
            unless $I0 goto termOPER_done
            termOPER = termOPER['OPER']
            goto termOPER_loop
          termOPER_done:
            prefixish = termOPER['prefixish']
            postfixish = termOPER['postfixish']
            if null prefixish goto prefix_done

          prepostfix_loop:
            unless prefixish goto prepostfix_done
            unless postfixish goto prepostfix_done
            .local pmc preO, postO
            .local string preprec, postprec
            $P0 = prefixish[0]
            $P0 = $P0['OPER']
            preO = $P0['O']
            preprec = preO['prec']
            $P0 = postfixish[-1]
            $P0 = $P0['OPER']
            postO = $P0['O']
            postprec = postO['prec']
            if postprec < preprec goto post_shift
            if postprec > preprec goto pre_shift
            $S0 = postO['uassoc']
            if $S0 == 'right' goto pre_shift
          post_shift:
            $P0 = pop postfixish
            push opstack, $P0
            goto prepostfix_loop
          pre_shift:
            $P0 = shift prefixish
            push opstack, $P0
            goto prepostfix_loop
          prepostfix_done:

          prefix_loop:
            unless prefixish goto prefix_done
            $P0 = shift prefixish
            push opstack, $P0
            goto prefix_loop
          prefix_done:
            delete termish['prefixish']

          postfix_loop:
            if null postfixish goto postfix_done
            unless postfixish goto postfix_done
            $P0 = pop postfixish
            push opstack, $P0
            goto postfix_loop
          postfix_done:
            delete termish['postfixish']

            $P0 = termish['term']
            push termstack, $P0

            # Now see if we can fetch an infix operator
            .local pmc infixcur, infix
            here = here.'ws'()
            infixcur = here.'infixish'()
            unless infixcur goto term_done
            infix = infixcur.'MATCH'()

            .local pmc inO
            $P0 = infix['OPER']
            inO = $P0['O']
            termishrx = inO['nextterm']
            if termishrx goto have_termishrx
            termishrx = 'termish'
          have_termishrx:

            .local string inprec, inassoc, opprec
            inprec = inO['prec']
            unless inprec goto err_inprec
            if inprec < preclim goto term_done
            inassoc = inO['assoc']

            $P0 = inO['sub']
            if null $P0 goto subprec_done
            inO['prec'] = $P0
          subprec_done:

          reduce_loop:
            unless opstack goto reduce_done
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['O']
            opprec = $P0['prec']
            unless opprec > inprec goto reduce_gt_done
            self.'EXPR_reduce'(termstack, opstack)
            goto reduce_loop
          reduce_gt_done:

            unless opprec == inprec goto reduce_done
            # equal precedence, use associativity to decide
            unless inassoc == 'left' goto reduce_done
            # left associative, reduce immediately
            self.'EXPR_reduce'(termstack, opstack)
          reduce_done:

            push opstack, infix        # The Shift
            here = infixcur.'ws'()
            goto term_loop
          term_done:

          opstack_loop:
            unless opstack goto opstack_done
            self.'EXPR_reduce'(termstack, opstack)
            goto opstack_loop
          opstack_done:

          expr_done:
            .local pmc term
            term = pop termstack
            pos = here.'pos'()
            here = self.'!cursor_start'()
            repr_bind_attr_int here, cur_class, '$!pos', pos
            setattribute here, cur_class, '$!match', term
            here.'!reduce'('EXPR')
            if null debug goto done
            here.'!cursor_debug'('PASS', 'EXPR')
            goto done

          fail:
            if null debug goto done
            here.'!cursor_debug'('FAIL', 'EXPR')
          done:
            .return (here)

          err_internal:
            $I0 = termstack
            here.'panic'('Internal operator parser error, @termstack == ', $I0)
          err_inprec:
            infixcur.'panic'('Missing infixish operator precedence')
        
.annotate 'line', 557
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR_reduce" :anon :subid("114_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1286
    .param pmc param_1287
    .param pmc param_1288
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 731
    .lex "self", param_1286
    .lex "$termstack", param_1287
    .lex "$opstack", param_1288
.annotate 'line', 732

            .local pmc self, termstack, opstack
            self = find_lex 'self'
            termstack = find_lex '$termstack'
            opstack = find_lex '$opstack'

            .local pmc op, opOPER, opO
            .local string opassoc
            op = pop opstack
            opOPER = op['OPER']
            opO = opOPER['O']
            $P0 = opO['assoc']
            opassoc = $P0
            if opassoc == 'unary' goto op_unary
            if opassoc == 'list' goto op_list
          op_infix:
            .local pmc right, left
            right = pop termstack
            left = pop termstack
            op[0] = left
            op[1] = right
            $P0 = opO['reducecheck']
            if null $P0 goto op_infix_1
            $S0 = $P0
            self.$S0(op)
          op_infix_1:
            self.'!reduce'('EXPR', 'INFIX', op)
            goto done

          op_unary:
            .local pmc arg, afrom, ofrom
            arg = pop termstack
            op[0] = arg
            afrom = arg.'from'()
            ofrom = op.'from'()
            if afrom < ofrom goto op_postfix
          op_prefix:
            self.'!reduce'('EXPR', 'PREFIX', op)
            goto done
          op_postfix:
            self.'!reduce'('EXPR', 'POSTFIX', op)
            goto done

          op_list:
            .local string sym
            sym = ''
            $P0 = opOPER['sym']
            if null $P0 goto op_list_1
            sym = $P0
          op_list_1:
            arg = pop termstack
            unshift op, arg
          op_sym_loop:
            unless opstack goto op_sym_done
            $S0 = ''
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['sym']
            if null $P0 goto op_sym_1
            $S0 = $P0
          op_sym_1:
            if sym != $S0 goto op_sym_done
            arg = pop termstack
            unshift op, arg
            $P0 = pop opstack
            goto op_sym_loop
          op_sym_done:
            arg = pop termstack
            unshift op, arg
            self.'!reduce'('EXPR', 'LIST', op)
            goto done

          done:
            push termstack, op
        
.annotate 'line', 731
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ternary" :anon :subid("115_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1290
    .param pmc param_1291
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 809
    .lex "self", param_1290
    .lex "$match", param_1291
.annotate 'line', 810
    new $P103, "Float"
    assign $P103, 1
    set $I100, $P103
    set $P1292, param_1291
    unless_null $P1292, vivify_476
    $P1292 = root_new ['parrot';'ResizablePMCArray']
  vivify_476:
    set $P104, $P1292[$I100]
    unless_null $P104, vivify_477
    new $P104, "Undef"
  vivify_477:
    new $P105, "Float"
    assign $P105, 2
    set $I101, $P105
    set $P1293, param_1291
    unless_null $P1293, vivify_478
    $P1293 = root_new ['parrot';'ResizablePMCArray']
    set param_1291, $P1293
  vivify_478:
    set $P1293[$I101], $P104
.annotate 'line', 811
    set $P1294, param_1291
    unless_null $P1294, vivify_479
    $P1294 = root_new ['parrot';'Hash']
  vivify_479:
    set $P1295, $P1294["infix"]
    unless_null $P1295, vivify_480
    $P1295 = root_new ['parrot';'Hash']
  vivify_480:
    set $P103, $P1295["EXPR"]
    unless_null $P103, vivify_481
    new $P103, "Undef"
  vivify_481:
    new $P104, "Float"
    assign $P104, 1
    set $I100, $P104
    set $P1296, param_1291
    unless_null $P1296, vivify_482
    $P1296 = root_new ['parrot';'ResizablePMCArray']
    set param_1291, $P1296
  vivify_482:
    set $P1296[$I100], $P103
.annotate 'line', 809
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER" :anon :subid("116_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1298
    .param pmc param_1299
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 814
    .lex "self", param_1298
    .lex "$markname", param_1299
.annotate 'line', 815
    new $P103, "Undef"
    set $P1300, $P103
    .lex "$pos", $P1300
.annotate 'line', 817
    $P1302 = root_new ['parrot';'Hash']
    set $P1301, $P1302
    .lex "%markhash", $P1301
.annotate 'line', 815
    set $P104, param_1298
    nqp_decontainerize $P105, $P104
    $P106 = $P105."pos"()
    set $P1300, $P106
.annotate 'line', 816
    set $P104, param_1298
    nqp_decontainerize $P105, $P104
    set $P106, param_1299
    unless_null $P106, vivify_483
    new $P106, "Undef"
  vivify_483:
    set $P107, $P1300
    unless_null $P107, vivify_484
    new $P107, "Undef"
  vivify_484:
    $P105."!cursor_debug"("START", "MARKER name=", $P106, ", pos=", $P107)
.annotate 'line', 817

            $P1303 = get_global '%!MARKHASH'
            unless null $P1303 goto have_markhash
            $P1303 = new ['Hash']
            set_global '%!MARKHASH', $P1303
          have_markhash:
        
    set $P1301, $P1303
.annotate 'line', 824
    set $P104, $P1300
    unless_null $P104, vivify_485
    new $P104, "Undef"
  vivify_485:
    set $P105, param_1299
    unless_null $P105, vivify_486
    new $P105, "Undef"
  vivify_486:
    set $P1304, $P1301
    unless_null $P1304, vivify_487
    $P1304 = root_new ['parrot';'Hash']
    set $P1301, $P1304
  vivify_487:
    set $P1304[$P105], $P104
.annotate 'line', 825
    set $P104, param_1298
    nqp_decontainerize $P105, $P104
    $P105."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 814
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED" :anon :subid("117_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1306
    .param pmc param_1307
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 829
    .lex "self", param_1306
    .lex "$markname", param_1307
.annotate 'line', 830
    set $P103, param_1306
    nqp_decontainerize $P104, $P103
    set $P105, param_1307
    unless_null $P105, vivify_488
    new $P105, "Undef"
  vivify_488:
    $P104."!cursor_debug"("START", "MARKED name=", $P105)
.annotate 'line', 831

            .local pmc self, markname, markhash
            self = find_lex 'self'
            markname = find_lex '$markname'
            markhash = get_global '%!MARKHASH'
            if null markhash goto fail
            $P0 = markhash[markname]
            if null $P0 goto fail
            $P1 = self.'pos'()
            unless $P0 == $P1 goto fail
            self.'!cursor_debug'('PASS','MARKED')
            .return (1)
          fail:
            self.'!cursor_debug'('FAIL','MARKED')
            .return (0)
        
.annotate 'line', 829
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "LANG" :anon :subid("118_1329260312.462") :outer("11_1329260312.462")
    .param pmc param_1309
    .param pmc param_1310
    .param pmc param_1311
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 849
    .lex "self", param_1309
    .lex "$lang", param_1310
    .lex "$regex", param_1311
.annotate 'line', 850
    new $P103, "Undef"
    set $P1312, $P103
    .lex "$lang_cursor", $P1312
.annotate 'line', 851
    new $P104, "Undef"
    set $P1313, $P104
    .lex "$*ACTIONS", $P1313
.annotate 'line', 852
    new $P105, "Undef"
    set $P1314, $P105
    .lex "$cur", $P1314
.annotate 'line', 850
    set $P106, param_1310
    unless_null $P106, vivify_489
    new $P106, "Undef"
  vivify_489:
    find_dynamic_lex $P109, "%*LANG"
    unless_null $P109, vivify_490
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%LANG"]
    unless_null $P109, vivify_491
    die "Contextual %*LANG not found"
  vivify_491:
  vivify_490:
    set $P110, $P109[$P106]
    unless_null $P110, vivify_492
    new $P110, "Undef"
  vivify_492:
    set $P1312, $P110
.annotate 'line', 851
    set $P106, param_1310
    unless_null $P106, vivify_493
    new $P106, "Undef"
  vivify_493:
    concat $P107, $P106, "-actions"
    find_dynamic_lex $P110, "%*LANG"
    unless_null $P110, vivify_494
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%LANG"]
    unless_null $P110, vivify_495
    die "Contextual %*LANG not found"
  vivify_495:
  vivify_494:
    set $P111, $P110[$P107]
    unless_null $P111, vivify_496
    new $P111, "Undef"
  vivify_496:
    set $P1313, $P111
.annotate 'line', 852

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P1315, pos) = self.'!cursor_start'($P0)
            $P1315.'!cursor_pos'(pos)
        
    set $P1314, $P1315
.annotate 'line', 860
    set $P106, $P1314
    unless_null $P106, vivify_497
    new $P106, "Undef"
  vivify_497:
    set $P107, param_1311
    unless_null $P107, vivify_498
    new $P107, "Undef"
  vivify_498:
    set $S100, $P107
    $P108 = $P106.$S100()
.annotate 'line', 849
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1317"  :subid("119_1329260312.462") :outer("10_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 865
    .const 'Sub' $P1557 = "163_1329260312.462" 
    capture_lex $P1557
    .const 'Sub' $P1548 = "161_1329260312.462" 
    capture_lex $P1548
    .const 'Sub' $P1540 = "160_1329260312.462" 
    capture_lex $P1540
    .const 'Sub' $P1533 = "159_1329260312.462" 
    capture_lex $P1533
    .const 'Sub' $P1530 = "158_1329260312.462" 
    capture_lex $P1530
    .const 'Sub' $P1526 = "157_1329260312.462" 
    capture_lex $P1526
    .const 'Sub' $P1518 = "156_1329260312.462" 
    capture_lex $P1518
    .const 'Sub' $P1510 = "155_1329260312.462" 
    capture_lex $P1510
    .const 'Sub' $P1507 = "154_1329260312.462" 
    capture_lex $P1507
    .const 'Sub' $P1504 = "153_1329260312.462" 
    capture_lex $P1504
    .const 'Sub' $P1501 = "152_1329260312.462" 
    capture_lex $P1501
    .const 'Sub' $P1498 = "151_1329260312.462" 
    capture_lex $P1498
    .const 'Sub' $P1495 = "150_1329260312.462" 
    capture_lex $P1495
    .const 'Sub' $P1492 = "149_1329260312.462" 
    capture_lex $P1492
    .const 'Sub' $P1488 = "148_1329260312.462" 
    capture_lex $P1488
    .const 'Sub' $P1485 = "147_1329260312.462" 
    capture_lex $P1485
    .const 'Sub' $P1479 = "146_1329260312.462" 
    capture_lex $P1479
    .const 'Sub' $P1452 = "144_1329260312.462" 
    capture_lex $P1452
    .const 'Sub' $P1432 = "141_1329260312.462" 
    capture_lex $P1432
    .const 'Sub' $P1429 = "140_1329260312.462" 
    capture_lex $P1429
    .const 'Sub' $P1426 = "139_1329260312.462" 
    capture_lex $P1426
    .const 'Sub' $P1423 = "138_1329260312.462" 
    capture_lex $P1423
    .const 'Sub' $P1420 = "137_1329260312.462" 
    capture_lex $P1420
    .const 'Sub' $P1417 = "136_1329260312.462" 
    capture_lex $P1417
    .const 'Sub' $P1413 = "135_1329260312.462" 
    capture_lex $P1413
    .const 'Sub' $P1409 = "134_1329260312.462" 
    capture_lex $P1409
    .const 'Sub' $P1406 = "133_1329260312.462" 
    capture_lex $P1406
    .const 'Sub' $P1402 = "132_1329260312.462" 
    capture_lex $P1402
    .const 'Sub' $P1398 = "131_1329260312.462" 
    capture_lex $P1398
    .const 'Sub' $P1357 = "128_1329260312.462" 
    capture_lex $P1357
    .const 'Sub' $P1341 = "125_1329260312.462" 
    capture_lex $P1341
    .const 'Sub' $P1339 = "124_1329260312.462" 
    capture_lex $P1339
    .const 'Sub' $P1328 = "121_1329260312.462" 
    capture_lex $P1328
    .const 'Sub' $P1320 = "120_1329260312.462" 
    capture_lex $P1320
.annotate 'line', 866
    .const 'Sub' $P1320 = "120_1329260312.462" 
    newclosure $P1325, $P1320
    set $P1319, $P1325
    .lex "string_to_int", $P1319
.annotate 'line', 865
    set $P102, $P1319
    find_lex $P103, "$?PACKAGE"
    get_who $P105, $P103
    set $P105["string_to_int"], $P102
    .lex "$?PACKAGE", $P1326
    .lex "$?CLASS", $P1327
    set $P106, $P1319
.annotate 'line', 1044
    .const 'Sub' $P1557 = "163_1329260312.462" 
    newclosure $P1563, $P1557
.annotate 'line', 865
    .return ($P1563)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "string_to_int"  :subid("120_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1321
    .param pmc param_1322
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 866
    .lex "$src", param_1321
    .lex "$base", param_1322
.annotate 'line', 867
    new $P101, "Undef"
    set $P1323, $P101
    .lex "$res", $P1323
    set $P102, param_1322
    unless_null $P102, vivify_499
    new $P102, "Undef"
  vivify_499:
    set $I100, $P102
    set $P103, param_1321
    unless_null $P103, vivify_500
    new $P103, "Undef"
  vivify_500:
    set $S100, $P103
    new $P104, "Float"
    assign $P104, 0
    set $I101, $P104
    new $P105, "Float"
    assign $P105, 2
    set $I102, $P105
    nqp_radix $P106, $I100, $S100, $I101, $I102
    set $P1323, $P106
.annotate 'line', 869
    new $P103, "Float"
    assign $P103, 2
    set $S100, $P103
    set $P102, $P1323
    unless_null $P102, vivify_501
    new $P102, "Undef"
  vivify_501:
    set $P104, $P102[$S100]
    set $N100, $P104
    set $P105, param_1321
    unless_null $P105, vivify_502
    new $P105, "Undef"
  vivify_502:
    set $S101, $P105
    length $I100, $S101
    set $N101, $I100
    iseq $I101, $N100, $N101
    if $I101, unless_1324_end
.annotate 'line', 868
    set $P106, param_1321
    unless_null $P106, vivify_503
    new $P106, "Undef"
  vivify_503:
    $P107 = $P106."CURSOR"()
    new $P108, 'String'
    set $P108, "'"
    set $P109, param_1321
    unless_null $P109, vivify_504
    new $P109, "Undef"
  vivify_504:
    concat $P110, $P108, $P109
    concat $P111, $P110, "' is not a valid number"
    $P107."panic"($P111)
  unless_1324_end:
.annotate 'line', 870
    new $P103, "Float"
    assign $P103, 0
    set $S100, $P103
    set $P102, $P1323
    unless_null $P102, vivify_505
    new $P102, "Undef"
  vivify_505:
    set $P104, $P102[$S100]
.annotate 'line', 866
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string" :anon :subid("121_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1329
    .param pmc param_1330
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 873
    .const 'Sub' $P1333 = "122_1329260312.462" 
    capture_lex $P1333
    .lex "self", param_1329
    .lex "$ints", param_1330
.annotate 'line', 874
    set $P107, param_1330
    unless_null $P107, vivify_506
    new $P107, "Undef"
  vivify_506:
    does $I100, $P107, "array"
    if $I100, if_1331
.annotate 'line', 881
    set $P111, param_1330
    unless_null $P111, vivify_507
    new $P111, "Undef"
  vivify_507:
    $I101 = $P111."ast"()
    chr $S100, $I101
    new $P112, 'String'
    set $P112, $S100
.annotate 'line', 880
    set $P106, $P112
.annotate 'line', 874
    goto if_1331_end
  if_1331:
    .const 'Sub' $P1333 = "122_1329260312.462" 
    capture_lex $P1333
    $P110 = $P1333()
    set $P106, $P110
  if_1331_end:
.annotate 'line', 873
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1332"  :anon :subid("122_1329260312.462") :outer("121_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 874
    .const 'Sub' $P1336 = "123_1329260312.462" 
    capture_lex $P1336
.annotate 'line', 875
    new $P108, "Undef"
    set $P1334, $P108
    .lex "$result", $P1334
    new $P109, "String"
    assign $P109, ""
    set $P1334, $P109
.annotate 'line', 876
    find_lex $P110, "$ints"
    unless_null $P110, vivify_508
    new $P110, "Undef"
  vivify_508:
    defined $I101, $P110
    unless $I101, for_undef_509
    iter $P109, $P110
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1338_handler
    push_eh $P112
  loop1338_test:
    unless $P109, loop1338_done
    shift $P111, $P109
  loop1338_redo:
    .const 'Sub' $P1336 = "123_1329260312.462" 
    capture_lex $P1336
    $P1336($P111)
  loop1338_next:
    goto loop1338_test
  loop1338_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1338_next
    eq $P113, .CONTROL_LOOP_REDO, loop1338_redo
  loop1338_done:
    pop_eh 
  for_undef_509:
.annotate 'line', 874
    set $P109, $P1334
    unless_null $P109, vivify_512
    new $P109, "Undef"
  vivify_512:
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1335"  :anon :subid("123_1329260312.462") :outer("122_1329260312.462")
    .param pmc param_1337
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 876
    .lex "$_", param_1337
.annotate 'line', 877
    find_lex $P112, "$result"
    unless_null $P112, vivify_510
    new $P112, "Undef"
  vivify_510:
    find_lex $P113, "$_"
    unless_null $P113, vivify_511
    new $P113, "Undef"
  vivify_511:
    $I102 = $P113."ast"()
    chr $S100, $I102
    concat $P114, $P112, $S100
    store_lex "$result", $P114
.annotate 'line', 876
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE" :anon :subid("124_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1340
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 886
    .lex "self", param_1340
.annotate 'line', 887
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P107, $P106, "PAST"
    get_who $P108, $P107
    set $P109, $P108["Op"]
.annotate 'line', 893
    new $P110, "ResizablePMCArray"
    push $P110, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P110, "    if null $P0 goto ctxsave_done"
    push $P110, "    $I0 = can $P0, \"ctxsave\""
    push $P110, "    unless $I0 goto ctxsave_done"
    push $P110, "    $P0.\"ctxsave\"()"
    push $P110, "  ctxsave_done:"
.annotate 'line', 887
    $P111 = $P109."new"($P110 :named("inline"))
.annotate 'line', 886
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX" :anon :subid("125_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1342
    .param pmc param_1343
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 900
    .const 'Sub' $P1348 = "126_1329260312.462" 
    capture_lex $P1348
    .lex "self", param_1342
    .lex "$block", param_1343
.annotate 'line', 901
    new $P106, "Undef"
    set $P1344, $P106
    .lex "$outer_ctx", $P1344
    find_dynamic_lex $P109, "%*COMPILING"
    unless_null $P109, vivify_513
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%COMPILING"]
    unless_null $P109, vivify_514
    die "Contextual %*COMPILING not found"
  vivify_514:
  vivify_513:
    set $P1345, $P109["%?OPTIONS"]
    unless_null $P1345, vivify_515
    $P1345 = root_new ['parrot';'Hash']
  vivify_515:
    set $P110, $P1345["outer_ctx"]
    unless_null $P110, vivify_516
    new $P110, "Undef"
  vivify_516:
    set $P1344, $P110
.annotate 'line', 902
    set $P108, $P1344
    unless_null $P108, vivify_517
    new $P108, "Undef"
  vivify_517:
    defined $I100, $P108
    if $I100, if_1346
    new $P107, 'Integer'
    set $P107, $I100
    goto if_1346_end
  if_1346:
    .const 'Sub' $P1348 = "126_1329260312.462" 
    capture_lex $P1348
    $P110 = $P1348()
    set $P107, $P110
  if_1346_end:
.annotate 'line', 900
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1347"  :anon :subid("126_1329260312.462") :outer("125_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 902
    .const 'Sub' $P1354 = "127_1329260312.462" 
    capture_lex $P1354
.annotate 'line', 903
    $P1350 = root_new ['parrot';'ResizablePMCArray']
    set $P1349, $P1350
    .lex "@ns", $P1349
    find_lex $P109, "$outer_ctx"
    unless_null $P109, vivify_518
    new $P109, "Undef"
  vivify_518:
    getattribute $P110, $P109, "current_namespace"
    $P111 = $P110."get_name"()
    set $P1349, $P111
.annotate 'line', 904
    set $P1351, $P1349
    unless_null $P1351, vivify_519
    $P1351 = root_new ['parrot';'ResizablePMCArray']
  vivify_519:
    $P1351."shift"()
.annotate 'line', 905
    find_lex $P109, "$block"
    unless_null $P109, vivify_520
    new $P109, "Undef"
  vivify_520:
    set $P1352, $P1349
    unless_null $P1352, vivify_521
    $P1352 = root_new ['parrot';'ResizablePMCArray']
  vivify_521:
    $P109."namespace"($P1352)
.annotate 'line', 906
    find_lex $P110, "$outer_ctx"
    unless_null $P110, vivify_522
    new $P110, "Undef"
  vivify_522:
    $P111 = $P110."lexpad_full"()
    defined $I101, $P111
    unless $I101, for_undef_523
    iter $P109, $P111
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1356_handler
    push_eh $P113
  loop1356_test:
    unless $P109, loop1356_done
    shift $P112, $P109
  loop1356_redo:
    .const 'Sub' $P1354 = "127_1329260312.462" 
    capture_lex $P1354
    $P1354($P112)
  loop1356_next:
    goto loop1356_test
  loop1356_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1356_next
    eq $P114, .CONTROL_LOOP_REDO, loop1356_redo
  loop1356_done:
    pop_eh 
  for_undef_523:
.annotate 'line', 902
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1353"  :anon :subid("127_1329260312.462") :outer("126_1329260312.462")
    .param pmc param_1355
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 906
    .lex "$_", param_1355
.annotate 'line', 907
    find_lex $P113, "$block"
    unless_null $P113, vivify_524
    new $P113, "Undef"
  vivify_524:
    find_lex $P114, "$_"
    unless_null $P114, vivify_525
    new $P114, "Undef"
  vivify_525:
    $P115 = $P114."key"()
    find_lex $P116, "$_"
    unless_null $P116, vivify_526
    new $P116, "Undef"
  vivify_526:
    $P117 = $P116."value"()
    $P118 = $P113."symbol"($P115, "lexical" :named("scope"), $P117 :named("value"))
.annotate 'line', 906
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR" :anon :subid("128_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1360
    .param pmc param_1361
    .param pmc param_1362 :optional
    .param int has_param_1362 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 913
    .const 'Sub' $P1394 = "130_1329260312.462" 
    capture_lex $P1394
    .const 'Sub' $P1386 = "129_1329260312.462" 
    capture_lex $P1386
    new $P1359, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1359, control_1358
    push_eh $P1359
    .lex "self", param_1360
    .lex "$/", param_1361
    if has_param_1362, optparam_527
    new $P106, "Undef"
    set param_1362, $P106
  optparam_527:
    .lex "$key", param_1362
.annotate 'line', 915
    new $P107, "Undef"
    set $P1363, $P107
    .lex "$past", $P1363
.annotate 'line', 914
    set $P108, param_1362
    unless_null $P108, vivify_528
    new $P108, "Undef"
  vivify_528:
    if $P108, unless_1364_end
    new $P109, "Exception"
    set $P109['type'], .CONTROL_RETURN
    new $P110, "Float"
    assign $P110, 0
    setattribute $P109, 'payload', $P110
    throw $P109
  unless_1364_end:
.annotate 'line', 915
    set $P108, param_1361
    unless_null $P108, vivify_529
    new $P108, "Undef"
  vivify_529:
    $P109 = $P108."ast"()
    set $P1365, $P109
    defined $I1367, $P1365
    if $I1367, default_1366
    set $P1368, param_1361
    unless_null $P1368, vivify_530
    $P1368 = root_new ['parrot';'Hash']
  vivify_530:
    set $P110, $P1368["OPER"]
    unless_null $P110, vivify_531
    new $P110, "Undef"
  vivify_531:
    $P111 = $P110."ast"()
    set $P1365, $P111
  default_1366:
    set $P1363, $P1365
.annotate 'line', 916
    set $P108, $P1363
    unless_null $P108, vivify_532
    new $P108, "Undef"
  vivify_532:
    if $P108, unless_1369_end
.annotate 'line', 917
    get_hll_global $P109, "GLOBAL"
    nqp_get_package_through_who $P110, $P109, "PAST"
    get_who $P111, $P110
    set $P112, $P111["Op"]
    set $P113, param_1361
    unless_null $P113, vivify_533
    new $P113, "Undef"
  vivify_533:
    $P114 = $P112."new"($P113 :named("node"))
    set $P1363, $P114
.annotate 'line', 918
    set $P1371, param_1361
    unless_null $P1371, vivify_534
    $P1371 = root_new ['parrot';'Hash']
  vivify_534:
    set $P1372, $P1371["OPER"]
    unless_null $P1372, vivify_535
    $P1372 = root_new ['parrot';'Hash']
  vivify_535:
    set $P1373, $P1372["O"]
    unless_null $P1373, vivify_536
    $P1373 = root_new ['parrot';'Hash']
  vivify_536:
    set $P109, $P1373["pasttype"]
    unless_null $P109, vivify_537
    new $P109, "Undef"
  vivify_537:
    if $P109, if_1370
.annotate 'line', 919
    set $P1378, param_1361
    unless_null $P1378, vivify_538
    $P1378 = root_new ['parrot';'Hash']
  vivify_538:
    set $P1379, $P1378["OPER"]
    unless_null $P1379, vivify_539
    $P1379 = root_new ['parrot';'Hash']
  vivify_539:
    set $P1380, $P1379["O"]
    unless_null $P1380, vivify_540
    $P1380 = root_new ['parrot';'Hash']
  vivify_540:
    set $P110, $P1380["pirop"]
    unless_null $P110, vivify_541
    new $P110, "Undef"
  vivify_541:
    unless $P110, if_1377_end
    set $P111, $P1363
    unless_null $P111, vivify_542
    new $P111, "Undef"
  vivify_542:
    set $P1381, param_1361
    unless_null $P1381, vivify_543
    $P1381 = root_new ['parrot';'Hash']
  vivify_543:
    set $P1382, $P1381["OPER"]
    unless_null $P1382, vivify_544
    $P1382 = root_new ['parrot';'Hash']
  vivify_544:
    set $P1383, $P1382["O"]
    unless_null $P1383, vivify_545
    $P1383 = root_new ['parrot';'Hash']
  vivify_545:
    set $P112, $P1383["pirop"]
    unless_null $P112, vivify_546
    new $P112, "Undef"
  vivify_546:
    set $S100, $P112
    $P111."pirop"($S100)
  if_1377_end:
    goto if_1370_end
  if_1370:
.annotate 'line', 918
    set $P110, $P1363
    unless_null $P110, vivify_547
    new $P110, "Undef"
  vivify_547:
    set $P1374, param_1361
    unless_null $P1374, vivify_548
    $P1374 = root_new ['parrot';'Hash']
  vivify_548:
    set $P1375, $P1374["OPER"]
    unless_null $P1375, vivify_549
    $P1375 = root_new ['parrot';'Hash']
  vivify_549:
    set $P1376, $P1375["O"]
    unless_null $P1376, vivify_550
    $P1376 = root_new ['parrot';'Hash']
  vivify_550:
    set $P111, $P1376["pasttype"]
    unless_null $P111, vivify_551
    new $P111, "Undef"
  vivify_551:
    set $S100, $P111
    $P110."pasttype"($S100)
  if_1370_end:
.annotate 'line', 920
    set $P109, $P1363
    unless_null $P109, vivify_552
    new $P109, "Undef"
  vivify_552:
    $P110 = $P109."name"()
    if $P110, unless_1384_end
    .const 'Sub' $P1386 = "129_1329260312.462" 
    capture_lex $P1386
    $P1386()
  unless_1384_end:
  unless_1369_end:
.annotate 'line', 926
    set $P108, param_1362
    unless_null $P108, vivify_560
    new $P108, "Undef"
  vivify_560:
    set $S100, $P108
    iseq $I100, $S100, "POSTFIX"
    if $I100, if_1391
.annotate 'line', 928
    set $P110, param_1361
    unless_null $P110, vivify_561
    new $P110, "Undef"
  vivify_561:
    $P111 = $P110."list"()
    defined $I101, $P111
    unless $I101, for_undef_562
    iter $P109, $P111
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1397_handler
    push_eh $P114
  loop1397_test:
    unless $P109, loop1397_done
    shift $P112, $P109
  loop1397_redo:
    .const 'Sub' $P1394 = "130_1329260312.462" 
    capture_lex $P1394
    $P1394($P112)
  loop1397_next:
    goto loop1397_test
  loop1397_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1397_next
    eq $P115, .CONTROL_LOOP_REDO, loop1397_redo
  loop1397_done:
    pop_eh 
  for_undef_562:
.annotate 'line', 927
    goto if_1391_end
  if_1391:
.annotate 'line', 926
    set $P109, $P1363
    unless_null $P109, vivify_566
    new $P109, "Undef"
  vivify_566:
    new $P110, "Float"
    assign $P110, 0
    set $I101, $P110
    set $P1392, param_1361
    unless_null $P1392, vivify_567
    $P1392 = root_new ['parrot';'ResizablePMCArray']
  vivify_567:
    set $P111, $P1392[$I101]
    unless_null $P111, vivify_568
    new $P111, "Undef"
  vivify_568:
    $P112 = $P111."ast"()
    $P109."unshift"($P112)
  if_1391_end:
.annotate 'line', 930
    set $P108, param_1361
    set $P109, $P1363
    unless_null $P109, vivify_569
    new $P109, "Undef"
  vivify_569:
    $P110 = $P108."!make"($P109)
.annotate 'line', 913
    .return ($P110)
  control_1358:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1385"  :anon :subid("129_1329260312.462") :outer("128_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 922
    new $P111, "Undef"
    set $P1387, $P111
    .lex "$name", $P1387
.annotate 'line', 921
    find_lex $P112, "$key"
    unless_null $P112, vivify_553
    new $P112, "Undef"
  vivify_553:
    set $S100, $P112
    iseq $I100, $S100, "LIST"
    unless $I100, if_1388_end
    new $P113, "String"
    assign $P113, "infix"
    store_lex "$key", $P113
  if_1388_end:
.annotate 'line', 922
    find_lex $P112, "$key"
    unless_null $P112, vivify_554
    new $P112, "Undef"
  vivify_554:
    set $S100, $P112
    downcase $S101, $S100
    new $P113, 'String'
    set $P113, $S101
    concat $P114, $P113, ":<"
    find_lex $P1389, "$/"
    unless_null $P1389, vivify_555
    $P1389 = root_new ['parrot';'Hash']
  vivify_555:
    set $P1390, $P1389["OPER"]
    unless_null $P1390, vivify_556
    $P1390 = root_new ['parrot';'Hash']
  vivify_556:
    set $P115, $P1390["sym"]
    unless_null $P115, vivify_557
    new $P115, "Undef"
  vivify_557:
    concat $P116, $P114, $P115
    concat $P117, $P116, ">"
    set $P1387, $P117
.annotate 'line', 923
    find_lex $P112, "$past"
    unless_null $P112, vivify_558
    new $P112, "Undef"
  vivify_558:
    new $P113, "String"
    assign $P113, "&"
    set $P114, $P1387
    unless_null $P114, vivify_559
    new $P114, "Undef"
  vivify_559:
    concat $P115, $P113, $P114
    $P116 = $P112."name"($P115)
.annotate 'line', 920
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1393"  :anon :subid("130_1329260312.462") :outer("128_1329260312.462")
    .param pmc param_1395
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 928
    .lex "$_", param_1395
    find_lex $P114, "$_"
    unless_null $P114, vivify_563
    new $P114, "Undef"
  vivify_563:
    $P115 = $P114."ast"()
    defined $I102, $P115
    if $I102, if_1396
    new $P113, 'Integer'
    set $P113, $I102
    goto if_1396_end
  if_1396:
    find_lex $P116, "$past"
    unless_null $P116, vivify_564
    new $P116, "Undef"
  vivify_564:
    find_lex $P117, "$_"
    unless_null $P117, vivify_565
    new $P117, "Undef"
  vivify_565:
    $P118 = $P117."ast"()
    $P119 = $P116."push"($P118)
    set $P113, $P119
  if_1396_end:
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>" :anon :subid("131_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1399
    .param pmc param_1400
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 933
    .lex "self", param_1399
    .lex "$/", param_1400
    set $P106, param_1400
    set $P1401, param_1400
    unless_null $P1401, vivify_570
    $P1401 = root_new ['parrot';'Hash']
  vivify_570:
    set $P107, $P1401["circumfix"]
    unless_null $P107, vivify_571
    new $P107, "Undef"
  vivify_571:
    $P108 = $P107."ast"()
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish" :anon :subid("132_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1403
    .param pmc param_1404
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 935
    .lex "self", param_1403
    .lex "$/", param_1404
    set $P106, param_1404
    set $P1405, param_1404
    unless_null $P1405, vivify_572
    $P1405 = root_new ['parrot';'Hash']
  vivify_572:
    set $P107, $P1405["term"]
    unless_null $P107, vivify_573
    new $P107, "Undef"
  vivify_573:
    $P108 = $P107."ast"()
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm" :anon :subid("133_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1407
    .param pmc param_1408
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 936
    .lex "self", param_1407
    .lex "$/", param_1408
    set $P106, param_1408
    new $P107, "Undef"
    $P108 = $P106."!make"($P107)
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt" :anon :subid("134_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1410
    .param pmc param_1411
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 937
    .lex "self", param_1410
    .lex "$/", param_1411
    set $P106, param_1411
    set $P1412, param_1411
    unless_null $P1412, vivify_574
    $P1412 = root_new ['parrot';'Hash']
  vivify_574:
    set $P107, $P1412["term"]
    unless_null $P107, vivify_575
    new $P107, "Undef"
  vivify_575:
    $P108 = $P107."ast"()
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer" :anon :subid("135_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1414
    .param pmc param_1415
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 939
    .lex "self", param_1414
    .lex "$/", param_1415
    set $P106, param_1415
    set $P1416, param_1415
    unless_null $P1416, vivify_576
    $P1416 = root_new ['parrot';'Hash']
  vivify_576:
    set $P107, $P1416["VALUE"]
    unless_null $P107, vivify_577
    new $P107, "Undef"
  vivify_577:
    $P108 = $P107."ast"()
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number" :anon :subid("136_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1418
    .param pmc param_1419
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 941
    .lex "self", param_1418
    .lex "$/", param_1419
    set $P106, param_1419
    set $P107, param_1419
    unless_null $P107, vivify_578
    new $P107, "Undef"
  vivify_578:
    set $N100, $P107
    $P108 = $P106."!make"($N100)
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint" :anon :subid("137_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1421
    .param pmc param_1422
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 943
    .lex "self", param_1421
    .lex "$/", param_1422
    set $P106, param_1422
    set $P107, param_1422
    unless_null $P107, vivify_579
    new $P107, "Undef"
  vivify_579:
    $P108 = "string_to_int"($P107, 10)
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint" :anon :subid("138_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1424
    .param pmc param_1425
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 944
    .lex "self", param_1424
    .lex "$/", param_1425
    set $P106, param_1425
    set $P107, param_1425
    unless_null $P107, vivify_580
    new $P107, "Undef"
  vivify_580:
    $P108 = "string_to_int"($P107, 16)
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint" :anon :subid("139_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1427
    .param pmc param_1428
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 945
    .lex "self", param_1427
    .lex "$/", param_1428
    set $P106, param_1428
    set $P107, param_1428
    unless_null $P107, vivify_581
    new $P107, "Undef"
  vivify_581:
    $P108 = "string_to_int"($P107, 8)
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint" :anon :subid("140_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1430
    .param pmc param_1431
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 946
    .lex "self", param_1430
    .lex "$/", param_1431
    set $P106, param_1431
    set $P107, param_1431
    unless_null $P107, vivify_582
    new $P107, "Undef"
  vivify_582:
    $P108 = "string_to_int"($P107, 2)
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR" :anon :subid("141_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1433
    .param pmc param_1434
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 948
    .const 'Sub' $P1440 = "142_1329260312.462" 
    capture_lex $P1440
    .lex "self", param_1433
    .lex "$/", param_1434
.annotate 'line', 949
    new $P106, "Undef"
    set $P1435, $P106
    .lex "$past", $P1435
    set $P1436, param_1434
    unless_null $P1436, vivify_583
    $P1436 = root_new ['parrot';'Hash']
  vivify_583:
    set $P107, $P1436["quote_delimited"]
    unless_null $P107, vivify_584
    new $P107, "Undef"
  vivify_584:
    $P108 = $P107."ast"()
    set $P1435, $P108
.annotate 'line', 950
    set $P107, param_1434
    unless_null $P107, vivify_585
    new $P107, "Undef"
  vivify_585:
    $P108 = $P107."CURSOR"()
    $P109 = $P108."quotemod_check"("w")
    unless $P109, if_1437_end
.annotate 'line', 951
    get_hll_global $P110, "GLOBAL"
    nqp_get_package_through_who $P111, $P110, "PAST"
    get_who $P112, $P111
    set $P113, $P112["Node"]
    set $P114, $P1435
    unless_null $P114, vivify_586
    new $P114, "Undef"
  vivify_586:
    $P115 = $P113."ACCEPTS"($P114)
    if $P115, if_1438
.annotate 'line', 954
    .const 'Sub' $P1440 = "142_1329260312.462" 
    capture_lex $P1440
    $P1440()
    goto if_1438_end
  if_1438:
.annotate 'line', 952
    set $P116, param_1434
    unless_null $P116, vivify_597
    new $P116, "Undef"
  vivify_597:
    $P117 = $P116."CURSOR"()
    $P117."panic"("Can't form :w list from non-constant strings (yet)")
  if_1438_end:
  if_1437_end:
.annotate 'line', 965
    get_hll_global $P107, "GLOBAL"
    nqp_get_package_through_who $P108, $P107, "PAST"
    get_who $P109, $P108
    set $P110, $P109["Node"]
    set $P111, $P1435
    unless_null $P111, vivify_598
    new $P111, "Undef"
  vivify_598:
    $P112 = $P110."ACCEPTS"($P111)
    isfalse $I100, $P112
    unless $I100, if_1451_end
.annotate 'line', 966
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Val"]
    set $P117, $P1435
    unless_null $P117, vivify_599
    new $P117, "Undef"
  vivify_599:
    set $S100, $P117
    $P118 = $P116."new"($S100 :named("value"))
    set $P1435, $P118
  if_1451_end:
.annotate 'line', 968
    set $P107, param_1434
    set $P108, $P1435
    unless_null $P108, vivify_600
    new $P108, "Undef"
  vivify_600:
    $P109 = $P107."!make"($P108)
.annotate 'line', 948
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1439"  :anon :subid("142_1329260312.462") :outer("141_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 954
    .const 'Sub' $P1447 = "143_1329260312.462" 
    capture_lex $P1447
.annotate 'line', 955
    $P1442 = root_new ['parrot';'ResizablePMCArray']
    set $P1441, $P1442
    .lex "@words", $P1441
    get_hll_global $P116, "GLOBAL"
    nqp_get_package_through_who $P117, $P116, "HLL"
    nqp_get_package_through_who $P118, $P117, "Grammar"
    get_who $P119, $P118
    set $P120, $P119["split_words"]
    find_lex $P121, "$/"
    unless_null $P121, vivify_587
    new $P121, "Undef"
  vivify_587:
    find_lex $P122, "$past"
    unless_null $P122, vivify_588
    new $P122, "Undef"
  vivify_588:
    $P123 = $P120($P121, $P122)
    set $P1441, $P123
.annotate 'line', 956
    set $P1444, $P1441
    unless_null $P1444, vivify_589
    $P1444 = root_new ['parrot';'ResizablePMCArray']
  vivify_589:
    set $N100, $P1444
    set $N101, 1
    isne $I100, $N100, $N101
    if $I100, if_1443
.annotate 'line', 961
    new $P118, "Float"
    assign $P118, 0
    set $I101, $P118
    set $P1450, $P1441
    unless_null $P1450, vivify_590
    $P1450 = root_new ['parrot';'ResizablePMCArray']
  vivify_590:
    set $P119, $P1450[$I101]
    unless_null $P119, vivify_591
    new $P119, "Undef"
  vivify_591:
    set $S100, $P119
    new $P120, 'String'
    set $P120, $S100
    store_lex "$past", $P120
.annotate 'line', 960
    set $P116, $P120
.annotate 'line', 956
    goto if_1443_end
  if_1443:
.annotate 'line', 957
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Op"]
    find_lex $P121, "$/"
    unless_null $P121, vivify_592
    new $P121, "Undef"
  vivify_592:
    $P122 = $P120."new"("list" :named("pasttype"), $P121 :named("node"))
    store_lex "$past", $P122
.annotate 'line', 958
    set $P1445, $P1441
    unless_null $P1445, vivify_593
    $P1445 = root_new ['parrot';'ResizablePMCArray']
  vivify_593:
    defined $I101, $P1445
    unless $I101, for_undef_594
    iter $P117, $P1445
    new $P119, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P119, loop1449_handler
    push_eh $P119
  loop1449_test:
    unless $P117, loop1449_done
    shift $P118, $P117
  loop1449_redo:
    .const 'Sub' $P1447 = "143_1329260312.462" 
    capture_lex $P1447
    $P1447($P118)
  loop1449_next:
    goto loop1449_test
  loop1449_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P120, exception, 'type'
    eq $P120, .CONTROL_LOOP_NEXT, loop1449_next
    eq $P120, .CONTROL_LOOP_REDO, loop1449_redo
  loop1449_done:
    pop_eh 
  for_undef_594:
.annotate 'line', 956
    set $P116, $P117
  if_1443_end:
.annotate 'line', 954
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1446"  :anon :subid("143_1329260312.462") :outer("142_1329260312.462")
    .param pmc param_1448
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 958
    .lex "$_", param_1448
    find_lex $P119, "$past"
    unless_null $P119, vivify_595
    new $P119, "Undef"
  vivify_595:
    find_lex $P120, "$_"
    unless_null $P120, vivify_596
    new $P120, "Undef"
  vivify_596:
    $P121 = $P119."push"($P120)
    .return ($P121)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited" :anon :subid("144_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1453
    .param pmc param_1454
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 971
    .const 'Sub' $P1462 = "145_1329260312.462" 
    capture_lex $P1462
    .lex "self", param_1453
    .lex "$/", param_1454
.annotate 'line', 972
    $P1456 = root_new ['parrot';'ResizablePMCArray']
    set $P1455, $P1456
    .lex "@parts", $P1455
.annotate 'line', 973
    new $P106, "Undef"
    set $P1457, $P106
    .lex "$lastlit", $P1457
.annotate 'line', 989
    new $P107, "Undef"
    set $P1458, $P107
    .lex "$past", $P1458
.annotate 'line', 971
    set $P1459, $P1455
    unless_null $P1459, vivify_601
    $P1459 = root_new ['parrot';'ResizablePMCArray']
  vivify_601:
.annotate 'line', 973
    new $P108, "String"
    assign $P108, ""
    set $P1457, $P108
.annotate 'line', 974
    set $P1460, param_1454
    unless_null $P1460, vivify_602
    $P1460 = root_new ['parrot';'Hash']
  vivify_602:
    set $P109, $P1460["quote_atom"]
    unless_null $P109, vivify_603
    new $P109, "Undef"
  vivify_603:
    defined $I100, $P109
    unless $I100, for_undef_604
    iter $P108, $P109
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1470_handler
    push_eh $P113
  loop1470_test:
    unless $P108, loop1470_done
    shift $P110, $P108
  loop1470_redo:
    .const 'Sub' $P1462 = "145_1329260312.462" 
    capture_lex $P1462
    $P1462($P110)
  loop1470_next:
    goto loop1470_test
  loop1470_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1470_next
    eq $P114, .CONTROL_LOOP_REDO, loop1470_redo
  loop1470_done:
    pop_eh 
  for_undef_604:
.annotate 'line', 988
    set $P108, $P1457
    unless_null $P108, vivify_617
    new $P108, "Undef"
  vivify_617:
    set $S100, $P108
    isgt $I100, $S100, ""
    unless $I100, if_1471_end
    set $P1472, $P1455
    unless_null $P1472, vivify_618
    $P1472 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    set $P109, $P1457
    unless_null $P109, vivify_619
    new $P109, "Undef"
  vivify_619:
    $P1472."push"($P109)
  if_1471_end:
.annotate 'line', 989
    set $P1474, $P1455
    unless_null $P1474, vivify_620
    $P1474 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    if $P1474, if_1473
    new $P110, "String"
    assign $P110, ""
    set $P108, $P110
    goto if_1473_end
  if_1473:
    set $P1475, $P1455
    unless_null $P1475, vivify_621
    $P1475 = root_new ['parrot';'ResizablePMCArray']
  vivify_621:
    $P109 = $P1475."shift"()
    set $P108, $P109
  if_1473_end:
    set $P1458, $P108
.annotate 'line', 990
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1478_handler
    push_eh $P108
  loop1478_test:
    set $P1476, $P1455
    unless_null $P1476, vivify_622
    $P1476 = root_new ['parrot';'ResizablePMCArray']
  vivify_622:
    unless $P1476, loop1478_done
  loop1478_redo:
.annotate 'line', 991
    get_hll_global $P108, "GLOBAL"
    nqp_get_package_through_who $P109, $P108, "PAST"
    get_who $P110, $P109
    set $P111, $P110["Op"]
    set $P112, $P1458
    unless_null $P112, vivify_623
    new $P112, "Undef"
  vivify_623:
    set $P1477, $P1455
    unless_null $P1477, vivify_624
    $P1477 = root_new ['parrot';'ResizablePMCArray']
  vivify_624:
    $P113 = $P1477."shift"()
    $P114 = $P111."new"($P112, $P113, "concat" :named("pirop"))
    set $P1458, $P114
  loop1478_next:
.annotate 'line', 990
    goto loop1478_test
  loop1478_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1478_next
    eq $P109, .CONTROL_LOOP_REDO, loop1478_redo
  loop1478_done:
    pop_eh 
.annotate 'line', 993
    set $P108, param_1454
    set $P109, $P1458
    unless_null $P109, vivify_625
    new $P109, "Undef"
  vivify_625:
    $P110 = $P108."!make"($P109)
.annotate 'line', 971
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1461"  :anon :subid("145_1329260312.462") :outer("144_1329260312.462")
    .param pmc param_1464
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 975
    new $P111, "Undef"
    set $P1463, $P111
    .lex "$ast", $P1463
    .lex "$_", param_1464
    find_lex $P112, "$_"
    unless_null $P112, vivify_605
    new $P112, "Undef"
  vivify_605:
    $P113 = $P112."ast"()
    set $P1463, $P113
.annotate 'line', 976
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Node"]
    set $P117, $P1463
    unless_null $P117, vivify_606
    new $P117, "Undef"
  vivify_606:
    $P118 = $P116."ACCEPTS"($P117)
    isfalse $I101, $P118
    if $I101, if_1465
.annotate 'line', 979
    set $P120, $P1463
    unless_null $P120, vivify_607
    new $P120, "Undef"
  vivify_607:
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "PAST"
    get_who $P124, $P123
    set $P125, $P124["Val"]
    $P126 = $P120."isa"($P125)
    if $P126, if_1466
.annotate 'line', 983
    find_lex $P127, "$lastlit"
    unless_null $P127, vivify_608
    new $P127, "Undef"
  vivify_608:
    set $S100, $P127
    isgt $I102, $S100, ""
    unless $I102, if_1467_end
    find_lex $P1468, "@parts"
    unless_null $P1468, vivify_609
    $P1468 = root_new ['parrot';'ResizablePMCArray']
  vivify_609:
    find_lex $P128, "$lastlit"
    unless_null $P128, vivify_610
    new $P128, "Undef"
  vivify_610:
    $P1468."push"($P128)
  if_1467_end:
.annotate 'line', 984
    find_lex $P1469, "@parts"
    unless_null $P1469, vivify_611
    $P1469 = root_new ['parrot';'ResizablePMCArray']
  vivify_611:
    set $P127, $P1463
    unless_null $P127, vivify_612
    new $P127, "Undef"
  vivify_612:
    $P1469."push"($P127)
.annotate 'line', 985
    new $P127, "String"
    assign $P127, ""
    store_lex "$lastlit", $P127
.annotate 'line', 982
    set $P119, $P127
.annotate 'line', 979
    goto if_1466_end
  if_1466:
.annotate 'line', 980
    find_lex $P127, "$lastlit"
    unless_null $P127, vivify_613
    new $P127, "Undef"
  vivify_613:
    set $P128, $P1463
    unless_null $P128, vivify_614
    new $P128, "Undef"
  vivify_614:
    $S100 = $P128."value"()
    concat $P129, $P127, $S100
    store_lex "$lastlit", $P129
.annotate 'line', 979
    set $P119, $P129
  if_1466_end:
    set $P112, $P119
.annotate 'line', 976
    goto if_1465_end
  if_1465:
.annotate 'line', 977
    find_lex $P119, "$lastlit"
    unless_null $P119, vivify_615
    new $P119, "Undef"
  vivify_615:
    set $P120, $P1463
    unless_null $P120, vivify_616
    new $P120, "Undef"
  vivify_616:
    concat $P121, $P119, $P120
    store_lex "$lastlit", $P121
.annotate 'line', 976
    set $P112, $P121
  if_1465_end:
.annotate 'line', 974
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom" :anon :subid("146_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1480
    .param pmc param_1481
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 996
    .lex "self", param_1480
    .lex "$/", param_1481
.annotate 'line', 997
    set $P106, param_1481
    set $P1483, param_1481
    unless_null $P1483, vivify_626
    $P1483 = root_new ['parrot';'Hash']
  vivify_626:
    set $P108, $P1483["quote_escape"]
    unless_null $P108, vivify_627
    new $P108, "Undef"
  vivify_627:
    if $P108, if_1482
    set $P111, param_1481
    unless_null $P111, vivify_628
    new $P111, "Undef"
  vivify_628:
    set $S100, $P111
    new $P107, 'String'
    set $P107, $S100
    goto if_1482_end
  if_1482:
    set $P1484, param_1481
    unless_null $P1484, vivify_629
    $P1484 = root_new ['parrot';'Hash']
  vivify_629:
    set $P109, $P1484["quote_escape"]
    unless_null $P109, vivify_630
    new $P109, "Undef"
  vivify_630:
    $P110 = $P109."ast"()
    set $P107, $P110
  if_1482_end:
    $P112 = $P106."!make"($P107)
.annotate 'line', 996
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>" :anon :subid("147_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1486
    .param pmc param_1487
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1000
    .lex "self", param_1486
    .lex "$/", param_1487
    set $P106, param_1487
    $P107 = $P106."!make"("\\")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>" :anon :subid("148_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1489
    .param pmc param_1490
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1001
    .lex "self", param_1489
    .lex "$/", param_1490
    set $P106, param_1490
    set $P1491, param_1490
    unless_null $P1491, vivify_631
    $P1491 = root_new ['parrot';'Hash']
  vivify_631:
    set $P107, $P1491["stopper"]
    unless_null $P107, vivify_632
    new $P107, "Undef"
  vivify_632:
    set $S100, $P107
    $P108 = $P106."!make"($S100)
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>" :anon :subid("149_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1493
    .param pmc param_1494
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1003
    .lex "self", param_1493
    .lex "$/", param_1494
    set $P106, param_1494
    $P107 = $P106."!make"("\b")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>" :anon :subid("150_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1496
    .param pmc param_1497
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1004
    .lex "self", param_1496
    .lex "$/", param_1497
    set $P106, param_1497
    $P107 = $P106."!make"("\n")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>" :anon :subid("151_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1499
    .param pmc param_1500
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1005
    .lex "self", param_1499
    .lex "$/", param_1500
    set $P106, param_1500
    $P107 = $P106."!make"("\r")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>" :anon :subid("152_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1502
    .param pmc param_1503
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1006
    .lex "self", param_1502
    .lex "$/", param_1503
    set $P106, param_1503
    $P107 = $P106."!make"("\t")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>" :anon :subid("153_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1505
    .param pmc param_1506
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1007
    .lex "self", param_1505
    .lex "$/", param_1506
    set $P106, param_1506
    $P107 = $P106."!make"("\f")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>" :anon :subid("154_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1508
    .param pmc param_1509
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1008
    .lex "self", param_1508
    .lex "$/", param_1509
    set $P106, param_1509
    $P107 = $P106."!make"("\e")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>" :anon :subid("155_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1511
    .param pmc param_1512
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1010
    .lex "self", param_1511
    .lex "$/", param_1512
.annotate 'line', 1011
    set $P106, param_1512
    set $P107, param_1511
    nqp_decontainerize $P108, $P107
    set $P1514, param_1512
    unless_null $P1514, vivify_633
    $P1514 = root_new ['parrot';'Hash']
  vivify_633:
    set $P110, $P1514["hexint"]
    unless_null $P110, vivify_634
    new $P110, "Undef"
  vivify_634:
    if $P110, if_1513
    set $P1516, param_1512
    unless_null $P1516, vivify_635
    $P1516 = root_new ['parrot';'Hash']
  vivify_635:
    set $P1517, $P1516["hexints"]
    unless_null $P1517, vivify_636
    $P1517 = root_new ['parrot';'Hash']
  vivify_636:
    set $P112, $P1517["hexint"]
    unless_null $P112, vivify_637
    new $P112, "Undef"
  vivify_637:
    set $P109, $P112
    goto if_1513_end
  if_1513:
    set $P1515, param_1512
    unless_null $P1515, vivify_638
    $P1515 = root_new ['parrot';'Hash']
  vivify_638:
    set $P111, $P1515["hexint"]
    unless_null $P111, vivify_639
    new $P111, "Undef"
  vivify_639:
    set $P109, $P111
  if_1513_end:
    $P113 = $P108."ints_to_string"($P109)
    $P114 = $P106."!make"($P113)
.annotate 'line', 1010
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>" :anon :subid("156_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1519
    .param pmc param_1520
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1014
    .lex "self", param_1519
    .lex "$/", param_1520
.annotate 'line', 1015
    set $P106, param_1520
    set $P107, param_1519
    nqp_decontainerize $P108, $P107
    set $P1522, param_1520
    unless_null $P1522, vivify_640
    $P1522 = root_new ['parrot';'Hash']
  vivify_640:
    set $P110, $P1522["octint"]
    unless_null $P110, vivify_641
    new $P110, "Undef"
  vivify_641:
    if $P110, if_1521
    set $P1524, param_1520
    unless_null $P1524, vivify_642
    $P1524 = root_new ['parrot';'Hash']
  vivify_642:
    set $P1525, $P1524["octints"]
    unless_null $P1525, vivify_643
    $P1525 = root_new ['parrot';'Hash']
  vivify_643:
    set $P112, $P1525["octint"]
    unless_null $P112, vivify_644
    new $P112, "Undef"
  vivify_644:
    set $P109, $P112
    goto if_1521_end
  if_1521:
    set $P1523, param_1520
    unless_null $P1523, vivify_645
    $P1523 = root_new ['parrot';'Hash']
  vivify_645:
    set $P111, $P1523["octint"]
    unless_null $P111, vivify_646
    new $P111, "Undef"
  vivify_646:
    set $P109, $P111
  if_1521_end:
    $P113 = $P108."ints_to_string"($P109)
    $P114 = $P106."!make"($P113)
.annotate 'line', 1014
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>" :anon :subid("157_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1527
    .param pmc param_1528
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1018
    .lex "self", param_1527
    .lex "$/", param_1528
.annotate 'line', 1019
    set $P106, param_1528
    set $P1529, param_1528
    unless_null $P1529, vivify_647
    $P1529 = root_new ['parrot';'Hash']
  vivify_647:
    set $P107, $P1529["charspec"]
    unless_null $P107, vivify_648
    new $P107, "Undef"
  vivify_648:
    $P108 = $P107."ast"()
    $P109 = $P106."!make"($P108)
.annotate 'line', 1018
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>" :anon :subid("158_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1531
    .param pmc param_1532
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1022
    .lex "self", param_1531
    .lex "$/", param_1532
.annotate 'line', 1023
    set $P106, param_1532
    $P107 = $P106."!make"(unicode:"\x{0}")
.annotate 'line', 1022
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>" :anon :subid("159_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1534
    .param pmc param_1535
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1026
    .lex "self", param_1534
    .lex "$/", param_1535
.annotate 'line', 1027
    set $P106, param_1535
    set $P1537, param_1535
    unless_null $P1537, vivify_649
    $P1537 = root_new ['parrot';'Hash']
  vivify_649:
    set $P108, $P1537["textq"]
    unless_null $P108, vivify_650
    new $P108, "Undef"
  vivify_650:
    if $P108, if_1536
    set $P1539, param_1535
    unless_null $P1539, vivify_651
    $P1539 = root_new ['parrot';'Hash']
  vivify_651:
    set $P112, $P1539["textqq"]
    unless_null $P112, vivify_652
    new $P112, "Undef"
  vivify_652:
    $P113 = $P112."Str"()
    set $P107, $P113
    goto if_1536_end
  if_1536:
    new $P109, "String"
    assign $P109, "\\"
    set $P1538, param_1535
    unless_null $P1538, vivify_653
    $P1538 = root_new ['parrot';'Hash']
  vivify_653:
    set $P110, $P1538["textq"]
    unless_null $P110, vivify_654
    new $P110, "Undef"
  vivify_654:
    $S100 = $P110."Str"()
    concat $P111, $P109, $S100
    set $P107, $P111
  if_1536_end:
    $P114 = $P106."!make"($P107)
.annotate 'line', 1026
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname" :anon :subid("160_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1541
    .param pmc param_1542
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1030
    .lex "self", param_1541
    .lex "$/", param_1542
.annotate 'line', 1031
    new $P106, "Undef"
    set $P1543, $P106
    .lex "$codepoint", $P1543
.annotate 'line', 1032
    set $P1545, param_1542
    unless_null $P1545, vivify_655
    $P1545 = root_new ['parrot';'Hash']
  vivify_655:
    set $P108, $P1545["integer"]
    unless_null $P108, vivify_656
    new $P108, "Undef"
  vivify_656:
    if $P108, if_1544
.annotate 'line', 1033
    set $P111, param_1542
    unless_null $P111, vivify_657
    new $P111, "Undef"
  vivify_657:
    set $S100, $P111
    find_codepoint $I100, $S100
    new $P107, 'Integer'
    set $P107, $I100
.annotate 'line', 1032
    goto if_1544_end
  if_1544:
    set $P1546, param_1542
    unless_null $P1546, vivify_658
    $P1546 = root_new ['parrot';'Hash']
  vivify_658:
    set $P109, $P1546["integer"]
    unless_null $P109, vivify_659
    new $P109, "Undef"
  vivify_659:
    $P110 = $P109."ast"()
    set $P107, $P110
  if_1544_end:
    set $P1543, $P107
.annotate 'line', 1034
    set $P107, $P1543
    unless_null $P107, vivify_660
    new $P107, "Undef"
  vivify_660:
    set $N100, $P107
    set $N101, 0
    islt $I100, $N100, $N101
    unless $I100, if_1547_end
    set $P108, param_1542
    unless_null $P108, vivify_661
    new $P108, "Undef"
  vivify_661:
    $P109 = $P108."CURSOR"()
    new $P110, 'String'
    set $P110, "Unrecognized character name "
    set $P111, param_1542
    unless_null $P111, vivify_662
    new $P111, "Undef"
  vivify_662:
    concat $P112, $P110, $P111
    $P109."panic"($P112)
  if_1547_end:
.annotate 'line', 1035
    set $P107, param_1542
    set $P108, $P1543
    unless_null $P108, vivify_663
    new $P108, "Undef"
  vivify_663:
    set $I100, $P108
    chr $S100, $I100
    $P109 = $P107."!make"($S100)
.annotate 'line', 1030
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames" :anon :subid("161_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1549
    .param pmc param_1550
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1038
    .const 'Sub' $P1554 = "162_1329260312.462" 
    capture_lex $P1554
    .lex "self", param_1549
    .lex "$/", param_1550
.annotate 'line', 1039
    new $P106, "Undef"
    set $P1551, $P106
    .lex "$str", $P1551
    new $P107, "String"
    assign $P107, ""
    set $P1551, $P107
.annotate 'line', 1040
    set $P1552, param_1550
    unless_null $P1552, vivify_664
    $P1552 = root_new ['parrot';'Hash']
  vivify_664:
    set $P108, $P1552["charname"]
    unless_null $P108, vivify_665
    new $P108, "Undef"
  vivify_665:
    defined $I100, $P108
    unless $I100, for_undef_666
    iter $P107, $P108
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1556_handler
    push_eh $P110
  loop1556_test:
    unless $P107, loop1556_done
    shift $P109, $P107
  loop1556_redo:
    .const 'Sub' $P1554 = "162_1329260312.462" 
    capture_lex $P1554
    $P1554($P109)
  loop1556_next:
    goto loop1556_test
  loop1556_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1556_next
    eq $P111, .CONTROL_LOOP_REDO, loop1556_redo
  loop1556_done:
    pop_eh 
  for_undef_666:
.annotate 'line', 1041
    set $P107, param_1550
    set $P108, $P1551
    unless_null $P108, vivify_669
    new $P108, "Undef"
  vivify_669:
    $P109 = $P107."!make"($P108)
.annotate 'line', 1038
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1553"  :anon :subid("162_1329260312.462") :outer("161_1329260312.462")
    .param pmc param_1555
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1040
    .lex "$_", param_1555
    find_lex $P110, "$str"
    unless_null $P110, vivify_667
    new $P110, "Undef"
  vivify_667:
    find_lex $P111, "$_"
    unless_null $P111, vivify_668
    new $P111, "Undef"
  vivify_668:
    $S100 = $P111."ast"()
    concat $P112, $P110, $S100
    store_lex "$str", $P112
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec" :anon :subid("163_1329260312.462") :outer("119_1329260312.462")
    .param pmc param_1558
    .param pmc param_1559
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1044
    .lex "self", param_1558
    .lex "$/", param_1559
.annotate 'line', 1045
    set $P106, param_1559
    set $P1561, param_1559
    unless_null $P1561, vivify_670
    $P1561 = root_new ['parrot';'Hash']
  vivify_670:
    set $P108, $P1561["charnames"]
    unless_null $P108, vivify_671
    new $P108, "Undef"
  vivify_671:
    if $P108, if_1560
    set $P111, param_1559
    unless_null $P111, vivify_672
    new $P111, "Undef"
  vivify_672:
    $I100 = "string_to_int"($P111, 10)
    chr $S100, $I100
    new $P107, 'String'
    set $P107, $S100
    goto if_1560_end
  if_1560:
    set $P1562, param_1559
    unless_null $P1562, vivify_673
    $P1562 = root_new ['parrot';'Hash']
  vivify_673:
    set $P109, $P1562["charnames"]
    unless_null $P109, vivify_674
    new $P109, "Undef"
  vivify_674:
    $P110 = $P109."ast"()
    set $P107, $P110
  if_1560_end:
    $P112 = $P106."!make"($P107)
.annotate 'line', 1044
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1564"  :subid("164_1329260312.462") :outer("10_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1058
    .const 'Sub' $P2234 = "245_1329260312.462" 
    capture_lex $P2234
    .const 'Sub' $P2210 = "243_1329260312.462" 
    capture_lex $P2210
    .const 'Sub' $P2176 = "240_1329260312.462" 
    capture_lex $P2176
    .const 'Sub' $P2163 = "238_1329260312.462" 
    capture_lex $P2163
    .const 'Sub' $P2145 = "235_1329260312.462" 
    capture_lex $P2145
    .const 'Sub' $P2133 = "232_1329260312.462" 
    capture_lex $P2133
    .const 'Sub' $P2122 = "231_1329260312.462" 
    capture_lex $P2122
    .const 'Sub' $P2118 = "230_1329260312.462" 
    capture_lex $P2118
    .const 'Sub' $P2106 = "228_1329260312.462" 
    capture_lex $P2106
    .const 'Sub' $P2101 = "227_1329260312.462" 
    capture_lex $P2101
    .const 'Sub' $P2096 = "226_1329260312.462" 
    capture_lex $P2096
    .const 'Sub' $P2094 = "225_1329260312.462" 
    capture_lex $P2094
    .const 'Sub' $P2089 = "224_1329260312.462" 
    capture_lex $P2089
    .const 'Sub' $P2083 = "223_1329260312.462" 
    capture_lex $P2083
    .const 'Sub' $P2053 = "220_1329260312.462" 
    capture_lex $P2053
    .const 'Sub' $P2027 = "217_1329260312.462" 
    capture_lex $P2027
    .const 'Sub' $P1973 = "213_1329260312.462" 
    capture_lex $P1973
    .const 'Sub' $P1945 = "210_1329260312.462" 
    capture_lex $P1945
    .const 'Sub' $P1850 = "203_1329260312.462" 
    capture_lex $P1850
    .const 'Sub' $P1828 = "202_1329260312.462" 
    capture_lex $P1828
    .const 'Sub' $P1820 = "201_1329260312.462" 
    capture_lex $P1820
    .const 'Sub' $P1816 = "200_1329260312.462" 
    capture_lex $P1816
    .const 'Sub' $P1814 = "199_1329260312.462" 
    capture_lex $P1814
    .const 'Sub' $P1812 = "198_1329260312.462" 
    capture_lex $P1812
    .const 'Sub' $P1806 = "197_1329260312.462" 
    capture_lex $P1806
    .const 'Sub' $P1800 = "196_1329260312.462" 
    capture_lex $P1800
    .const 'Sub' $P1792 = "195_1329260312.462" 
    capture_lex $P1792
    .const 'Sub' $P1788 = "194_1329260312.462" 
    capture_lex $P1788
    .const 'Sub' $P1785 = "193_1329260312.462" 
    capture_lex $P1785
    .const 'Sub' $P1762 = "191_1329260312.462" 
    capture_lex $P1762
    .const 'Sub' $P1693 = "184_1329260312.462" 
    capture_lex $P1693
    .const 'Sub' $P1689 = "183_1329260312.462" 
    capture_lex $P1689
    .const 'Sub' $P1659 = "178_1329260312.462" 
    capture_lex $P1659
    .const 'Sub' $P1644 = "176_1329260312.462" 
    capture_lex $P1644
    .const 'Sub' $P1641 = "175_1329260312.462" 
    capture_lex $P1641
    .const 'Sub' $P1638 = "174_1329260312.462" 
    capture_lex $P1638
    .const 'Sub' $P1634 = "173_1329260312.462" 
    capture_lex $P1634
    .const 'Sub' $P1627 = "172_1329260312.462" 
    capture_lex $P1627
    .const 'Sub' $P1585 = "169_1329260312.462" 
    capture_lex $P1585
    .const 'Sub' $P1578 = "167_1329260312.462" 
    capture_lex $P1578
    .const 'Sub' $P1575 = "166_1329260312.462" 
    capture_lex $P1575
    .const 'Sub' $P1567 = "165_1329260312.462" 
    capture_lex $P1567
.annotate 'line', 1091
    .const 'Sub' $P1567 = "165_1329260312.462" 
    newclosure $P1571, $P1567
    set $P1566, $P1571
    .lex "value_type", $P1566
.annotate 'line', 1058
    .lex "$?PACKAGE", $P1572
    .lex "$?CLASS", $P1573
    set $P102, $P1572
    get_who $P103, $P102
    set $P1574, $P103["%parrot_config"]
    unless_null $P1574, vivify_677
    $P1574 = root_new ['parrot';'Hash']
  vivify_677:
    set $P102, $P1566
.annotate 'line', 1657
    .const 'Sub' $P2234 = "245_1329260312.462" 
    newclosure $P2239, $P2234
.annotate 'line', 1058
    .return ($P2239)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("165_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1568
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1091
    .lex "$value", param_1568
.annotate 'line', 1092
    set $P102, param_1568
    unless_null $P102, vivify_675
    new $P102, "Undef"
  vivify_675:
    isa $I100, $P102, "NameSpace"
    if $I100, if_1569
.annotate 'line', 1094
    set $P105, param_1568
    unless_null $P105, vivify_676
    new $P105, "Undef"
  vivify_676:
    isa $I101, $P105, "Sub"
    if $I101, if_1570
    new $P107, "String"
    assign $P107, "var"
    set $P104, $P107
    goto if_1570_end
  if_1570:
    new $P106, "String"
    assign $P106, "sub"
    set $P104, $P106
  if_1570_end:
    set $P101, $P104
.annotate 'line', 1092
    goto if_1569_end
  if_1569:
    new $P103, "String"
    assign $P103, "namespace"
    set $P101, $P103
  if_1569_end:
.annotate 'line', 1091
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new" :anon :subid("166_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1576
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1071
    .lex "self", param_1576
.annotate 'line', 1072
    new $P102, "Undef"
    set $P1577, $P102
    .lex "$obj", $P1577
    set $P103, param_1576
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P1577, $P105
.annotate 'line', 1073
    set $P103, $P1577
    unless_null $P103, vivify_678
    new $P103, "Undef"
  vivify_678:
    $P103."BUILD"()
.annotate 'line', 1071
    set $P103, $P1577
    unless_null $P103, vivify_679
    new $P103, "Undef"
  vivify_679:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("167_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1579
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1077
    .const 'Sub' $P1582 = "168_1329260312.462" 
    capture_lex $P1582
    .lex "self", param_1579
.annotate 'line', 1079
    split $P102, " ", "parse past post pir evalpmc"
    set $P103, param_1579
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "@!stages", 0, $P102
.annotate 'line', 1082
    split $P102, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config stagestats ll-exception nqpevent=s rxtrace profile profile-compile"
    set $P103, param_1579
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "@!cmdoptions", 3, $P102
.annotate 'line', 1083
    new $P102, "String"
    assign $P102, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    set $P103, param_1579
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "$!usage", 4, $P102
.annotate 'line', 1084
    set $P103, param_1579
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1580, $P104, $P105, "@!cmdoptions", 3
    unless_null $P1580, vivify_680
    $P1580 = root_new ['parrot';'ResizablePMCArray']
  vivify_680:
    defined $I100, $P1580
    unless $I100, for_undef_681
    iter $P102, $P1580
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1584_handler
    push_eh $P107
  loop1584_test:
    unless $P102, loop1584_done
    shift $P106, $P102
  loop1584_redo:
    .const 'Sub' $P1582 = "168_1329260312.462" 
    capture_lex $P1582
    $P1582($P106)
  loop1584_next:
    goto loop1584_test
  loop1584_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1584_next
    eq $P108, .CONTROL_LOOP_REDO, loop1584_redo
  loop1584_done:
    pop_eh 
  for_undef_681:
.annotate 'line', 1087
    getinterp $P102
    set $P103, $P102[.IGLOBALS_CONFIG_HASH]
    unless_null $P103, vivify_684
    new $P103, "Undef"
  vivify_684:
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P105["%parrot_config"], $P103
.annotate 'line', 1088
    new $P102, "Hash"
    set $P103, param_1579
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "%!config", 7, $P102
.annotate 'line', 1077
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1581"  :anon :subid("168_1329260312.462") :outer("167_1329260312.462")
    .param pmc param_1583
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1084
    .lex "$_", param_1583
.annotate 'line', 1085
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!usage", 4
    unless_null $P110, vivify_682
    new $P110, "Undef"
  vivify_682:
    new $P111, 'String'
    set $P111, "    "
    find_lex $P112, "$_"
    unless_null $P112, vivify_683
    new $P112, "Undef"
  vivify_683:
    concat $P113, $P111, $P112
    concat $P114, $P113, "\n"
    concat $P115, $P110, $P114
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    find_lex $P118, "$?CLASS"
    repr_bind_attr_obj $P117, $P118, "$!usage", 4, $P115
.annotate 'line', 1084
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports" :anon :subid("169_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1586
    .param pmc param_1587
    .param pmc param_1589 :slurpy
    .param pmc param_1588 :optional :named("tagset")
    .param int has_param_1588 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1097
    .const 'Sub' $P1620 = "171_1329260312.462" 
    capture_lex $P1620
    .const 'Sub' $P1611 = "170_1329260312.462" 
    capture_lex $P1611
    .lex "self", param_1586
    .lex "$module", param_1587
    if has_param_1588, optparam_685
    new $P102, "Undef"
    set param_1588, $P102
  optparam_685:
    .lex "$tagset", param_1588
    .lex "@symbols", param_1589
.annotate 'line', 1104
    $P1591 = root_new ['parrot';'Hash']
    set $P1590, $P1591
    .lex "%exports", $P1590
.annotate 'line', 1105
    $P1593 = root_new ['parrot';'Hash']
    set $P1592, $P1593
    .lex "%source", $P1592
.annotate 'line', 1099
    set $P103, param_1587
    unless_null $P103, vivify_686
    new $P103, "Undef"
  vivify_686:
    does $I100, $P103, "hash"
    new $P104, 'Integer'
    set $P104, $I100
    isfalse $I101, $P104
    unless $I101, if_1594_end
.annotate 'line', 1100
    set $P105, param_1586
    nqp_decontainerize $P106, $P105
    set $P107, param_1587
    unless_null $P107, vivify_687
    new $P107, "Undef"
  vivify_687:
    $P108 = $P106."get_module"($P107)
    set param_1587, $P108
  if_1594_end:
.annotate 'line', 1103
    set $P103, param_1588
    unless_null $P103, vivify_688
    new $P103, "Undef"
  vivify_688:
    set $P1595, $P103
    defined $I1597, $P1595
    if $I1597, default_1596
    set $P1599, param_1589
    unless_null $P1599, vivify_689
    $P1599 = root_new ['parrot';'ResizablePMCArray']
  vivify_689:
    if $P1599, if_1598
    new $P106, "String"
    assign $P106, "DEFAULT"
    set $P104, $P106
    goto if_1598_end
  if_1598:
    new $P105, "String"
    assign $P105, "ALL"
    set $P104, $P105
  if_1598_end:
    set $P1595, $P104
  default_1596:
    set param_1588, $P1595
.annotate 'line', 1097
    set $P1600, $P1590
    unless_null $P1600, vivify_690
    $P1600 = root_new ['parrot';'Hash']
  vivify_690:
.annotate 'line', 1105
    set $P103, param_1588
    unless_null $P103, vivify_691
    new $P103, "Undef"
  vivify_691:
    set $S100, $P103
    set $P1601, param_1587
    unless_null $P1601, vivify_692
    $P1601 = root_new ['parrot';'Hash']
  vivify_692:
    set $P1602, $P1601["EXPORT"]
    unless_null $P1602, vivify_693
    $P1602 = root_new ['parrot';'Hash']
  vivify_693:
    set $P104, $P1602[$S100]
    unless_null $P104, vivify_694
    new $P104, "Undef"
  vivify_694:
    set $P1592, $P104
.annotate 'line', 1106
    set $P1604, $P1592
    unless_null $P1604, vivify_695
    $P1604 = root_new ['parrot';'Hash']
  vivify_695:
    defined $I100, $P1604
    new $P103, 'Integer'
    set $P103, $I100
    isfalse $I101, $P103
    unless $I101, if_1603_end
.annotate 'line', 1107
    set $P105, param_1588
    unless_null $P105, vivify_696
    new $P105, "Undef"
  vivify_696:
    set $S100, $P105
    iseq $I102, $S100, "ALL"
    if $I102, if_1605
    $P1606 = root_new ['parrot';'Hash']
    set $P104, $P1606
    goto if_1605_end
  if_1605:
    set $P106, param_1587
    unless_null $P106, vivify_697
    new $P106, "Undef"
  vivify_697:
    set $P104, $P106
  if_1605_end:
    set $P1592, $P104
  if_1603_end:
.annotate 'line', 1109
    set $P1608, param_1589
    unless_null $P1608, vivify_698
    $P1608 = root_new ['parrot';'ResizablePMCArray']
  vivify_698:
    if $P1608, if_1607
.annotate 'line', 1116
    set $P1618, $P1592
    unless_null $P1618, vivify_699
    $P1618 = root_new ['parrot';'Hash']
  vivify_699:
    defined $I100, $P1618
    unless $I100, for_undef_700
    iter $P103, $P1618
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1625_handler
    push_eh $P107
  loop1625_test:
    unless $P103, loop1625_done
    shift $P104, $P103
  loop1625_redo:
    .const 'Sub' $P1620 = "171_1329260312.462" 
    capture_lex $P1620
    $P1620($P104)
  loop1625_next:
    goto loop1625_test
  loop1625_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1625_next
    eq $P108, .CONTROL_LOOP_REDO, loop1625_redo
  loop1625_done:
    pop_eh 
  for_undef_700:
.annotate 'line', 1115
    goto if_1607_end
  if_1607:
.annotate 'line', 1110
    set $P1609, param_1589
    unless_null $P1609, vivify_707
    $P1609 = root_new ['parrot';'ResizablePMCArray']
  vivify_707:
    defined $I100, $P1609
    unless $I100, for_undef_708
    iter $P103, $P1609
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1617_handler
    push_eh $P107
  loop1617_test:
    unless $P103, loop1617_done
    shift $P104, $P103
  loop1617_redo:
    .const 'Sub' $P1611 = "170_1329260312.462" 
    capture_lex $P1611
    $P1611($P104)
  loop1617_next:
    goto loop1617_test
  loop1617_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1617_next
    eq $P108, .CONTROL_LOOP_REDO, loop1617_redo
  loop1617_done:
    pop_eh 
  for_undef_708:
  if_1607_end:
.annotate 'line', 1097
    set $P1626, $P1590
    unless_null $P1626, vivify_717
    $P1626 = root_new ['parrot';'Hash']
  vivify_717:
    .return ($P1626)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1619"  :anon :subid("171_1329260312.462") :outer("169_1329260312.462")
    .param pmc param_1622
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1117
    new $P105, "Undef"
    set $P1621, $P105
    .lex "$value", $P1621
    .lex "$_", param_1622
    find_lex $P106, "$_"
    unless_null $P106, vivify_701
    new $P106, "Undef"
  vivify_701:
    $P107 = $P106."value"()
    set $P1621, $P107
.annotate 'line', 1118
    set $P106, $P1621
    unless_null $P106, vivify_702
    new $P106, "Undef"
  vivify_702:
    find_lex $P107, "$_"
    unless_null $P107, vivify_703
    new $P107, "Undef"
  vivify_703:
    $P108 = $P107."key"()
    set $P109, $P1621
    unless_null $P109, vivify_704
    new $P109, "Undef"
  vivify_704:
    $P110 = "value_type"($P109)
    find_lex $P1623, "%exports"
    unless_null $P1623, vivify_705
    $P1623 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1623
  vivify_705:
    set $P1624, $P1623[$P110]
    unless_null $P1624, vivify_706
    $P1624 = root_new ['parrot';'Hash']
    set $P1623[$P110], $P1624
  vivify_706:
    set $P1624[$P108], $P106
.annotate 'line', 1116
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1610"  :anon :subid("170_1329260312.462") :outer("169_1329260312.462")
    .param pmc param_1613
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1111
    new $P105, "Undef"
    set $P1612, $P105
    .lex "$value", $P1612
    .lex "$_", param_1613
    find_lex $P106, "$_"
    unless_null $P106, vivify_709
    new $P106, "Undef"
  vivify_709:
    set $S100, $P106
    find_lex $P1614, "%source"
    unless_null $P1614, vivify_710
    $P1614 = root_new ['parrot';'Hash']
  vivify_710:
    set $P107, $P1614[$S100]
    unless_null $P107, vivify_711
    new $P107, "Undef"
  vivify_711:
    set $P1612, $P107
.annotate 'line', 1112
    set $P106, $P1612
    unless_null $P106, vivify_712
    new $P106, "Undef"
  vivify_712:
    find_lex $P107, "$_"
    unless_null $P107, vivify_713
    new $P107, "Undef"
  vivify_713:
    set $P108, $P1612
    unless_null $P108, vivify_714
    new $P108, "Undef"
  vivify_714:
    $P109 = "value_type"($P108)
    find_lex $P1615, "%exports"
    unless_null $P1615, vivify_715
    $P1615 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1615
  vivify_715:
    set $P1616, $P1615[$P109]
    unless_null $P1616, vivify_716
    $P1616 = root_new ['parrot';'Hash']
    set $P1615[$P109], $P1616
  vivify_716:
    set $P1616[$P107], $P106
.annotate 'line', 1110
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module" :anon :subid("172_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1628
    .param pmc param_1629
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1124
    .lex "self", param_1628
    .lex "$name", param_1629
.annotate 'line', 1125
    $P1631 = root_new ['parrot';'ResizablePMCArray']
    set $P1630, $P1631
    .lex "@name", $P1630
    set $P102, param_1628
    nqp_decontainerize $P103, $P102
    set $P104, param_1629
    unless_null $P104, vivify_718
    new $P104, "Undef"
  vivify_718:
    $P105 = $P103."parse_name"($P104)
    set $P1630, $P105
.annotate 'line', 1126
    set $P1632, $P1630
    unless_null $P1632, vivify_719
    $P1632 = root_new ['parrot';'ResizablePMCArray']
  vivify_719:
    set $P102, param_1628
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!language", 6
    unless_null $P105, vivify_720
    new $P105, "Undef"
  vivify_720:
    set $S100, $P105
    downcase $S101, $S100
    $P1632."unshift"($S101)
.annotate 'line', 1127
    set $P1633, $P1630
    unless_null $P1633, vivify_721
    $P1633 = root_new ['parrot';'ResizablePMCArray']
  vivify_721:
    get_root_namespace $P102, $P1633
.annotate 'line', 1124
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language" :anon :subid("173_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1635
    .param pmc param_1636 :optional
    .param int has_param_1636 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1130
    .lex "self", param_1635
    if has_param_1636, optparam_722
    new $P102, "Undef"
    set param_1636, $P102
  optparam_722:
    .lex "$name", param_1636
.annotate 'line', 1131
    set $P103, param_1636
    unless_null $P103, vivify_723
    new $P103, "Undef"
  vivify_723:
    unless $P103, if_1637_end
.annotate 'line', 1132
    set $P104, param_1636
    unless_null $P104, vivify_724
    new $P104, "Undef"
  vivify_724:
    set $P105, param_1635
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!language", 6, $P104
.annotate 'line', 1133
    set $P104, param_1636
    unless_null $P104, vivify_725
    new $P104, "Undef"
  vivify_725:
    set $S100, $P104
    set $P105, param_1635
    nqp_decontainerize $P106, $P105
    compreg $S100, $P106
  if_1637_end:
.annotate 'line', 1130
    set $P103, param_1635
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P106, $P104, $P105, "$!language", 6
    unless_null $P106, vivify_726
    new $P106, "Undef"
  vivify_726:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler" :anon :subid("174_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1639
    .param pmc param_1640
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1138
    .lex "self", param_1639
    .lex "$name", param_1640
.annotate 'line', 1139
    set $P102, param_1640
    unless_null $P102, vivify_727
    new $P102, "Undef"
  vivify_727:
    set $S100, $P102
    compreg $P103, $S100
.annotate 'line', 1138
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "config" :anon :subid("175_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1642
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1142
    .lex "self", param_1642
    set $P102, param_1642
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1643, $P103, $P104, "%!config", 7
    unless_null $P1643, vivify_728
    $P1643 = root_new ['parrot';'Hash']
  vivify_728:
    .return ($P1643)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module" :anon :subid("176_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1645
    .param pmc param_1646
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1144
    .const 'Sub' $P1650 = "177_1329260312.462" 
    capture_lex $P1650
    .lex "self", param_1645
    .lex "$name", param_1646
.annotate 'line', 1145
    new $P102, "Undef"
    set $P1647, $P102
    .lex "$base", $P1647
.annotate 'line', 1146
    new $P103, "Undef"
    set $P1648, $P103
    .lex "$loaded", $P1648
.annotate 'line', 1145
    set $P104, param_1645
    nqp_decontainerize $P105, $P104
    set $P106, param_1646
    unless_null $P106, vivify_729
    new $P106, "Undef"
  vivify_729:
    $P107 = $P105."parse_name"($P106)
    join $S100, "/", $P107
    new $P108, 'String'
    set $P108, $S100
    set $P1647, $P108
.annotate 'line', 1146
    new $P104, "Float"
    assign $P104, 0
    set $P1648, $P104
.annotate 'line', 1147
    .const 'Sub' $P1650 = "177_1329260312.462" 
    capture_lex $P1650
    $P1650()
.annotate 'line', 1148
    set $P104, $P1648
    unless_null $P104, vivify_731
    new $P104, "Undef"
  vivify_731:
    if $P104, unless_1658_end
    set $P105, $P1647
    unless_null $P105, vivify_732
    new $P105, "Undef"
  vivify_732:
    concat $P106, $P105, ".pir"
    set $S100, $P106
    load_bytecode $S100
    new $P105, "Float"
    assign $P105, 1
    set $P1648, $P105
  unless_1658_end:
.annotate 'line', 1149
    set $P104, param_1645
    nqp_decontainerize $P105, $P104
    set $P106, param_1646
    unless_null $P106, vivify_733
    new $P106, "Undef"
  vivify_733:
    $P107 = $P105."get_module"($P106)
.annotate 'line', 1144
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1649"  :anon :subid("177_1329260312.462") :outer("176_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1147
    new $P1653, 'ExceptionHandler'
    set_label $P1653, control_1652
    $P1653."handle_types_except"(.CONTROL_ALL)
    push_eh $P1653
    find_lex $P104, "$base"
    unless_null $P104, vivify_730
    new $P104, "Undef"
  vivify_730:
    concat $P105, $P104, ".pbc"
    set $S100, $P105
    load_bytecode $S100
    new $P104, "Float"
    assign $P104, 1
    store_lex "$loaded", $P104
    pop_eh 
    goto skip_handler_1651
  control_1652:
    peek_exception $P1654
    .local pmc exception 
    .get_results (exception) 
    new $P1656, 'Integer'
    set $P1656, 1
    set exception["handled"], $P1656
    set $I1657, exception["handled"]
    eq $I1657, 1, handled_1655
    rethrow exception
  handled_1655:
    finalize $P1654
    .return (exception)
  skip_handler_1651:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import" :anon :subid("178_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1660
    .param pmc param_1661
    .param pmc param_1662
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1152
    .const 'Sub' $P1665 = "179_1329260312.462" 
    capture_lex $P1665
    .lex "self", param_1660
    .lex "$target", param_1661
    .lex "%exports", param_1662
.annotate 'line', 1153
    set $P1663, param_1662
    unless_null $P1663, vivify_734
    $P1663 = root_new ['parrot';'Hash']
  vivify_734:
    defined $I100, $P1663
    unless $I100, for_undef_735
    iter $P102, $P1663
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1688_handler
    push_eh $P106
  loop1688_test:
    unless $P102, loop1688_done
    shift $P103, $P102
  loop1688_redo:
    .const 'Sub' $P1665 = "179_1329260312.462" 
    capture_lex $P1665
    $P1665($P103)
  loop1688_next:
    goto loop1688_test
  loop1688_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1688_next
    eq $P107, .CONTROL_LOOP_REDO, loop1688_redo
  loop1688_done:
    pop_eh 
  for_undef_735:
.annotate 'line', 1152
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1664"  :anon :subid("179_1329260312.462") :outer("178_1329260312.462")
    .param pmc param_1669
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1153
    .const 'Sub' $P1684 = "182_1329260312.462" 
    capture_lex $P1684
    .const 'Sub' $P1679 = "181_1329260312.462" 
    capture_lex $P1679
    .const 'Sub' $P1673 = "180_1329260312.462" 
    capture_lex $P1673
.annotate 'line', 1154
    new $P104, "Undef"
    set $P1666, $P104
    .lex "$type", $P1666
.annotate 'line', 1155
    $P1668 = root_new ['parrot';'Hash']
    set $P1667, $P1668
    .lex "%items", $P1667
    .lex "$_", param_1669
.annotate 'line', 1154
    find_lex $P105, "$_"
    unless_null $P105, vivify_736
    new $P105, "Undef"
  vivify_736:
    $P106 = $P105."key"()
    set $P1666, $P106
.annotate 'line', 1155
    find_lex $P105, "$_"
    unless_null $P105, vivify_737
    new $P105, "Undef"
  vivify_737:
    $P106 = $P105."value"()
    set $P1667, $P106
.annotate 'line', 1156
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    new $P108, 'String'
    set $P108, "import_"
    set $P109, $P1666
    unless_null $P109, vivify_738
    new $P109, "Undef"
  vivify_738:
    concat $P110, $P108, $P109
    set $S100, $P110
    can $I101, $P107, $S100
    if $I101, if_1670
.annotate 'line', 1159
    find_lex $P113, "$target"
    unless_null $P113, vivify_739
    new $P113, "Undef"
  vivify_739:
    new $P114, 'String'
    set $P114, "add_"
    set $P115, $P1666
    unless_null $P115, vivify_740
    new $P115, "Undef"
  vivify_740:
    concat $P116, $P114, $P115
    set $S101, $P116
    can $I102, $P113, $S101
    if $I102, if_1676
.annotate 'line', 1163
    set $P1682, $P1667
    unless_null $P1682, vivify_741
    $P1682 = root_new ['parrot';'Hash']
  vivify_741:
    defined $I103, $P1682
    unless $I103, for_undef_742
    iter $P118, $P1682
    new $P120, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P120, loop1687_handler
    push_eh $P120
  loop1687_test:
    unless $P118, loop1687_done
    shift $P119, $P118
  loop1687_redo:
    .const 'Sub' $P1684 = "182_1329260312.462" 
    capture_lex $P1684
    $P1684($P119)
  loop1687_next:
    goto loop1687_test
  loop1687_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P122, exception, 'type'
    eq $P122, .CONTROL_LOOP_NEXT, loop1687_next
    eq $P122, .CONTROL_LOOP_REDO, loop1687_redo
  loop1687_done:
    pop_eh 
  for_undef_742:
.annotate 'line', 1162
    set $P112, $P118
.annotate 'line', 1159
    goto if_1676_end
  if_1676:
.annotate 'line', 1160
    set $P1677, $P1667
    unless_null $P1677, vivify_746
    $P1677 = root_new ['parrot';'Hash']
  vivify_746:
    defined $I103, $P1677
    unless $I103, for_undef_747
    iter $P117, $P1677
    new $P119, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P119, loop1681_handler
    push_eh $P119
  loop1681_test:
    unless $P117, loop1681_done
    shift $P118, $P117
  loop1681_redo:
    .const 'Sub' $P1679 = "181_1329260312.462" 
    capture_lex $P1679
    $P1679($P118)
  loop1681_next:
    goto loop1681_test
  loop1681_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P120, exception, 'type'
    eq $P120, .CONTROL_LOOP_NEXT, loop1681_next
    eq $P120, .CONTROL_LOOP_REDO, loop1681_redo
  loop1681_done:
    pop_eh 
  for_undef_747:
.annotate 'line', 1159
    set $P112, $P117
  if_1676_end:
    set $P105, $P112
.annotate 'line', 1156
    goto if_1670_end
  if_1670:
.annotate 'line', 1157
    set $P1671, $P1667
    unless_null $P1671, vivify_752
    $P1671 = root_new ['parrot';'Hash']
  vivify_752:
    defined $I102, $P1671
    unless $I102, for_undef_753
    iter $P111, $P1671
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1675_handler
    push_eh $P113
  loop1675_test:
    unless $P111, loop1675_done
    shift $P112, $P111
  loop1675_redo:
    .const 'Sub' $P1673 = "180_1329260312.462" 
    capture_lex $P1673
    $P1673($P112)
  loop1675_next:
    goto loop1675_test
  loop1675_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1675_next
    eq $P114, .CONTROL_LOOP_REDO, loop1675_redo
  loop1675_done:
    pop_eh 
  for_undef_753:
.annotate 'line', 1156
    set $P105, $P111
  if_1670_end:
.annotate 'line', 1153
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1683"  :anon :subid("182_1329260312.462") :outer("179_1329260312.462")
    .param pmc param_1685
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1163
    .lex "$_", param_1685
    find_lex $P120, "$_"
    unless_null $P120, vivify_743
    new $P120, "Undef"
  vivify_743:
    $P121 = $P120."value"()
    find_lex $P122, "$_"
    unless_null $P122, vivify_744
    new $P122, "Undef"
  vivify_744:
    $P123 = $P122."key"()
    set $S102, $P123
    find_lex $P1686, "$target"
    unless_null $P1686, vivify_745
    $P1686 = root_new ['parrot';'Hash']
    store_lex "$target", $P1686
  vivify_745:
    set $P1686[$S102], $P121
    .return ($P121)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1678"  :anon :subid("181_1329260312.462") :outer("179_1329260312.462")
    .param pmc param_1680
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1160
    .lex "$_", param_1680
    find_lex $P119, "$target"
    unless_null $P119, vivify_748
    new $P119, "Undef"
  vivify_748:
    find_lex $P120, "$_"
    unless_null $P120, vivify_749
    new $P120, "Undef"
  vivify_749:
    $P121 = $P120."key"()
    find_lex $P122, "$_"
    unless_null $P122, vivify_750
    new $P122, "Undef"
  vivify_750:
    $P123 = $P122."value"()
    new $P124, 'String'
    set $P124, "add_"
    find_lex $P125, "$type"
    unless_null $P125, vivify_751
    new $P125, "Undef"
  vivify_751:
    concat $P126, $P124, $P125
    set $S102, $P126
    $P127 = $P119.$S102($P121, $P123)
    .return ($P127)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1672"  :anon :subid("180_1329260312.462") :outer("179_1329260312.462")
    .param pmc param_1674
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1157
    .lex "$_", param_1674
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_754
    new $P115, "Undef"
  vivify_754:
    find_lex $P116, "$_"
    unless_null $P116, vivify_755
    new $P116, "Undef"
  vivify_755:
    $P117 = $P116."key"()
    find_lex $P118, "$_"
    unless_null $P118, vivify_756
    new $P118, "Undef"
  vivify_756:
    $P119 = $P118."value"()
    new $P120, 'String'
    set $P120, "import_"
    find_lex $P121, "$type"
    unless_null $P121, vivify_757
    new $P121, "Undef"
  vivify_757:
    concat $P122, $P120, $P121
    set $S101, $P122
    $P123 = $P114.$S101($P115, $P117, $P119)
    .return ($P123)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint" :anon :subid("183_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1690
    .param pmc param_1691
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1168
    .lex "self", param_1690
    .lex "$value", param_1691
.annotate 'line', 1170
    getinterp $P103
    $P104 = $P103."stdout_handle"()
    $N100 = $P104."tell"()
    find_dynamic_lex $P107, "$*AUTOPRINTPOS"
    unless_null $P107, vivify_758
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["$AUTOPRINTPOS"]
    unless_null $P107, vivify_759
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_759:
  vivify_758:
    set $N101, $P107
    isgt $I100, $N100, $N101
    unless $I100, unless_1692
    new $P102, 'Integer'
    set $P102, $I100
    goto unless_1692_end
  unless_1692:
.annotate 'line', 1169
    set $P108, param_1691
    unless_null $P108, vivify_760
    new $P108, "Undef"
  vivify_760:
    set $S100, $P108
    say $S100
  unless_1692_end:
.annotate 'line', 1168
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive" :anon :subid("184_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1694
    .param pmc param_1695 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1173
    .const 'Sub' $P1715 = "186_1329260312.462" 
    capture_lex $P1715
    .const 'Sub' $P1697 = "185_1329260312.462" 
    capture_lex $P1697
    .lex "self", param_1694
    .lex "%adverbs", param_1695
.annotate 'line', 1179
    .const 'Sub' $P1697 = "185_1329260312.462" 
    newclosure $P1702, $P1697
    set $P1696, $P1702
    .lex "blank_context", $P1696
.annotate 'line', 1188
    new $P102, "Undef"
    set $P1703, $P102
    .lex "$interactive_ctx", $P1703
.annotate 'line', 1189
    $P1705 = root_new ['parrot';'Hash']
    set $P1704, $P1705
    .lex "%interactive_pad", $P1704
.annotate 'line', 1192
    new $P104, "Undef"
    set $P1706, $P104
    .lex "$target", $P1706
.annotate 'line', 1196
    new $P105, "Undef"
    set $P1707, $P105
    .lex "$stdin", $P1707
.annotate 'line', 1197
    new $P106, "Undef"
    set $P1708, $P106
    .lex "$encoding", $P1708
.annotate 'line', 1202
    new $P107, "Undef"
    set $P1709, $P107
    .lex "$save_ctx", $P1709
.annotate 'line', 1173
    set $P108, $P1696
.annotate 'line', 1187
    set $P108, $P1696
    null $P109
    $P108."set_outer"($P109)
.annotate 'line', 1188
    $P108 = "blank_context"()
    set $P1703, $P108
.annotate 'line', 1190
    set $P108, $P1703
    unless_null $P108, vivify_765
    new $P108, "Undef"
  vivify_765:
    getattribute $P109, $P108, "lex_pad"
    set $P1704, $P109
.annotate 'line', 1192
    set $P1710, param_1695
    unless_null $P1710, vivify_766
    $P1710 = root_new ['parrot';'Hash']
  vivify_766:
    set $P108, $P1710["target"]
    unless_null $P108, vivify_767
    new $P108, "Undef"
  vivify_767:
    set $S100, $P108
    downcase $S101, $S100
    new $P109, 'String'
    set $P109, $S101
    set $P1706, $P109
.annotate 'line', 1194
    getinterp $P108
    $P109 = $P108."stderr_handle"()
    set $P110, param_1694
    nqp_decontainerize $P111, $P110
    $P112 = $P111."interactive_banner"()
    print $P109, $P112
.annotate 'line', 1196
    getinterp $P108
    $P109 = $P108."stdin_handle"()
    set $P1707, $P109
.annotate 'line', 1197
    set $P1711, param_1695
    unless_null $P1711, vivify_768
    $P1711 = root_new ['parrot';'Hash']
  vivify_768:
    set $P108, $P1711["encoding"]
    unless_null $P108, vivify_769
    new $P108, "Undef"
  vivify_769:
    set $S100, $P108
    new $P109, 'String'
    set $P109, $S100
    set $P1708, $P109
.annotate 'line', 1198
    set $P109, $P1708
    unless_null $P109, vivify_770
    new $P109, "Undef"
  vivify_770:
    if $P109, if_1713
    set $P108, $P109
    goto if_1713_end
  if_1713:
    set $P110, $P1708
    unless_null $P110, vivify_771
    new $P110, "Undef"
  vivify_771:
    set $S100, $P110
    isne $I100, $S100, "fixed_8"
    new $P108, 'Integer'
    set $P108, $I100
  if_1713_end:
    unless $P108, if_1712_end
.annotate 'line', 1199
    set $P111, $P1707
    unless_null $P111, vivify_772
    new $P111, "Undef"
  vivify_772:
    set $P112, $P1708
    unless_null $P112, vivify_773
    new $P112, "Undef"
  vivify_773:
    $P111."encoding"($P112)
  if_1712_end:
.annotate 'line', 1173
    set $P108, $P1709
    unless_null $P108, vivify_774
    new $P108, "Undef"
  vivify_774:
.annotate 'line', 1203
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1761_handler
    push_eh $P115
  loop1761_test:
    new $P108, "Float"
    assign $P108, 1
    unless $P108, loop1761_done
  loop1761_redo:
    .const 'Sub' $P1715 = "186_1329260312.462" 
    capture_lex $P1715
    $P1715()
  loop1761_next:
    goto loop1761_test
  loop1761_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1761_next
    eq $P116, .CONTROL_LOOP_REDO, loop1761_redo
  loop1761_done:
    pop_eh 
.annotate 'line', 1173
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "blank_context"  :subid("185_1329260312.462") :outer("184_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1181
    $P1699 = root_new ['parrot';'Hash']
    set $P1698, $P1699
    .lex "%blank_pad", $P1698
.annotate 'line', 1179
    set $P1700, $P1698
    unless_null $P1700, vivify_761
    $P1700 = root_new ['parrot';'Hash']
  vivify_761:
.annotate 'line', 1183
    getinterp $P102
    set $P103, $P102["context"]
    unless_null $P103, vivify_762
    new $P103, "Undef"
  vivify_762:
    getattribute $P104, $P103, "lex_pad"
    set $P1701, $P1698
    unless_null $P1701, vivify_763
    $P1701 = root_new ['parrot';'Hash']
  vivify_763:
    copy $P104, $P1701
.annotate 'line', 1185
    getinterp $P102
    set $P103, $P102["context"]
    unless_null $P103, vivify_764
    new $P103, "Undef"
  vivify_764:
.annotate 'line', 1179
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1714"  :anon :subid("186_1329260312.462") :outer("184_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1203
    .const 'Sub' $P1729 = "187_1329260312.462" 
    capture_lex $P1729
.annotate 'line', 1206
    new $P109, "Undef"
    set $P1716, $P109
    .lex "$prompt", $P1716
.annotate 'line', 1207
    new $P110, "Undef"
    set $P1717, $P110
    .lex "$code", $P1717
.annotate 'line', 1216
    new $P111, "Undef"
    set $P1718, $P111
    .lex "$*AUTOPRINTPOS", $P1718
.annotate 'line', 1217
    new $P112, "Undef"
    set $P1719, $P112
    .lex "$*CTXSAVE", $P1719
.annotate 'line', 1218
    new $P113, "Undef"
    set $P1720, $P113
    .lex "$*MAIN_CTX", $P1720
.annotate 'line', 1204
    find_lex $P114, "$stdin"
    unless_null $P114, vivify_775
    new $P114, "Undef"
  vivify_775:
    if $P114, unless_1721_end
    die 0, .CONTROL_LOOP_LAST
  unless_1721_end:
.annotate 'line', 1206
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    $P116 = $P115."interactive_prompt"()
    set $P1722, $P116
    defined $I1724, $P1722
    if $I1724, default_1723
    new $P117, "String"
    assign $P117, "> "
    set $P1722, $P117
  default_1723:
    set $P1716, $P1722
.annotate 'line', 1207
    find_lex $P114, "$stdin"
    unless_null $P114, vivify_776
    new $P114, "Undef"
  vivify_776:
    set $P115, $P1716
    unless_null $P115, vivify_777
    new $P115, "Undef"
  vivify_777:
    set $S100, $P115
    $P116 = $P114."readline_interactive"($S100)
    set $P1717, $P116
.annotate 'line', 1209
    set $P114, $P1717
    unless_null $P114, vivify_778
    new $P114, "Undef"
  vivify_778:
    isnull $I100, $P114
    unless $I100, if_1725_end
    die 0, .CONTROL_LOOP_LAST
  if_1725_end:
.annotate 'line', 1210
    set $P114, $P1717
    unless_null $P114, vivify_779
    new $P114, "Undef"
  vivify_779:
    defined $I100, $P114
    if $I100, unless_1726_end
.annotate 'line', 1211
    print "\n"
.annotate 'line', 1212
    die 0, .CONTROL_LOOP_LAST
  unless_1726_end:
.annotate 'line', 1216
    getinterp $P114
    $P115 = $P114."stdout_handle"()
    $P116 = $P115."tell"()
    set $P1718, $P116
.annotate 'line', 1217
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    set $P1719, $P115
.annotate 'line', 1203
    set $P116, $P1720
    unless_null $P116, vivify_780
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["$MAIN_CTX"]
    unless_null $P116, vivify_781
    die "Contextual $*MAIN_CTX not found"
  vivify_781:
  vivify_780:
.annotate 'line', 1220
    set $P115, $P1717
    unless_null $P115, vivify_782
    new $P115, "Undef"
  vivify_782:
    if $P115, if_1727
    set $P114, $P115
    goto if_1727_end
  if_1727:
    .const 'Sub' $P1729 = "187_1329260312.462" 
    capture_lex $P1729
    $P118 = $P1729()
    set $P114, $P118
  if_1727_end:
.annotate 'line', 1203
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1728"  :anon :subid("187_1329260312.462") :outer("186_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1220
    .const 'Sub' $P1753 = "190_1329260312.462" 
    capture_lex $P1753
    .const 'Sub' $P1732 = "188_1329260312.462" 
    capture_lex $P1732
.annotate 'line', 1222
    new $P116, "Undef"
    set $P1730, $P116
    .lex "$output", $P1730
.annotate 'line', 1221
    find_lex $P117, "$code"
    unless_null $P117, vivify_783
    new $P117, "Undef"
  vivify_783:
    concat $P118, $P117, "\n"
    store_lex "$code", $P118
.annotate 'line', 1220
    set $P117, $P1730
    unless_null $P117, vivify_784
    new $P117, "Undef"
  vivify_784:
.annotate 'line', 1223
    .const 'Sub' $P1732 = "188_1329260312.462" 
    capture_lex $P1732
    $P1732()
.annotate 'line', 1230
    find_dynamic_lex $P119, "$*MAIN_CTX"
    unless_null $P119, vivify_789
    get_hll_global $P117, "GLOBAL"
    get_who $P118, $P117
    set $P119, $P118["$MAIN_CTX"]
    unless_null $P119, vivify_790
    die "Contextual $*MAIN_CTX not found"
  vivify_790:
  vivify_789:
    defined $I100, $P119
    unless $I100, if_1751_end
.annotate 'line', 1231
    find_dynamic_lex $P123, "$*MAIN_CTX"
    unless_null $P123, vivify_791
    get_hll_global $P121, "GLOBAL"
    get_who $P122, $P121
    set $P123, $P122["$MAIN_CTX"]
    unless_null $P123, vivify_792
    die "Contextual $*MAIN_CTX not found"
  vivify_792:
  vivify_791:
    $P124 = $P123."lexpad_full"()
    defined $I101, $P124
    unless $I101, for_undef_793
    iter $P120, $P124
    new $P126, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P126, loop1756_handler
    push_eh $P126
  loop1756_test:
    unless $P120, loop1756_done
    shift $P125, $P120
  loop1756_redo:
    .const 'Sub' $P1753 = "190_1329260312.462" 
    capture_lex $P1753
    $P1753($P125)
  loop1756_next:
    goto loop1756_test
  loop1756_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P128, exception, 'type'
    eq $P128, .CONTROL_LOOP_NEXT, loop1756_next
    eq $P128, .CONTROL_LOOP_REDO, loop1756_redo
  loop1756_done:
    pop_eh 
  for_undef_793:
.annotate 'line', 1234
    find_lex $P120, "$interactive_ctx"
    unless_null $P120, vivify_797
    new $P120, "Undef"
  vivify_797:
    store_lex "$save_ctx", $P120
  if_1751_end:
.annotate 'line', 1236
    set $P117, $P1730
    unless_null $P117, vivify_798
    new $P117, "Undef"
  vivify_798:
    isnull $I100, $P117
    unless $I100, if_1757_end
    die 0, .CONTROL_LOOP_NEXT
  if_1757_end:
.annotate 'line', 1238
    find_lex $P118, "$target"
    unless_null $P118, vivify_799
    new $P118, "Undef"
  vivify_799:
    isfalse $I100, $P118
    if $I100, if_1758
.annotate 'line', 1240
    find_lex $P120, "$target"
    unless_null $P120, vivify_800
    new $P120, "Undef"
  vivify_800:
    set $S100, $P120
    iseq $I101, $S100, "pir"
    if $I101, if_1759
.annotate 'line', 1243
    find_lex $P121, "self"
    nqp_decontainerize $P123, $P121
    set $P124, $P1730
    unless_null $P124, vivify_801
    new $P124, "Undef"
  vivify_801:
    find_lex $P125, "$target"
    unless_null $P125, vivify_802
    new $P125, "Undef"
  vivify_802:
    find_lex $P1760, "%adverbs"
    unless_null $P1760, vivify_803
    $P1760 = root_new ['parrot';'Hash']
  vivify_803:
    $P126 = $P123."dumper"($P124, $P125, $P1760 :flat)
.annotate 'line', 1242
    set $P119, $P126
.annotate 'line', 1240
    goto if_1759_end
  if_1759:
.annotate 'line', 1241
    set $P121, $P1730
    unless_null $P121, vivify_804
    new $P121, "Undef"
  vivify_804:
    say $P121
  if_1759_end:
.annotate 'line', 1240
    set $P117, $P119
.annotate 'line', 1238
    goto if_1758_end
  if_1758:
.annotate 'line', 1239
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    set $P121, $P1730
    unless_null $P121, vivify_805
    new $P121, "Undef"
  vivify_805:
    $P122 = $P120."autoprint"($P121)
.annotate 'line', 1238
    set $P117, $P122
  if_1758_end:
.annotate 'line', 1220
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1731"  :anon :subid("188_1329260312.462") :outer("187_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1223
    .const 'Sub' $P1740 = "189_1329260312.462" 
    capture_lex $P1740
    new $P1736, 'ExceptionHandler'
    set_label $P1736, control_1735
    $P1736."handle_types_except"(.CONTROL_ALL)
    push_eh $P1736
.annotate 'line', 1224
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$code"
    unless_null $P119, vivify_785
    new $P119, "Undef"
  vivify_785:
    find_lex $P120, "$save_ctx"
    unless_null $P120, vivify_786
    new $P120, "Undef"
  vivify_786:
    find_lex $P1733, "%adverbs"
    unless_null $P1733, vivify_787
    $P1733 = root_new ['parrot';'Hash']
  vivify_787:
    $P121 = $P118."eval"($P119, $P1733 :flat, $P120 :named("outer_ctx"))
    store_lex "$output", $P121
.annotate 'line', 1223
    pop_eh 
    goto skip_handler_1734
  control_1735:
    peek_exception $P1737
.annotate 'line', 1225
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1740 = "189_1329260312.462" 
    newclosure $P1748, $P1740
    $P1748(exception)
    new $P1749, 'Integer'
    set $P1749, 1
    set exception["handled"], $P1749
    set $I1750, exception["handled"]
    eq $I1750, 1, handled_1738
    rethrow exception
  handled_1738:
    finalize $P1737
    .return (exception)
  skip_handler_1734:
.annotate 'line', 1223
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1739"  :anon :subid("189_1329260312.462") :outer("188_1329260312.462")
    .param pmc param_1741
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1225
    .lex "$_", param_1741
    find_lex $P1742, "$_"
    set $P1743, $P1742
    .lex "$!", $P1743
.annotate 'line', 1226
    find_lex $P1744, "$!"
    unless_null $P1744, vivify_788
    new $P1744, "Undef"
  vivify_788:
    set $S1745, $P1744
    new $P1746, 'String'
    set $P1746, $S1745
    concat $P1747, $P1746, "\n"
    print $P1747
.annotate 'line', 1227
    die 0, .CONTROL_LOOP_NEXT
.annotate 'line', 1225
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1752"  :anon :subid("190_1329260312.462") :outer("187_1329260312.462")
    .param pmc param_1754
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1231
    .lex "$_", param_1754
.annotate 'line', 1232
    find_lex $P126, "$_"
    unless_null $P126, vivify_794
    new $P126, "Undef"
  vivify_794:
    $P127 = $P126."value"()
    find_lex $P128, "$_"
    unless_null $P128, vivify_795
    new $P128, "Undef"
  vivify_795:
    $P129 = $P128."key"()
    find_lex $P1755, "%interactive_pad"
    unless_null $P1755, vivify_796
    $P1755 = root_new ['parrot';'Hash']
    store_lex "%interactive_pad", $P1755
  vivify_796:
    set $P1755[$P129], $P127
.annotate 'line', 1231
    .return ($P127)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval" :anon :subid("191_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1763
    .param pmc param_1764
    .param pmc param_1765 :slurpy
    .param pmc param_1766 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1249
    .const 'Sub' $P1776 = "192_1329260312.462" 
    capture_lex $P1776
    .lex "self", param_1763
    .lex "$code", param_1764
    .lex "@args", param_1765
    .lex "%adverbs", param_1766
.annotate 'line', 1250
    new $P102, "Undef"
    set $P1767, $P102
    .lex "$output", $P1767
.annotate 'line', 1252
    new $P103, "Undef"
    set $P1768, $P103
    .lex "$old_runcore", $P1768
.annotate 'line', 1249
    set $P104, $P1767
    unless_null $P104, vivify_806
    new $P104, "Undef"
  vivify_806:
.annotate 'line', 1252
    interpinfo $S100, .INTERPINFO_CURRENT_RUNCORE
    new $P104, 'String'
    set $P104, $S100
    set $P1768, $P104
.annotate 'line', 1253
    set $P1770, param_1766
    unless_null $P1770, vivify_807
    $P1770 = root_new ['parrot';'Hash']
  vivify_807:
    set $P104, $P1770["profile-compile"]
    unless_null $P104, vivify_808
    new $P104, "Undef"
  vivify_808:
    unless $P104, if_1769_end
.annotate 'line', 1254
    set_runcore "subprof_hll"
  if_1769_end:
.annotate 'line', 1256
    set $P104, param_1763
    nqp_decontainerize $P105, $P104
    set $P106, param_1764
    unless_null $P106, vivify_809
    new $P106, "Undef"
  vivify_809:
    set $P1771, param_1766
    unless_null $P1771, vivify_810
    $P1771 = root_new ['parrot';'Hash']
  vivify_810:
    $P107 = $P105."compile"($P106, $P1771 :flat)
    set $P1767, $P107
.annotate 'line', 1258
    set $P105, $P1767
    unless_null $P105, vivify_811
    new $P105, "Undef"
  vivify_811:
    isa $I100, $P105, "String"
    new $P106, 'Integer'
    set $P106, $I100
    isfalse $I101, $P106
    if $I101, if_1773
    new $P104, 'Integer'
    set $P104, $I101
    goto if_1773_end
  if_1773:
.annotate 'line', 1259
    set $P1774, param_1766
    unless_null $P1774, vivify_812
    $P1774 = root_new ['parrot';'Hash']
  vivify_812:
    set $P107, $P1774["target"]
    unless_null $P107, vivify_813
    new $P107, "Undef"
  vivify_813:
    set $S100, $P107
    iseq $I102, $S100, ""
    new $P104, 'Integer'
    set $P104, $I102
  if_1773_end:
    unless $P104, if_1772_end
    .const 'Sub' $P1776 = "192_1329260312.462" 
    capture_lex $P1776
    $P1776()
  if_1772_end:
.annotate 'line', 1272
    set $P104, $P1768
    unless_null $P104, vivify_826
    new $P104, "Undef"
  vivify_826:
    set $S100, $P104
    set_runcore $S100
.annotate 'line', 1249
    set $P104, $P1767
    unless_null $P104, vivify_827
    new $P104, "Undef"
  vivify_827:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1775"  :anon :subid("192_1329260312.462") :outer("191_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1260
    new $P108, "Undef"
    set $P1777, $P108
    .lex "$outer_ctx", $P1777
    find_lex $P1778, "%adverbs"
    unless_null $P1778, vivify_814
    $P1778 = root_new ['parrot';'Hash']
  vivify_814:
    set $P109, $P1778["outer_ctx"]
    unless_null $P109, vivify_815
    new $P109, "Undef"
  vivify_815:
    set $P1777, $P109
.annotate 'line', 1261
    set $P109, $P1777
    unless_null $P109, vivify_816
    new $P109, "Undef"
  vivify_816:
    defined $I103, $P109
    unless $I103, if_1779_end
.annotate 'line', 1262
    new $P110, "Float"
    assign $P110, 0
    set $I104, $P110
    find_lex $P1780, "$output"
    unless_null $P1780, vivify_817
    $P1780 = root_new ['parrot';'ResizablePMCArray']
  vivify_817:
    set $P111, $P1780[$I104]
    unless_null $P111, vivify_818
    new $P111, "Undef"
  vivify_818:
    set $P112, $P1777
    unless_null $P112, vivify_819
    new $P112, "Undef"
  vivify_819:
    $P111."set_outer_ctx"($P112)
  if_1779_end:
.annotate 'line', 1265
    find_lex $P1782, "%adverbs"
    unless_null $P1782, vivify_820
    $P1782 = root_new ['parrot';'Hash']
  vivify_820:
    set $P109, $P1782["profile"]
    unless_null $P109, vivify_821
    new $P109, "Undef"
  vivify_821:
    unless $P109, if_1781_end
.annotate 'line', 1266
    set_runcore "subprof_hll"
  if_1781_end:
.annotate 'line', 1268
    find_lex $P1783, "%adverbs"
    unless_null $P1783, vivify_822
    $P1783 = root_new ['parrot';'Hash']
  vivify_822:
    set $P109, $P1783["trace"]
    unless_null $P109, vivify_823
    new $P109, "Undef"
  vivify_823:
    set $I103, $P109
    trace $I103
.annotate 'line', 1269
    find_lex $P109, "$output"
    unless_null $P109, vivify_824
    new $P109, "Undef"
  vivify_824:
    find_lex $P1784, "@args"
    unless_null $P1784, vivify_825
    $P1784 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
    $P110 = $P109($P1784 :flat)
    store_lex "$output", $P110
.annotate 'line', 1270
    new $P109, "Float"
    assign $P109, 0
    set $I103, $P109
    trace $I103
.annotate 'line', 1259
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave" :anon :subid("193_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1786
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1277
    .lex "self", param_1786
.annotate 'line', 1279

                $P0 = getinterp
                $P1787 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1787
.annotate 'line', 1283
    new $P102, "Float"
    assign $P102, 0
    store_dynamic_lex "$*CTXSAVE", $P102
.annotate 'line', 1277
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic" :anon :subid("194_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1789
    .param pmc param_1790 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1286
    .lex "self", param_1789
    .lex "@args", param_1790
.annotate 'line', 1287
    set $P1791, param_1790
    unless_null $P1791, vivify_828
    $P1791 = root_new ['parrot';'ResizablePMCArray']
  vivify_828:
    join $S100, "", $P1791
    die $S100
.annotate 'line', 1286
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages" :anon :subid("195_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1793
    .param pmc param_1794 :optional
    .param int has_param_1794 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1290
    .lex "self", param_1793
    if has_param_1794, optparam_829
    $P1795 = root_new ['parrot';'ResizablePMCArray']
    set param_1794, $P1795
  optparam_829:
    .lex "@value", param_1794
.annotate 'line', 1291
    set $P1797, param_1794
    unless_null $P1797, vivify_830
    $P1797 = root_new ['parrot';'ResizablePMCArray']
  vivify_830:
    set $N100, $P1797
    unless $N100, if_1796_end
.annotate 'line', 1292
    set $P1798, param_1794
    unless_null $P1798, vivify_831
    $P1798 = root_new ['parrot';'ResizablePMCArray']
  vivify_831:
    set $P102, param_1793
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!stages", 0, $P1798
  if_1796_end:
.annotate 'line', 1290
    set $P102, param_1793
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1799, $P103, $P104, "@!stages", 0
    unless_null $P1799, vivify_832
    $P1799 = root_new ['parrot';'ResizablePMCArray']
  vivify_832:
    .return ($P1799)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar" :anon :subid("196_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1801
    .param pmc param_1802 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1297
    .lex "self", param_1801
    .lex "@value", param_1802
.annotate 'line', 1298
    set $P1804, param_1802
    unless_null $P1804, vivify_833
    $P1804 = root_new ['parrot';'ResizablePMCArray']
  vivify_833:
    set $N100, $P1804
    unless $N100, if_1803_end
.annotate 'line', 1299
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    set $P1805, param_1802
    unless_null $P1805, vivify_834
    $P1805 = root_new ['parrot';'ResizablePMCArray']
  vivify_834:
    set $P103, $P1805[$I100]
    unless_null $P103, vivify_835
    new $P103, "Undef"
  vivify_835:
    set $P104, param_1801
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_bind_attr_obj $P105, $P106, "$!parsegrammar", 1, $P103
  if_1803_end:
.annotate 'line', 1297
    set $P102, param_1801
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!parsegrammar", 1
    unless_null $P105, vivify_836
    new $P105, "Undef"
  vivify_836:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions" :anon :subid("197_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1807
    .param pmc param_1808 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1304
    .lex "self", param_1807
    .lex "@value", param_1808
.annotate 'line', 1305
    set $P1810, param_1808
    unless_null $P1810, vivify_837
    $P1810 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    set $N100, $P1810
    unless $N100, if_1809_end
.annotate 'line', 1306
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    set $P1811, param_1808
    unless_null $P1811, vivify_838
    $P1811 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    set $P103, $P1811[$I100]
    unless_null $P103, vivify_839
    new $P103, "Undef"
  vivify_839:
    set $P104, param_1807
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_bind_attr_obj $P105, $P106, "$!parseactions", 2, $P103
  if_1809_end:
.annotate 'line', 1304
    set $P102, param_1807
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!parseactions", 2
    unless_null $P105, vivify_840
    new $P105, "Undef"
  vivify_840:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "interactive_banner" :anon :subid("198_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1813
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1311
    .lex "self", param_1813
    .return ("")
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "interactive_prompt" :anon :subid("199_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1815
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1313
    .lex "self", param_1815
    .return ("> ")
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname" :anon :subid("200_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1817
    .param pmc param_1818 :optional
    .param int has_param_1818 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1315
    .lex "self", param_1817
    if has_param_1818, optparam_841
    new $P102, "Undef"
    set param_1818, $P102
  optparam_841:
    .lex "$value", param_1818
.annotate 'line', 1316
    set $P103, param_1818
    unless_null $P103, vivify_842
    new $P103, "Undef"
  vivify_842:
    defined $I100, $P103
    unless $I100, if_1819_end
.annotate 'line', 1317
    set $P104, param_1818
    unless_null $P104, vivify_843
    new $P104, "Undef"
  vivify_843:
    set $P105, param_1817
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!compiler_progname", 5, $P104
  if_1819_end:
.annotate 'line', 1315
    set $P103, param_1817
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P106, $P104, $P105, "$!compiler_progname", 5
    unless_null $P106, vivify_844
    new $P106, "Undef"
  vivify_844:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options" :anon :subid("201_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1821
    .param pmc param_1822 :optional
    .param int has_param_1822 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1322
    .lex "self", param_1821
    if has_param_1822, optparam_845
    $P1823 = root_new ['parrot';'ResizablePMCArray']
    set param_1822, $P1823
  optparam_845:
    .lex "@value", param_1822
.annotate 'line', 1323
    set $P1825, param_1822
    unless_null $P1825, vivify_846
    $P1825 = root_new ['parrot';'ResizablePMCArray']
  vivify_846:
    set $N100, $P1825
    unless $N100, if_1824_end
.annotate 'line', 1324
    set $P1826, param_1822
    unless_null $P1826, vivify_847
    $P1826 = root_new ['parrot';'ResizablePMCArray']
  vivify_847:
    set $P102, param_1821
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!cmdoptions", 3, $P1826
  if_1824_end:
.annotate 'line', 1322
    set $P102, param_1821
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1827, $P103, $P104, "@!cmdoptions", 3
    unless_null $P1827, vivify_848
    $P1827 = root_new ['parrot';'ResizablePMCArray']
  vivify_848:
    .return ($P1827)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "command_line" :anon :subid("202_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1829
    .param pmc param_1830
    .param pmc param_1831 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1329
    .lex "self", param_1829
    .lex "@args", param_1830
    .lex "%adverbs", param_1831
.annotate 'line', 1342
    new $P102, "Undef"
    set $P1832, $P102
    .lex "$program-name", $P1832
.annotate 'line', 1343
    new $P103, "Undef"
    set $P1833, $P103
    .lex "$res", $P1833
.annotate 'line', 1344
    $P1835 = root_new ['parrot';'Hash']
    set $P1834, $P1835
    .lex "%opts", $P1834
.annotate 'line', 1345
    $P1837 = root_new ['parrot';'ResizablePMCArray']
    set $P1836, $P1837
    .lex "@a", $P1836
.annotate 'line', 1338
    new $P104, "Float"
    assign $P104, 2
    set $I100, $P104
    set $P1839, param_1830
    unless_null $P1839, vivify_849
    $P1839 = root_new ['parrot';'ResizablePMCArray']
  vivify_849:
    set $P105, $P1839[$I100]
    unless_null $P105, vivify_850
    new $P105, "Undef"
  vivify_850:
    set $S100, $P105
    index $I101, $S100, "@INC"
    set $N100, $I101
    set $N101, 0
    isge $I102, $N100, $N101
    unless $I102, if_1838_end
.annotate 'line', 1339
    new $P106, "Float"
    assign $P106, 0
    set $I103, $P106
    exit $I103
  if_1838_end:
.annotate 'line', 1342
    new $P104, "Float"
    assign $P104, 0
    set $I100, $P104
    set $P1840, param_1830
    unless_null $P1840, vivify_851
    $P1840 = root_new ['parrot';'ResizablePMCArray']
  vivify_851:
    set $P105, $P1840[$I100]
    unless_null $P105, vivify_852
    new $P105, "Undef"
  vivify_852:
    set $P1832, $P105
.annotate 'line', 1343
    set $P104, param_1829
    nqp_decontainerize $P105, $P104
    set $P1841, param_1830
    unless_null $P1841, vivify_853
    $P1841 = root_new ['parrot';'ResizablePMCArray']
  vivify_853:
    $P106 = $P105."process_args"($P1841)
    set $P1833, $P106
.annotate 'line', 1344
    set $P104, $P1833
    unless_null $P104, vivify_854
    new $P104, "Undef"
  vivify_854:
    $P105 = $P104."options"()
    set $P1834, $P105
.annotate 'line', 1345
    set $P104, $P1833
    unless_null $P104, vivify_855
    new $P104, "Undef"
  vivify_855:
    $P105 = $P104."arguments"()
    set $P1836, $P105
.annotate 'line', 1347
    set $P1842, param_1831
    unless_null $P1842, vivify_856
    $P1842 = root_new ['parrot';'Hash']
  vivify_856:
    set $P1843, $P1834
    unless_null $P1843, vivify_857
    $P1843 = root_new ['parrot';'Hash']
  vivify_857:
    $P1842."update"($P1843)
.annotate 'line', 1348
    set $P1846, param_1831
    unless_null $P1846, vivify_858
    $P1846 = root_new ['parrot';'Hash']
  vivify_858:
    set $P105, $P1846["help"]
    unless_null $P105, vivify_859
    new $P105, "Undef"
  vivify_859:
    unless $P105, unless_1845
    set $P104, $P105
    goto unless_1845_end
  unless_1845:
    set $P1847, param_1831
    unless_null $P1847, vivify_860
    $P1847 = root_new ['parrot';'Hash']
  vivify_860:
    set $P106, $P1847["h"]
    unless_null $P106, vivify_861
    new $P106, "Undef"
  vivify_861:
    set $P104, $P106
  unless_1845_end:
    unless $P104, if_1844_end
    set $P107, param_1829
    nqp_decontainerize $P108, $P107
    set $P109, $P1832
    unless_null $P109, vivify_862
    new $P109, "Undef"
  vivify_862:
    $P108."usage"($P109)
  if_1844_end:
.annotate 'line', 1350
    load_bytecode "dumper.pbc"
.annotate 'line', 1351
    load_bytecode "PGE/Dumper.pbc"
.annotate 'line', 1353
    set $P104, param_1829
    nqp_decontainerize $P105, $P104
    set $P1848, $P1836
    unless_null $P1848, vivify_863
    $P1848 = root_new ['parrot';'ResizablePMCArray']
  vivify_863:
    set $P1849, param_1831
    unless_null $P1849, vivify_864
    $P1849 = root_new ['parrot';'Hash']
  vivify_864:
    $P106 = $P105."command_eval"($P1848 :flat, $P1849 :flat)
.annotate 'line', 1329
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "command_eval" :anon :subid("203_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1851
    .param pmc param_1852 :slurpy
    .param pmc param_1853 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1357
    .const 'Sub' $P1943 = "209_1329260312.462" 
    capture_lex $P1943
    .const 'Sub' $P1869 = "204_1329260312.462" 
    capture_lex $P1869
    .lex "self", param_1851
    .lex "@a", param_1852
    .lex "%adverbs", param_1853
.annotate 'line', 1362
    new $P102, "Undef"
    set $P1854, $P102
    .lex "$result", $P1854
.annotate 'line', 1363
    new $P103, "Undef"
    set $P1855, $P103
    .lex "$error", $P1855
.annotate 'line', 1364
    new $P104, "Undef"
    set $P1856, $P104
    .lex "$has_error", $P1856
.annotate 'line', 1365
    new $P105, "Undef"
    set $P1857, $P105
    .lex "$target", $P1857
.annotate 'line', 1358
    set $P1860, param_1853
    unless_null $P1860, vivify_865
    $P1860 = root_new ['parrot';'Hash']
  vivify_865:
    set $P107, $P1860["version"]
    unless_null $P107, vivify_866
    new $P107, "Undef"
  vivify_866:
    unless $P107, unless_1859
    set $P106, $P107
    goto unless_1859_end
  unless_1859:
    set $P1861, param_1853
    unless_null $P1861, vivify_867
    $P1861 = root_new ['parrot';'Hash']
  vivify_867:
    set $P108, $P1861["v"]
    unless_null $P108, vivify_868
    new $P108, "Undef"
  vivify_868:
    set $P106, $P108
  unless_1859_end:
    unless $P106, if_1858_end
    set $P109, param_1851
    nqp_decontainerize $P110, $P109
    $P110."version"()
  if_1858_end:
.annotate 'line', 1359
    set $P1863, param_1853
    unless_null $P1863, vivify_869
    $P1863 = root_new ['parrot';'Hash']
  vivify_869:
    set $P106, $P1863["show-config"]
    unless_null $P106, vivify_870
    new $P106, "Undef"
  vivify_870:
    unless $P106, if_1862_end
    set $P107, param_1851
    nqp_decontainerize $P108, $P107
    $P108."show-config"()
  if_1862_end:
.annotate 'line', 1360
    set $P1865, param_1853
    unless_null $P1865, vivify_871
    $P1865 = root_new ['parrot';'Hash']
  vivify_871:
    set $P106, $P1865["nqpevent"]
    unless_null $P106, vivify_872
    new $P106, "Undef"
  vivify_872:
    unless $P106, if_1864_end
    set $P107, param_1851
    nqp_decontainerize $P108, $P107
    set $P1866, param_1853
    unless_null $P1866, vivify_873
    $P1866 = root_new ['parrot';'Hash']
  vivify_873:
    set $P109, $P1866["nqpevent"]
    unless_null $P109, vivify_874
    new $P109, "Undef"
  vivify_874:
    $P108."nqpevent"($P109)
  if_1864_end:
.annotate 'line', 1357
    set $P106, $P1854
    unless_null $P106, vivify_875
    new $P106, "Undef"
  vivify_875:
    set $P106, $P1855
    unless_null $P106, vivify_876
    new $P106, "Undef"
  vivify_876:
.annotate 'line', 1364
    new $P106, "Float"
    assign $P106, 0
    set $P1856, $P106
.annotate 'line', 1365
    set $P1867, param_1853
    unless_null $P1867, vivify_877
    $P1867 = root_new ['parrot';'Hash']
  vivify_877:
    set $P106, $P1867["target"]
    unless_null $P106, vivify_878
    new $P106, "Undef"
  vivify_878:
    set $S100, $P106
    downcase $S101, $S100
    new $P107, 'String'
    set $P107, $S101
    set $P1857, $P107
.annotate 'line', 1366
    .const 'Sub' $P1869 = "204_1329260312.462" 
    capture_lex $P1869
    $P1869()
.annotate 'line', 1401
    set $P106, $P1856
    unless_null $P106, vivify_916
    new $P106, "Undef"
  vivify_916:
    unless $P106, if_1938_end
.annotate 'line', 1402
    set $P1941, param_1853
    unless_null $P1941, vivify_917
    $P1941 = root_new ['parrot';'Hash']
  vivify_917:
    set $P108, $P1941["ll-exception"]
    unless_null $P108, vivify_918
    new $P108, "Undef"
  vivify_918:
    unless $P108, unless_1940
    set $P107, $P108
    goto unless_1940_end
  unless_1940:
    set $P109, param_1851
    nqp_decontainerize $P110, $P109
    can $I100, $P110, "handle-exception"
    new $P111, 'Integer'
    set $P111, $I100
    isfalse $I101, $P111
    new $P107, 'Integer'
    set $P107, $I101
  unless_1940_end:
    if $P107, if_1939
.annotate 'line', 1409
    set $P113, param_1851
    nqp_decontainerize $P114, $P113
    set $P115, $P1855
    unless_null $P115, vivify_919
    new $P115, "Undef"
  vivify_919:
    $P114."handle-exception"($P115)
.annotate 'line', 1408
    goto if_1939_end
  if_1939:
.annotate 'line', 1402
    .const 'Sub' $P1943 = "209_1329260312.462" 
    capture_lex $P1943
    $P1943()
  if_1939_end:
  if_1938_end:
.annotate 'line', 1357
    set $P106, $P1854
    unless_null $P106, vivify_925
    new $P106, "Undef"
  vivify_925:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1868"  :anon :subid("204_1329260312.462") :outer("203_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1366
    .const 'Sub' $P1929 = "208_1329260312.462" 
    capture_lex $P1929
    .const 'Sub' $P1907 = "207_1329260312.462" 
    capture_lex $P1907
    .const 'Sub' $P1894 = "206_1329260312.462" 
    capture_lex $P1894
    .const 'Sub' $P1873 = "205_1329260312.462" 
    capture_lex $P1873
    new $P1903, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P1903, control_1902
    push_eh $P1903
    new $P1925, 'ExceptionHandler'
    set_label $P1925, control_1924
    $P1925."handle_types_except"(.CONTROL_ALL)
    push_eh $P1925
.annotate 'line', 1367
    find_lex $P1871, "%adverbs"
    unless_null $P1871, vivify_879
    $P1871 = root_new ['parrot';'Hash']
  vivify_879:
    set $P106, $P1871["e"]
    unless_null $P106, vivify_880
    new $P106, "Undef"
  vivify_880:
    defined $I100, $P106
    if $I100, if_1870
.annotate 'line', 1374
    find_lex $P1882, "@a"
    unless_null $P1882, vivify_881
    $P1882 = root_new ['parrot';'ResizablePMCArray']
  vivify_881:
    isfalse $I101, $P1882
    if $I101, if_1881
.annotate 'line', 1375
    find_lex $P1885, "%adverbs"
    unless_null $P1885, vivify_882
    $P1885 = root_new ['parrot';'Hash']
  vivify_882:
    set $P109, $P1885["combine"]
    unless_null $P109, vivify_883
    new $P109, "Undef"
  vivify_883:
    if $P109, if_1884
.annotate 'line', 1376
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    new $P112, "Float"
    assign $P112, 0
    set $I102, $P112
    find_lex $P1888, "@a"
    unless_null $P1888, vivify_884
    $P1888 = root_new ['parrot';'ResizablePMCArray']
  vivify_884:
    set $P113, $P1888[$I102]
    unless_null $P113, vivify_885
    new $P113, "Undef"
  vivify_885:
    find_lex $P1889, "@a"
    unless_null $P1889, vivify_886
    $P1889 = root_new ['parrot';'ResizablePMCArray']
  vivify_886:
    find_lex $P1890, "%adverbs"
    unless_null $P1890, vivify_887
    $P1890 = root_new ['parrot';'Hash']
  vivify_887:
    $P114 = $P111."evalfiles"($P113, $P1889 :flat, $P1890 :flat)
    store_lex "$result", $P114
    goto if_1884_end
  if_1884:
.annotate 'line', 1375
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P1886, "@a"
    unless_null $P1886, vivify_888
    $P1886 = root_new ['parrot';'ResizablePMCArray']
  vivify_888:
    find_lex $P1887, "%adverbs"
    unless_null $P1887, vivify_889
    $P1887 = root_new ['parrot';'Hash']
  vivify_889:
    $P112 = $P111."evalfiles"($P1886, $P1887 :flat)
    store_lex "$result", $P112
  if_1884_end:
    goto if_1881_end
  if_1881:
.annotate 'line', 1374
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P1883, "%adverbs"
    unless_null $P1883, vivify_890
    $P1883 = root_new ['parrot';'Hash']
  vivify_890:
    $P111 = $P110."interactive"($P1883 :flat)
    store_lex "$result", $P111
  if_1881_end:
    goto if_1870_end
  if_1870:
.annotate 'line', 1367
    .const 'Sub' $P1873 = "205_1329260312.462" 
    capture_lex $P1873
    $P1873()
  if_1870_end:
.annotate 'line', 1378
    find_lex $P107, "$result"
    unless_null $P107, vivify_900
    new $P107, "Undef"
  vivify_900:
    isnull $I100, $P107
    new $P108, 'Integer'
    set $P108, $I100
    isfalse $I101, $P108
    if $I101, if_1892
    new $P106, 'Integer'
    set $P106, $I101
    goto if_1892_end
  if_1892:
    find_lex $P109, "$target"
    unless_null $P109, vivify_901
    new $P109, "Undef"
  vivify_901:
    set $S100, $P109
    iseq $I102, $S100, "pir"
    new $P106, 'Integer'
    set $P106, $I102
  if_1892_end:
    unless $P106, if_1891_end
    .const 'Sub' $P1894 = "206_1329260312.462" 
    capture_lex $P1894
    $P1894()
  if_1891_end:
.annotate 'line', 1366
    pop_eh 
    pop_eh 
    goto skip_handler_1901
  control_1902:
    peek_exception $P1904
.annotate 'line', 1391
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1907 = "207_1329260312.462" 
    newclosure $P1921, $P1907
    $P1921(exception)
    new $P1922, 'Integer'
    set $P1922, 1
    set exception["handled"], $P1922
    set $I1923, exception["handled"]
    eq $I1923, 1, handled_1905
    rethrow exception
  handled_1905:
    finalize $P1904
    .return (exception)
  control_1924:
    peek_exception $P1926
.annotate 'line', 1387
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1929 = "208_1329260312.462" 
    newclosure $P1935, $P1929
    $P1935(exception)
    new $P1936, 'Integer'
    set $P1936, 1
    set exception["handled"], $P1936
    set $I1937, exception["handled"]
    eq $I1937, 1, handled_1927
    rethrow exception
  handled_1927:
    finalize $P1926
    .return (exception)
  skip_handler_1901:
.annotate 'line', 1366
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1872"  :anon :subid("205_1329260312.462") :outer("204_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1368
    new $P107, "Undef"
    set $P1874, $P107
    .lex "$?FILES", $P1874
    new $P108, "String"
    assign $P108, "-e"
    set $P1874, $P108
.annotate 'line', 1369
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P1875, "%adverbs"
    unless_null $P1875, vivify_891
    $P1875 = root_new ['parrot';'Hash']
  vivify_891:
    set $P110, $P1875["e"]
    unless_null $P110, vivify_892
    new $P110, "Undef"
  vivify_892:
    find_lex $P1876, "@a"
    unless_null $P1876, vivify_893
    $P1876 = root_new ['parrot';'ResizablePMCArray']
  vivify_893:
    find_lex $P1877, "%adverbs"
    unless_null $P1877, vivify_894
    $P1877 = root_new ['parrot';'Hash']
  vivify_894:
    $P111 = $P109."eval"($P110, "-e", $P1876 :flat, $P1877 :flat)
    store_lex "$result", $P111
.annotate 'line', 1370
    find_lex $P110, "$target"
    unless_null $P110, vivify_895
    new $P110, "Undef"
  vivify_895:
    set $S100, $P110
    iseq $I101, $S100, ""
    unless $I101, unless_1879
    new $P109, 'Integer'
    set $P109, $I101
    goto unless_1879_end
  unless_1879:
    find_lex $P111, "$target"
    unless_null $P111, vivify_896
    new $P111, "Undef"
  vivify_896:
    set $S101, $P111
    iseq $I102, $S101, "pir"
    new $P109, 'Integer'
    set $P109, $I102
  unless_1879_end:
    unless $P109, unless_1878
    set $P108, $P109
    goto unless_1878_end
  unless_1878:
.annotate 'line', 1371
    find_lex $P112, "self"
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$result"
    unless_null $P114, vivify_897
    new $P114, "Undef"
  vivify_897:
    find_lex $P115, "$target"
    unless_null $P115, vivify_898
    new $P115, "Undef"
  vivify_898:
    find_lex $P1880, "%adverbs"
    unless_null $P1880, vivify_899
    $P1880 = root_new ['parrot';'Hash']
  vivify_899:
    $P116 = $P113."dumper"($P114, $P115, $P1880 :flat)
.annotate 'line', 1370
    set $P108, $P116
  unless_1878_end:
.annotate 'line', 1367
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1893"  :anon :subid("206_1329260312.462") :outer("204_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1379
    new $P110, "Undef"
    set $P1895, $P110
    .lex "$output", $P1895
.annotate 'line', 1380
    new $P111, "Undef"
    set $P1896, $P111
    .lex "$fh", $P1896
.annotate 'line', 1379
    find_lex $P1897, "%adverbs"
    unless_null $P1897, vivify_902
    $P1897 = root_new ['parrot';'Hash']
  vivify_902:
    set $P112, $P1897["output"]
    unless_null $P112, vivify_903
    new $P112, "Undef"
  vivify_903:
    set $P1895, $P112
.annotate 'line', 1380
    set $P114, $P1895
    unless_null $P114, vivify_904
    new $P114, "Undef"
  vivify_904:
    set $S101, $P114
    iseq $I103, $S101, ""
    unless $I103, unless_1899
    new $P113, 'Integer'
    set $P113, $I103
    goto unless_1899_end
  unless_1899:
    set $P115, $P1895
    unless_null $P115, vivify_905
    new $P115, "Undef"
  vivify_905:
    set $S102, $P115
    iseq $I104, $S102, "-"
    new $P113, 'Integer'
    set $P113, $I104
  unless_1899_end:
    if $P113, if_1898
.annotate 'line', 1382
    new $P118, "FileHandle"
    set $P119, $P1895
    unless_null $P119, vivify_906
    new $P119, "Undef"
  vivify_906:
    $P120 = $P118."open"($P119, "w")
    set $P112, $P120
.annotate 'line', 1380
    goto if_1898_end
  if_1898:
.annotate 'line', 1381
    getinterp $P116
    $P117 = $P116."stdout_handle"()
    set $P112, $P117
  if_1898_end:
    set $P1896, $P112
.annotate 'line', 1383
    set $P112, $P1896
    unless_null $P112, vivify_907
    new $P112, "Undef"
  vivify_907:
    if $P112, unless_1900_end
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    new $P115, 'String'
    set $P115, "Cannot write to "
    set $P116, $P1895
    unless_null $P116, vivify_908
    new $P116, "Undef"
  vivify_908:
    concat $P117, $P115, $P116
    $P114."panic"($P117)
  unless_1900_end:
.annotate 'line', 1384
    set $P112, $P1896
    unless_null $P112, vivify_909
    new $P112, "Undef"
  vivify_909:
    find_lex $P113, "$result"
    unless_null $P113, vivify_910
    new $P113, "Undef"
  vivify_910:
    print $P112, $P113
.annotate 'line', 1385
    set $P112, $P1896
    unless_null $P112, vivify_911
    new $P112, "Undef"
  vivify_911:
    $P113 = $P112."close"()
.annotate 'line', 1378
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1906"  :anon :subid("207_1329260312.462") :outer("204_1329260312.462")
    .param pmc param_1908
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1391
    .lex "$_", param_1908
    find_lex $P1909, "$_"
    set $P1910, $P1909
    .lex "$!", $P1910
.annotate 'line', 1392
    find_lex $P1912, "self"
    nqp_decontainerize $P1913, $P1912
    can $I1914, $P1913, "handle-control"
    if $I1914, if_1911
.annotate 'line', 1395
    find_lex $P1918, "$_"
    unless_null $P1918, vivify_912
    new $P1918, "Undef"
  vivify_912:
    rethrow $P1918
.annotate 'line', 1394
    goto if_1911_end
  if_1911:
.annotate 'line', 1393
    find_lex $P1915, "self"
    nqp_decontainerize $P1916, $P1915
    find_lex $P1917, "$_"
    unless_null $P1917, vivify_913
    new $P1917, "Undef"
  vivify_913:
    $P1916."handle-control"($P1917)
  if_1911_end:
.annotate 'line', 1397
    new $P1919, "Float"
    assign $P1919, 1
    store_lex "$has_error", $P1919
.annotate 'line', 1398
    find_lex $P1920, "$_"
    unless_null $P1920, vivify_914
    new $P1920, "Undef"
  vivify_914:
    store_lex "$error", $P1920
.annotate 'line', 1391
    .return ($P1920)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1928"  :anon :subid("208_1329260312.462") :outer("204_1329260312.462")
    .param pmc param_1930
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1387
    .lex "$_", param_1930
    find_lex $P1931, "$_"
    set $P1932, $P1931
    .lex "$!", $P1932
.annotate 'line', 1388
    new $P1933, "Float"
    assign $P1933, 1
    store_lex "$has_error", $P1933
.annotate 'line', 1389
    find_lex $P1934, "$_"
    unless_null $P1934, vivify_915
    new $P1934, "Undef"
  vivify_915:
    store_lex "$error", $P1934
.annotate 'line', 1387
    .return ($P1934)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1942"  :anon :subid("209_1329260312.462") :outer("203_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1403
    new $P112, "Undef"
    set $P1944, $P112
    .lex "$err", $P1944
    getstderr $P113
    set $P1944, $P113
.annotate 'line', 1404
    set $P113, $P1944
    unless_null $P113, vivify_920
    new $P113, "Undef"
  vivify_920:
    find_lex $P114, "$error"
    unless_null $P114, vivify_921
    new $P114, "Undef"
  vivify_921:
    $P113."print"($P114)
.annotate 'line', 1405
    set $P113, $P1944
    unless_null $P113, vivify_922
    new $P113, "Undef"
  vivify_922:
    $P113."print"("\n")
.annotate 'line', 1406
    set $P113, $P1944
    unless_null $P113, vivify_923
    new $P113, "Undef"
  vivify_923:
    find_lex $P114, "$error"
    unless_null $P114, vivify_924
    new $P114, "Undef"
  vivify_924:
    $P115 = $P114."backtrace_strings"()
    join $S100, "\n", $P115
    $P113."print"($S100)
.annotate 'line', 1407
    new $P113, "Float"
    assign $P113, 1
    set $I102, $P113
    exit $I102
.annotate 'line', 1402
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args" :anon :subid("210_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1946
    .param pmc param_1947
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1415
    .const 'Sub' $P1953 = "211_1329260312.462" 
    capture_lex $P1953
    .lex "self", param_1946
    .lex "@args", param_1947
.annotate 'line', 1419
    new $P102, "Undef"
    set $P1948, $P102
    .lex "$p", $P1948
.annotate 'line', 1422
    new $P103, "Undef"
    set $P1949, $P103
    .lex "$res", $P1949
.annotate 'line', 1417
    set $P104, param_1946
    nqp_decontainerize $P105, $P104
    set $P1950, param_1947
    unless_null $P1950, vivify_926
    $P1950 = root_new ['parrot';'ResizablePMCArray']
  vivify_926:
    $P106 = $P1950."shift"()
    $P105."compiler_progname"($P106)
.annotate 'line', 1419
    get_hll_global $P104, "GLOBAL"
    nqp_get_package_through_who $P105, $P104, "HLL"
    nqp_get_package_through_who $P106, $P105, "CommandLine"
    get_who $P107, $P106
    set $P108, $P107["Parser"]
    set $P109, param_1946
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1951, $P110, $P111, "@!cmdoptions", 3
    unless_null $P1951, vivify_927
    $P1951 = root_new ['parrot';'ResizablePMCArray']
  vivify_927:
    $P112 = $P108."new"($P1951)
    set $P1948, $P112
.annotate 'line', 1420
    set $P104, $P1948
    unless_null $P104, vivify_928
    new $P104, "Undef"
  vivify_928:
    $P104."add-stopper"("-e")
.annotate 'line', 1421
    set $P104, $P1948
    unless_null $P104, vivify_929
    new $P104, "Undef"
  vivify_929:
    $P104."stop-after-first-arg"()
.annotate 'line', 1415
    set $P104, $P1949
    unless_null $P104, vivify_930
    new $P104, "Undef"
  vivify_930:
.annotate 'line', 1423
    .const 'Sub' $P1953 = "211_1329260312.462" 
    capture_lex $P1953
    $P1953()
.annotate 'line', 1415
    set $P104, $P1949
    unless_null $P104, vivify_934
    new $P104, "Undef"
  vivify_934:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1952"  :anon :subid("211_1329260312.462") :outer("210_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1423
    .const 'Sub' $P1961 = "212_1329260312.462" 
    capture_lex $P1961
    new $P1957, 'ExceptionHandler'
    set_label $P1957, control_1956
    $P1957."handle_types_except"(.CONTROL_ALL)
    push_eh $P1957
.annotate 'line', 1424
    find_lex $P104, "$p"
    unless_null $P104, vivify_931
    new $P104, "Undef"
  vivify_931:
    find_lex $P1954, "@args"
    unless_null $P1954, vivify_932
    $P1954 = root_new ['parrot';'ResizablePMCArray']
  vivify_932:
    $P105 = $P104."parse"($P1954)
    store_lex "$res", $P105
.annotate 'line', 1423
    pop_eh 
    goto skip_handler_1955
  control_1956:
    peek_exception $P1958
.annotate 'line', 1425
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1961 = "212_1329260312.462" 
    newclosure $P1970, $P1961
    $P1970(exception)
    new $P1971, 'Integer'
    set $P1971, 1
    set exception["handled"], $P1971
    set $I1972, exception["handled"]
    eq $I1972, 1, handled_1959
    rethrow exception
  handled_1959:
    finalize $P1958
    .return (exception)
  skip_handler_1955:
.annotate 'line', 1423
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1960"  :anon :subid("212_1329260312.462") :outer("211_1329260312.462")
    .param pmc param_1962
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1425
    .lex "$_", param_1962
    find_lex $P1963, "$_"
    set $P1964, $P1963
    .lex "$!", $P1964
.annotate 'line', 1426
    find_lex $P1965, "$_"
    unless_null $P1965, vivify_933
    new $P1965, "Undef"
  vivify_933:
    say $P1965
.annotate 'line', 1427
    find_lex $P1966, "self"
    nqp_decontainerize $P1967, $P1966
    $P1967."usage"()
.annotate 'line', 1428
    new $P1968, "Float"
    assign $P1968, 1
    set $I1969, $P1968
    exit $I1969
.annotate 'line', 1425
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles" :anon :subid("213_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_1976
    .param pmc param_1977
    .param pmc param_1978 :slurpy
    .param pmc param_1979 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1434
    .const 'Sub' $P1995 = "214_1329260312.462" 
    capture_lex $P1995
    new $P1975, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1975, control_1974
    push_eh $P1975
    .lex "self", param_1976
    .lex "$files", param_1977
    .lex "@args", param_1978
    .lex "%adverbs", param_1979
.annotate 'line', 1435
    new $P102, "Undef"
    set $P1980, $P102
    .lex "$target", $P1980
.annotate 'line', 1436
    new $P103, "Undef"
    set $P1981, $P103
    .lex "$encoding", $P1981
.annotate 'line', 1437
    $P1983 = root_new ['parrot';'ResizablePMCArray']
    set $P1982, $P1983
    .lex "@files", $P1982
.annotate 'line', 1438
    $P1985 = root_new ['parrot';'ResizablePMCArray']
    set $P1984, $P1985
    .lex "@codes", $P1984
.annotate 'line', 1455
    new $P104, "Undef"
    set $P1986, $P104
    .lex "$code", $P1986
.annotate 'line', 1456
    new $P105, "Undef"
    set $P1987, $P105
    .lex "$?FILES", $P1987
.annotate 'line', 1457
    new $P106, "Undef"
    set $P1988, $P106
    .lex "$r", $P1988
.annotate 'line', 1435
    set $P1989, param_1979
    unless_null $P1989, vivify_935
    $P1989 = root_new ['parrot';'Hash']
  vivify_935:
    set $P107, $P1989["target"]
    unless_null $P107, vivify_936
    new $P107, "Undef"
  vivify_936:
    set $S100, $P107
    downcase $S101, $S100
    new $P108, 'String'
    set $P108, $S101
    set $P1980, $P108
.annotate 'line', 1436
    set $P1990, param_1979
    unless_null $P1990, vivify_937
    $P1990 = root_new ['parrot';'Hash']
  vivify_937:
    set $P107, $P1990["encoding"]
    unless_null $P107, vivify_938
    new $P107, "Undef"
  vivify_938:
    set $P1981, $P107
.annotate 'line', 1437
    set $P108, param_1977
    unless_null $P108, vivify_939
    new $P108, "Undef"
  vivify_939:
    does $I100, $P108, "array"
    if $I100, if_1991
    set $P110, param_1977
    unless_null $P110, vivify_940
    new $P110, "Undef"
  vivify_940:
    new $P111, "ResizablePMCArray"
    push $P111, $P110
    set $P107, $P111
    goto if_1991_end
  if_1991:
    set $P109, param_1977
    unless_null $P109, vivify_941
    new $P109, "Undef"
  vivify_941:
    set $P107, $P109
  if_1991_end:
    set $P1982, $P107
.annotate 'line', 1434
    set $P1992, $P1984
    unless_null $P1992, vivify_942
    $P1992 = root_new ['parrot';'ResizablePMCArray']
  vivify_942:
.annotate 'line', 1439
    set $P1993, $P1982
    unless_null $P1993, vivify_943
    $P1993 = root_new ['parrot';'ResizablePMCArray']
  vivify_943:
    defined $I100, $P1993
    unless $I100, for_undef_944
    iter $P107, $P1993
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop2019_handler
    push_eh $P112
  loop2019_test:
    unless $P107, loop2019_done
    shift $P108, $P107
  loop2019_redo:
    .const 'Sub' $P1995 = "214_1329260312.462" 
    capture_lex $P1995
    $P1995($P108)
  loop2019_next:
    goto loop2019_test
  loop2019_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop2019_next
    eq $P113, .CONTROL_LOOP_REDO, loop2019_redo
  loop2019_done:
    pop_eh 
  for_undef_944:
.annotate 'line', 1455
    set $P2020, $P1984
    unless_null $P2020, vivify_954
    $P2020 = root_new ['parrot';'ResizablePMCArray']
  vivify_954:
    join $S100, "", $P2020
    new $P107, 'String'
    set $P107, $S100
    set $P1986, $P107
.annotate 'line', 1456
    set $P2021, $P1982
    unless_null $P2021, vivify_955
    $P2021 = root_new ['parrot';'ResizablePMCArray']
  vivify_955:
    join $S100, " ", $P2021
    new $P107, 'String'
    set $P107, $S100
    set $P1987, $P107
.annotate 'line', 1457
    set $P107, param_1976
    nqp_decontainerize $P108, $P107
    set $P109, $P1986
    unless_null $P109, vivify_956
    new $P109, "Undef"
  vivify_956:
    set $P2022, param_1978
    unless_null $P2022, vivify_957
    $P2022 = root_new ['parrot';'ResizablePMCArray']
  vivify_957:
    set $P2023, param_1979
    unless_null $P2023, vivify_958
    $P2023 = root_new ['parrot';'Hash']
  vivify_958:
    $P110 = $P108."eval"($P109, $P2022 :flat, $P2023 :flat)
    set $P1988, $P110
.annotate 'line', 1458
    set $P109, $P1980
    unless_null $P109, vivify_959
    new $P109, "Undef"
  vivify_959:
    set $S100, $P109
    iseq $I100, $S100, ""
    unless $I100, unless_2025
    new $P108, 'Integer'
    set $P108, $I100
    goto unless_2025_end
  unless_2025:
    set $P110, $P1980
    unless_null $P110, vivify_960
    new $P110, "Undef"
  vivify_960:
    set $S101, $P110
    iseq $I101, $S101, "pir"
    new $P108, 'Integer'
    set $P108, $I101
  unless_2025_end:
    if $P108, if_2024
.annotate 'line', 1461
    new $P111, "Exception"
    set $P111['type'], .CONTROL_RETURN
    set $P112, param_1976
    nqp_decontainerize $P113, $P112
    set $P114, $P1988
    unless_null $P114, vivify_961
    new $P114, "Undef"
  vivify_961:
    set $P115, $P1980
    unless_null $P115, vivify_962
    new $P115, "Undef"
  vivify_962:
    set $P2026, param_1979
    unless_null $P2026, vivify_963
    $P2026 = root_new ['parrot';'Hash']
  vivify_963:
    $P116 = $P113."dumper"($P114, $P115, $P2026 :flat)
    setattribute $P111, 'payload', $P116
    throw $P111
.annotate 'line', 1460
    goto if_2024_end
  if_2024:
.annotate 'line', 1459
    new $P111, "Exception"
    set $P111['type'], .CONTROL_RETURN
    set $P112, $P1988
    unless_null $P112, vivify_964
    new $P112, "Undef"
  vivify_964:
    setattribute $P111, 'payload', $P112
    throw $P111
  if_2024_end:
.annotate 'line', 1434
    .return ($P107)
  control_1974:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1994"  :anon :subid("214_1329260312.462") :outer("213_1329260312.462")
    .param pmc param_1998
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1439
    .const 'Sub' $P2000 = "215_1329260312.462" 
    capture_lex $P2000
.annotate 'line', 1440
    new $P109, "Undef"
    set $P1996, $P109
    .lex "$in-handle", $P1996
.annotate 'line', 1441
    new $P110, "Undef"
    set $P1997, $P110
    .lex "$err", $P1997
    .lex "$_", param_1998
.annotate 'line', 1440
    new $P111, "FileHandle"
    set $P1996, $P111
.annotate 'line', 1441
    new $P111, "Float"
    assign $P111, 0
    set $P1997, $P111
.annotate 'line', 1442
    .const 'Sub' $P2000 = "215_1329260312.462" 
    capture_lex $P2000
    $P2000()
.annotate 'line', 1453
    set $P112, $P1997
    unless_null $P112, vivify_952
    new $P112, "Undef"
  vivify_952:
    if $P112, if_2018
    set $P111, $P112
    goto if_2018_end
  if_2018:
    set $P113, $P1997
    unless_null $P113, vivify_953
    new $P113, "Undef"
  vivify_953:
    die $P113
  if_2018_end:
.annotate 'line', 1439
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1999"  :anon :subid("215_1329260312.462") :outer("214_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1442
    .const 'Sub' $P2008 = "216_1329260312.462" 
    capture_lex $P2008
    new $P2004, 'ExceptionHandler'
    set_label $P2004, control_2003
    $P2004."handle_types_except"(.CONTROL_ALL)
    push_eh $P2004
.annotate 'line', 1446
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_945
    new $P111, "Undef"
  vivify_945:
    find_lex $P112, "$encoding"
    unless_null $P112, vivify_946
    new $P112, "Undef"
  vivify_946:
    $P111."encoding"($P112)
.annotate 'line', 1447
    find_lex $P2001, "@codes"
    unless_null $P2001, vivify_947
    $P2001 = root_new ['parrot';'ResizablePMCArray']
  vivify_947:
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_948
    new $P111, "Undef"
  vivify_948:
    find_lex $P112, "$_"
    unless_null $P112, vivify_949
    new $P112, "Undef"
  vivify_949:
    $P113 = $P111."readall"($P112)
    push $P2001, $P113
.annotate 'line', 1448
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_950
    new $P111, "Undef"
  vivify_950:
    $P111."close"()
.annotate 'line', 1442
    pop_eh 
    goto skip_handler_2002
  control_2003:
    peek_exception $P2005
.annotate 'line', 1449
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2008 = "216_1329260312.462" 
    newclosure $P2015, $P2008
    $P2015(exception)
    new $P2016, 'Integer'
    set $P2016, 1
    set exception["handled"], $P2016
    set $I2017, exception["handled"]
    eq $I2017, 1, handled_2006
    rethrow exception
  handled_2006:
    finalize $P2005
    .return (exception)
  skip_handler_2002:
.annotate 'line', 1442
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2007"  :anon :subid("216_1329260312.462") :outer("215_1329260312.462")
    .param pmc param_2009
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1449
    .lex "$_", param_2009
    find_lex $P2010, "$_"
    set $P2011, $P2010
    .lex "$!", $P2011
.annotate 'line', 1450
    new $P2012, 'String'
    set $P2012, "Error while reading from file: "
    find_lex $P2013, "$_"
    unless_null $P2013, vivify_951
    new $P2013, "Undef"
  vivify_951:
    concat $P2014, $P2012, $P2013
    store_lex "$err", $P2014
.annotate 'line', 1449
    .return ($P2014)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile" :anon :subid("217_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2030
    .param pmc param_2031
    .param pmc param_2032 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1465
    .const 'Sub' $P2041 = "218_1329260312.462" 
    capture_lex $P2041
    new $P2029, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2029, control_2028
    push_eh $P2029
    .lex "self", param_2030
    .lex "$source", param_2031
    .lex "%adverbs", param_2032
.annotate 'line', 1466
    $P2034 = root_new ['parrot';'Hash']
    set $P2033, $P2034
    .lex "%*COMPILING", $P2033
.annotate 'line', 1468
    new $P102, "Undef"
    set $P2035, $P102
    .lex "$target", $P2035
.annotate 'line', 1469
    new $P103, "Undef"
    set $P2036, $P103
    .lex "$result", $P2036
.annotate 'line', 1470
    new $P104, "Undef"
    set $P2037, $P104
    .lex "$stderr", $P2037
.annotate 'line', 1466
    set $P2038, param_2032
    unless_null $P2038, vivify_965
    $P2038 = root_new ['parrot';'Hash']
  vivify_965:
    set $P107, $P2033
    unless_null $P107, vivify_966
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%COMPILING"]
    unless_null $P107, vivify_967
    die "Contextual %*COMPILING not found"
  vivify_967:
    set $P2033, $P107
  vivify_966:
    set $P107["%?OPTIONS"], $P2038
.annotate 'line', 1468
    set $P2039, param_2032
    unless_null $P2039, vivify_968
    $P2039 = root_new ['parrot';'Hash']
  vivify_968:
    set $P105, $P2039["target"]
    unless_null $P105, vivify_969
    new $P105, "Undef"
  vivify_969:
    set $S100, $P105
    downcase $S101, $S100
    new $P106, 'String'
    set $P106, $S101
    set $P2035, $P106
.annotate 'line', 1469
    set $P105, param_2031
    unless_null $P105, vivify_970
    new $P105, "Undef"
  vivify_970:
    set $P2036, $P105
.annotate 'line', 1470
    getinterp $P105
    $P106 = $P105."stderr_handle"()
    set $P2037, $P106
.annotate 'line', 1471
    set $P106, param_2030
    nqp_decontainerize $P107, $P106
    $P108 = $P107."stages"()
    defined $I100, $P108
    unless $I100, for_undef_971
    iter $P105, $P108
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop2052_handler
    push_eh $P113
  loop2052_test:
    unless $P105, loop2052_done
    shift $P109, $P105
  loop2052_redo:
    .const 'Sub' $P2041 = "218_1329260312.462" 
    capture_lex $P2041
    $P2041($P109)
  loop2052_next:
    goto loop2052_test
  loop2052_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop2052_next
    eq $P114, .CONTROL_LOOP_REDO, loop2052_redo
  loop2052_done:
    pop_eh 
  for_undef_971:
.annotate 'line', 1481
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    set $P106, $P2036
    unless_null $P106, vivify_984
    new $P106, "Undef"
  vivify_984:
    setattribute $P105, 'payload', $P106
    throw $P105
.annotate 'line', 1465
    .return ()
  control_2028:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, "payload"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2040"  :anon :subid("218_1329260312.462") :outer("217_1329260312.462")
    .param pmc param_2044
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1471
    .const 'Sub' $P2049 = "219_1329260312.462" 
    capture_lex $P2049
.annotate 'line', 1472
    new $P110, "Undef"
    set $P2042, $P110
    .lex "$timestamp", $P2042
.annotate 'line', 1474
    new $P111, "Undef"
    set $P2043, $P111
    .lex "$diff", $P2043
    .lex "$_", param_2044
.annotate 'line', 1472
    time $N100
    new $P112, 'Float'
    set $P112, $N100
    set $P2042, $P112
.annotate 'line', 1473
    find_lex $P112, "self"
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$result"
    unless_null $P114, vivify_972
    new $P114, "Undef"
  vivify_972:
    find_lex $P2045, "%adverbs"
    unless_null $P2045, vivify_973
    $P2045 = root_new ['parrot';'Hash']
  vivify_973:
    find_lex $P115, "$_"
    unless_null $P115, vivify_974
    new $P115, "Undef"
  vivify_974:
    set $S100, $P115
    $P116 = $P113.$S100($P114, $P2045 :flat)
    store_lex "$result", $P116
.annotate 'line', 1474
    time $N100
    new $P112, 'Float'
    set $P112, $N100
    set $P113, $P2042
    unless_null $P113, vivify_975
    new $P113, "Undef"
  vivify_975:
    sub $P114, $P112, $P113
    set $P2043, $P114
.annotate 'line', 1475
    find_lex $P2047, "%adverbs"
    unless_null $P2047, vivify_976
    $P2047 = root_new ['parrot';'Hash']
  vivify_976:
    set $P112, $P2047["stagestats"]
    unless_null $P112, vivify_977
    new $P112, "Undef"
  vivify_977:
    unless $P112, if_2046_end
    .const 'Sub' $P2049 = "219_1329260312.462" 
    capture_lex $P2049
    $P2049()
  if_2046_end:
.annotate 'line', 1479
    find_lex $P113, "$_"
    unless_null $P113, vivify_982
    new $P113, "Undef"
  vivify_982:
    set $S100, $P113
    find_lex $P114, "$target"
    unless_null $P114, vivify_983
    new $P114, "Undef"
  vivify_983:
    set $S101, $P114
    iseq $I101, $S100, $S101
    if $I101, if_2051
    new $P112, 'Integer'
    set $P112, $I101
    goto if_2051_end
  if_2051:
    die 0, .CONTROL_LOOP_LAST
  if_2051_end:
.annotate 'line', 1471
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2048"  :anon :subid("219_1329260312.462") :outer("218_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1476
    new $P113, "Undef"
    set $P2050, $P113
    .lex "$difffmt", $P2050
    find_lex $P114, "$diff"
    unless_null $P114, vivify_978
    new $P114, "Undef"
  vivify_978:
    new $P115, "ResizablePMCArray"
    push $P115, $P114
    sprintf $S100, "%.3f", $P115
    new $P116, 'String'
    set $P116, $S100
    set $P2050, $P116
.annotate 'line', 1477
    find_lex $P114, "$stderr"
    unless_null $P114, vivify_979
    new $P114, "Undef"
  vivify_979:
    new $P115, 'String'
    set $P115, "Stage "
    find_lex $P116, "$_"
    unless_null $P116, vivify_980
    new $P116, "Undef"
  vivify_980:
    concat $P117, $P115, $P116
    concat $P118, $P117, ": "
    set $P119, $P2050
    unless_null $P119, vivify_981
    new $P119, "Undef"
  vivify_981:
    concat $P120, $P118, $P119
    concat $P121, $P120, "\n"
    $P122 = $P114."print"($P121)
.annotate 'line', 1475
    .return ($P122)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse" :anon :subid("220_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2056
    .param pmc param_2057
    .param pmc param_2058 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1484
    .const 'Sub' $P2067 = "221_1329260312.462" 
    capture_lex $P2067
    new $P2055, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2055, control_2054
    push_eh $P2055
    .lex "self", param_2056
    .lex "$source", param_2057
    .lex "%adverbs", param_2058
.annotate 'line', 1485
    new $P102, "Undef"
    set $P2059, $P102
    .lex "$s", $P2059
.annotate 'line', 1494
    new $P103, "Undef"
    set $P2060, $P103
    .lex "$grammar", $P2060
.annotate 'line', 1495
    new $P104, "Undef"
    set $P2061, $P104
    .lex "$actions", $P2061
.annotate 'line', 1497
    new $P105, "Undef"
    set $P2062, $P105
    .lex "$match", $P2062
.annotate 'line', 1485
    set $P106, param_2057
    unless_null $P106, vivify_985
    new $P106, "Undef"
  vivify_985:
    set $P2059, $P106
.annotate 'line', 1486
    set $P2064, param_2058
    unless_null $P2064, vivify_986
    $P2064 = root_new ['parrot';'Hash']
  vivify_986:
    set $P106, $P2064["transcode"]
    unless_null $P106, vivify_987
    new $P106, "Undef"
  vivify_987:
    unless $P106, if_2063_end
.annotate 'line', 1487
    set $P2065, param_2058
    unless_null $P2065, vivify_988
    $P2065 = root_new ['parrot';'Hash']
  vivify_988:
    set $P108, $P2065["transcode"]
    unless_null $P108, vivify_989
    new $P108, "Undef"
  vivify_989:
    set $S100, $P108
    split $P109, " ", $S100
    defined $I100, $P109
    unless $I100, for_undef_990
    iter $P107, $P109
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop2078_handler
    push_eh $P112
  loop2078_test:
    unless $P107, loop2078_done
    shift $P110, $P107
  loop2078_redo:
    .const 'Sub' $P2067 = "221_1329260312.462" 
    capture_lex $P2067
    $P2067($P110)
  loop2078_next:
    goto loop2078_test
  loop2078_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop2078_next
    eq $P113, .CONTROL_LOOP_REDO, loop2078_redo
  loop2078_done:
    pop_eh 
  for_undef_990:
  if_2063_end:
.annotate 'line', 1494
    set $P106, param_2056
    nqp_decontainerize $P107, $P106
    $P108 = $P107."parsegrammar"()
    set $P2060, $P108
.annotate 'line', 1484
    set $P106, $P2061
    unless_null $P106, vivify_993
    new $P106, "Undef"
  vivify_993:
.annotate 'line', 1496
    set $P2080, param_2058
    unless_null $P2080, vivify_994
    $P2080 = root_new ['parrot';'Hash']
  vivify_994:
    set $P106, $P2080["target"]
    unless_null $P106, vivify_995
    new $P106, "Undef"
  vivify_995:
    set $S100, $P106
    downcase $S101, $S100
    iseq $I100, $S101, "parse"
    if $I100, unless_2079_end
    set $P107, param_2056
    nqp_decontainerize $P108, $P107
    $P109 = $P108."parseactions"()
    set $P2061, $P109
  unless_2079_end:
.annotate 'line', 1497
    set $P106, $P2060
    unless_null $P106, vivify_996
    new $P106, "Undef"
  vivify_996:
    set $P107, $P2059
    unless_null $P107, vivify_997
    new $P107, "Undef"
  vivify_997:
    set $P108, $P2061
    unless_null $P108, vivify_998
    new $P108, "Undef"
  vivify_998:
    set $P2081, param_2058
    unless_null $P2081, vivify_999
    $P2081 = root_new ['parrot';'Hash']
  vivify_999:
    set $P109, $P2081["rxtrace"]
    unless_null $P109, vivify_1000
    new $P109, "Undef"
  vivify_1000:
    $P110 = $P106."parse"($P107, 0 :named("p"), $P108 :named("actions"), $P109 :named("rxtrace"))
    set $P2062, $P110
.annotate 'line', 1498
    set $P106, $P2062
    unless_null $P106, vivify_1001
    new $P106, "Undef"
  vivify_1001:
    if $P106, unless_2082_end
    set $P107, param_2056
    nqp_decontainerize $P108, $P107
    $P108."panic"("Unable to parse source")
  unless_2082_end:
.annotate 'line', 1499
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    set $P107, $P2062
    unless_null $P107, vivify_1002
    new $P107, "Undef"
  vivify_1002:
    setattribute $P106, 'payload', $P107
    throw $P106
.annotate 'line', 1484
    .return ()
  control_2054:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2066"  :anon :subid("221_1329260312.462") :outer("220_1329260312.462")
    .param pmc param_2068
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1487
    .const 'Sub' $P2070 = "222_1329260312.462" 
    capture_lex $P2070
    .lex "$_", param_2068
.annotate 'line', 1488
    .const 'Sub' $P2070 = "222_1329260312.462" 
    capture_lex $P2070
    $P111 = $P2070()
.annotate 'line', 1487
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2069"  :anon :subid("222_1329260312.462") :outer("221_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1488
    new $P2073, 'ExceptionHandler'
    set_label $P2073, control_2072
    $P2073."handle_types_except"(.CONTROL_ALL)
    push_eh $P2073
.annotate 'line', 1489
    find_lex $P111, "$s"
    unless_null $P111, vivify_991
    new $P111, "Undef"
  vivify_991:
    set $S101, $P111
.annotate 'line', 1490
    find_lex $P112, "$_"
    unless_null $P112, vivify_992
    new $P112, "Undef"
  vivify_992:
    set $S102, $P112
    find_encoding $I101, $S102
    trans_encoding $S103, $S101, $I101
.annotate 'line', 1489
    new $P113, 'String'
    set $P113, $S103
    store_lex "$s", $P113
.annotate 'line', 1488
    pop_eh 
    goto skip_handler_2071
  control_2072:
    peek_exception $P2074
    .local pmc exception 
    .get_results (exception) 
    new $P2076, 'Integer'
    set $P2076, 1
    set exception["handled"], $P2076
    set $I2077, exception["handled"]
    eq $I2077, 1, handled_2075
    rethrow exception
  handled_2075:
    finalize $P2074
    .return (exception)
  skip_handler_2071:
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past" :anon :subid("223_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2084
    .param pmc param_2085
    .param pmc param_2086 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1502
    .lex "self", param_2084
    .lex "$source", param_2085
    .lex "%adverbs", param_2086
.annotate 'line', 1503
    new $P102, "Undef"
    set $P2087, $P102
    .lex "$ast", $P2087
    set $P103, param_2085
    unless_null $P103, vivify_1003
    new $P103, "Undef"
  vivify_1003:
    $P104 = $P103."ast"()
    set $P2087, $P104
.annotate 'line', 1505
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "PAST"
    get_who $P105, $P104
    set $P106, $P105["Node"]
    set $P107, $P2087
    unless_null $P107, vivify_1004
    new $P107, "Undef"
  vivify_1004:
    $P108 = $P106."ACCEPTS"($P107)
    if $P108, unless_2088_end
.annotate 'line', 1504
    set $P109, param_2084
    nqp_decontainerize $P110, $P109
    new $P111, "String"
    assign $P111, "Unable to obtain ast from "
    set $P112, param_2085
    unless_null $P112, vivify_1005
    new $P112, "Undef"
  vivify_1005:
    typeof $S100, $P112
    concat $P113, $P111, $S100
    $P110."panic"($P113)
  unless_2088_end:
.annotate 'line', 1502
    set $P103, $P2087
    unless_null $P103, vivify_1006
    new $P103, "Undef"
  vivify_1006:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post" :anon :subid("224_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2090
    .param pmc param_2091
    .param pmc param_2092 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1509
    .lex "self", param_2090
    .lex "$source", param_2091
    .lex "%adverbs", param_2092
.annotate 'line', 1510
    compreg $P102, "PAST"
    set $P103, param_2091
    unless_null $P103, vivify_1007
    new $P103, "Undef"
  vivify_1007:
    set $P2093, param_2092
    unless_null $P2093, vivify_1008
    $P2093 = root_new ['parrot';'Hash']
  vivify_1008:
    $P104 = $P102."to_post"($P103, $P2093 :flat)
.annotate 'line', 1509
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pirbegin" :anon :subid("225_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2095
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1513
    .lex "self", param_2095
.annotate 'line', 1515
    new $P102, "String"
    assign $P102, ".include 'cclass.pasm'\n"
    concat $P103, $P102, ".include 'except_severity.pasm'\n"
    concat $P104, $P103, ".include 'except_types.pasm'\n"
.annotate 'line', 1516
    concat $P105, $P104, ".include 'iglobals.pasm'\n"
.annotate 'line', 1517
    concat $P106, $P105, ".include 'interpinfo.pasm'\n"
.annotate 'line', 1518
    concat $P107, $P106, ".include 'iterator.pasm'\n"
.annotate 'line', 1519
    concat $P108, $P107, ".include 'sysinfo.pasm'\n"
.annotate 'line', 1520
    concat $P109, $P108, ".include 'stat.pasm'\n"
.annotate 'line', 1521
    concat $P110, $P109, ".include 'datatypes.pasm'\n"
.annotate 'line', 1513
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir" :anon :subid("226_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2097
    .param pmc param_2098
    .param pmc param_2099 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1525
    .lex "self", param_2097
    .lex "$source", param_2098
    .lex "%adverbs", param_2099
.annotate 'line', 1526
    set $P102, param_2097
    nqp_decontainerize $P103, $P102
    $P104 = $P103."pirbegin"()
    compreg $P105, "POST"
    set $P106, param_2098
    unless_null $P106, vivify_1009
    new $P106, "Undef"
  vivify_1009:
    set $P2100, param_2099
    unless_null $P2100, vivify_1010
    $P2100 = root_new ['parrot';'Hash']
  vivify_1010:
    $S100 = $P105."to_pir"($P106, $P2100 :flat)
    concat $P107, $P104, $S100
.annotate 'line', 1525
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc" :anon :subid("227_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2102
    .param pmc param_2103
    .param pmc param_2104 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1529
    .lex "self", param_2102
    .lex "$source", param_2103
    .lex "%adverbs", param_2104
.annotate 'line', 1530
    new $P102, "Undef"
    set $P2105, $P102
    .lex "$compiler", $P2105
    compreg $P103, "PIR"
    set $P2105, $P103
.annotate 'line', 1531
    set $P103, $P2105
    unless_null $P103, vivify_1011
    new $P103, "Undef"
  vivify_1011:
    set $P104, param_2103
    unless_null $P104, vivify_1012
    new $P104, "Undef"
  vivify_1012:
    $P105 = $P103($P104)
.annotate 'line', 1529
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper" :anon :subid("228_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2107
    .param pmc param_2108
    .param pmc param_2109
    .param pmc param_2110 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1534
    .const 'Sub' $P2114 = "229_1329260312.462" 
    capture_lex $P2114
    .lex "self", param_2107
    .lex "$obj", param_2108
    .lex "$name", param_2109
    .lex "%options", param_2110
.annotate 'line', 1535
    set $P2112, param_2110
    unless_null $P2112, vivify_1013
    $P2112 = root_new ['parrot';'Hash']
  vivify_1013:
    set $P103, $P2112["dumper"]
    unless_null $P103, vivify_1014
    new $P103, "Undef"
  vivify_1014:
    if $P103, if_2111
.annotate 'line', 1541
    set $P106, param_2108
    unless_null $P106, vivify_1015
    new $P106, "Undef"
  vivify_1015:
    set $P107, param_2109
    unless_null $P107, vivify_1016
    new $P107, "Undef"
  vivify_1016:
    $P109 = "_dumper"($P106, $P107)
.annotate 'line', 1540
    set $P102, $P109
.annotate 'line', 1535
    goto if_2111_end
  if_2111:
    .const 'Sub' $P2114 = "229_1329260312.462" 
    capture_lex $P2114
    $P105 = $P2114()
    set $P102, $P105
  if_2111_end:
.annotate 'line', 1534
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2113"  :anon :subid("229_1329260312.462") :outer("228_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1537
    new $P104, "Undef"
    set $P2115, $P104
    .lex "$dumper", $P2115
.annotate 'line', 1536
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1537
    find_lex $P2116, "%options"
    unless_null $P2116, vivify_1017
    $P2116 = root_new ['parrot';'Hash']
  vivify_1017:
    set $P105, $P2116["dumper"]
    unless_null $P105, vivify_1018
    new $P105, "Undef"
  vivify_1018:
    set $S100, $P105
    downcase $S101, $S100
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P107, $P106, "PCT"
    get_who $P108, $P107
    set $P2117, $P108["Dumper"]
    unless_null $P2117, vivify_1019
    $P2117 = root_new ['parrot';'Hash']
  vivify_1019:
    set $P109, $P2117[$S101]
    unless_null $P109, vivify_1020
    new $P109, "Undef"
  vivify_1020:
    set $P2115, $P109
.annotate 'line', 1538
    set $P105, $P2115
    unless_null $P105, vivify_1021
    new $P105, "Undef"
  vivify_1021:
    find_lex $P106, "$obj"
    unless_null $P106, vivify_1022
    new $P106, "Undef"
  vivify_1022:
    find_lex $P107, "$name"
    unless_null $P107, vivify_1023
    new $P107, "Undef"
  vivify_1023:
    $P108 = $P105($P106, $P107)
.annotate 'line', 1535
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage" :anon :subid("230_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2119
    .param pmc param_2120 :optional
    .param int has_param_2120 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1545
    .lex "self", param_2119
    if has_param_2120, optparam_1024
    new $P102, "Undef"
    set param_2120, $P102
  optparam_1024:
    .lex "$name", param_2120
.annotate 'line', 1546
    set $P103, param_2120
    unless_null $P103, vivify_1025
    new $P103, "Undef"
  vivify_1025:
    unless $P103, if_2121_end
.annotate 'line', 1547
    set $P104, param_2120
    unless_null $P104, vivify_1026
    new $P104, "Undef"
  vivify_1026:
    "say"($P104)
  if_2121_end:
.annotate 'line', 1549
    set $P103, param_2119
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P106, $P104, $P105, "$!usage", 4
    unless_null $P106, vivify_1027
    new $P106, "Undef"
  vivify_1027:
    say $P106
.annotate 'line', 1550
    new $P103, "Float"
    assign $P103, 0
    set $I100, $P103
    exit $I100
.annotate 'line', 1545
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version" :anon :subid("231_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2123
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1553
    .lex "self", param_2123
.annotate 'line', 1554
    new $P102, "Undef"
    set $P2124, $P102
    .lex "$version", $P2124
.annotate 'line', 1555
    new $P103, "Undef"
    set $P2125, $P103
    .lex "$parver", $P2125
.annotate 'line', 1556
    new $P104, "Undef"
    set $P2126, $P104
    .lex "$parrev", $P2126
.annotate 'line', 1554
    set $P105, param_2123
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P2127, $P106, $P107, "%!config", 7
    unless_null $P2127, vivify_1028
    $P2127 = root_new ['parrot';'Hash']
  vivify_1028:
    set $P108, $P2127["version"]
    unless_null $P108, vivify_1029
    new $P108, "Undef"
  vivify_1029:
    set $P2124, $P108
.annotate 'line', 1555
    find_lex $P105, "$?PACKAGE"
    get_who $P106, $P105
    set $P2128, $P106["%parrot_config"]
    unless_null $P2128, vivify_1030
    $P2128 = root_new ['parrot';'Hash']
  vivify_1030:
    set $P107, $P2128["VERSION"]
    unless_null $P107, vivify_1031
    new $P107, "Undef"
  vivify_1031:
    set $P2125, $P107
.annotate 'line', 1556
    find_lex $P105, "$?PACKAGE"
    get_who $P106, $P105
    set $P2130, $P106["%parrot_config"]
    unless_null $P2130, vivify_1032
    $P2130 = root_new ['parrot';'Hash']
  vivify_1032:
    set $P107, $P2130["git_describe"]
    unless_null $P107, vivify_1033
    new $P107, "Undef"
  vivify_1033:
    set $P2129, $P107
    defined $I2132, $P2129
    if $I2132, default_2131
    new $P108, "String"
    assign $P108, "(unknown)"
    set $P2129, $P108
  default_2131:
    set $P2126, $P2129
.annotate 'line', 1557
    new $P105, 'String'
    set $P105, "This is "
    set $P106, param_2123
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P109, $P107, $P108, "$!language", 6
    unless_null $P109, vivify_1034
    new $P109, "Undef"
  vivify_1034:
    concat $P110, $P105, $P109
    concat $P111, $P110, " version "
    set $P112, $P2124
    unless_null $P112, vivify_1035
    new $P112, "Undef"
  vivify_1035:
    concat $P113, $P111, $P112
    concat $P114, $P113, " built on parrot "
    set $P115, $P2125
    unless_null $P115, vivify_1036
    new $P115, "Undef"
  vivify_1036:
    concat $P116, $P114, $P115
    concat $P117, $P116, " revision "
    set $P118, $P2126
    unless_null $P118, vivify_1037
    new $P118, "Undef"
  vivify_1037:
    concat $P119, $P117, $P118
    say $P119
.annotate 'line', 1558
    new $P105, "Float"
    assign $P105, 0
    set $I100, $P105
    exit $I100
.annotate 'line', 1553
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "show-config" :anon :subid("232_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2134
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1561
    .const 'Sub' $P2142 = "234_1329260312.462" 
    capture_lex $P2142
    .const 'Sub' $P2137 = "233_1329260312.462" 
    capture_lex $P2137
    .lex "self", param_2134
.annotate 'line', 1562
    find_lex $P103, "$?PACKAGE"
    get_who $P104, $P103
    set $P2135, $P104["%parrot_config"]
    unless_null $P2135, vivify_1038
    $P2135 = root_new ['parrot';'Hash']
  vivify_1038:
    defined $I100, $P2135
    unless $I100, for_undef_1039
    iter $P102, $P2135
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop2139_handler
    push_eh $P106
  loop2139_test:
    unless $P102, loop2139_done
    shift $P105, $P102
  loop2139_redo:
    .const 'Sub' $P2137 = "233_1329260312.462" 
    capture_lex $P2137
    $P2137($P105)
  loop2139_next:
    goto loop2139_test
  loop2139_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop2139_next
    eq $P107, .CONTROL_LOOP_REDO, loop2139_redo
  loop2139_done:
    pop_eh 
  for_undef_1039:
.annotate 'line', 1565
    set $P103, param_2134
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2140, $P104, $P105, "%!config", 7
    unless_null $P2140, vivify_1042
    $P2140 = root_new ['parrot';'Hash']
  vivify_1042:
    defined $I100, $P2140
    unless $I100, for_undef_1043
    iter $P102, $P2140
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop2144_handler
    push_eh $P107
  loop2144_test:
    unless $P102, loop2144_done
    shift $P106, $P102
  loop2144_redo:
    .const 'Sub' $P2142 = "234_1329260312.462" 
    capture_lex $P2142
    $P2142($P106)
  loop2144_next:
    goto loop2144_test
  loop2144_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2144_next
    eq $P108, .CONTROL_LOOP_REDO, loop2144_redo
  loop2144_done:
    pop_eh 
  for_undef_1043:
.annotate 'line', 1568
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    exit $I100
.annotate 'line', 1561
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2136"  :anon :subid("233_1329260312.462") :outer("232_1329260312.462")
    .param pmc param_2138
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1562
    .lex "$_", param_2138
.annotate 'line', 1563
    new $P106, "String"
    assign $P106, "parrot::"
    find_lex $P107, "$_"
    unless_null $P107, vivify_1040
    new $P107, "Undef"
  vivify_1040:
    $S100 = $P107."key"()
    concat $P108, $P106, $S100
    concat $P109, $P108, "="
    find_lex $P110, "$_"
    unless_null $P110, vivify_1041
    new $P110, "Undef"
  vivify_1041:
    $S101 = $P110."value"()
    concat $P111, $P109, $S101
    say $P111
.annotate 'line', 1562
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2141"  :anon :subid("234_1329260312.462") :outer("232_1329260312.462")
    .param pmc param_2143
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1565
    .lex "$_", param_2143
.annotate 'line', 1566
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!language", 6
    unless_null $P110, vivify_1044
    new $P110, "Undef"
  vivify_1044:
    concat $P111, $P110, "::"
    find_lex $P112, "$_"
    unless_null $P112, vivify_1045
    new $P112, "Undef"
  vivify_1045:
    $S100 = $P112."key"()
    concat $P113, $P111, $S100
    concat $P114, $P113, "="
    find_lex $P115, "$_"
    unless_null $P115, vivify_1046
    new $P115, "Undef"
  vivify_1046:
    $S101 = $P115."value"()
    concat $P116, $P114, $S101
    say $P116
.annotate 'line', 1565
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "nqpevent" :anon :subid("235_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2146
    .param pmc param_2147 :optional
    .param int has_param_2147 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1571
    .const 'Sub' $P2152 = "236_1329260312.462" 
    capture_lex $P2152
    .lex "self", param_2146
    if has_param_2147, optparam_1047
    new $P102, "Undef"
    set param_2147, $P102
  optparam_1047:
    .lex "$spec", param_2147
.annotate 'line', 1574
    new $P103, "Undef"
    set $P2148, $P103
    .lex "$fh", $P2148
.annotate 'line', 1573
    nqpevent "nqpevent: log finished"
.annotate 'line', 1574
    null $P104
    nqpevent_fh $P105, $P104
    set $P2148, $P105
.annotate 'line', 1575
    set $P104, $P2148
    unless_null $P104, vivify_1048
    new $P104, "Undef"
  vivify_1048:
    unless $P104, if_2149_end
    set $P105, $P2148
    unless_null $P105, vivify_1049
    new $P105, "Undef"
  vivify_1049:
    $P105."flush"()
  if_2149_end:
.annotate 'line', 1578
    set $P105, param_2147
    unless_null $P105, vivify_1050
    new $P105, "Undef"
  vivify_1050:
    if $P105, if_2150
    set $P104, $P105
    goto if_2150_end
  if_2150:
    .const 'Sub' $P2152 = "236_1329260312.462" 
    capture_lex $P2152
    $P108 = $P2152()
    set $P104, $P108
  if_2150_end:
.annotate 'line', 1571
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2151"  :anon :subid("236_1329260312.462") :outer("235_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1578
    .const 'Sub' $P2159 = "237_1329260312.462" 
    capture_lex $P2159
.annotate 'line', 1580
    new $P106, "Undef"
    set $P2153, $P106
    .lex "$file", $P2153
.annotate 'line', 1581
    new $P107, "Undef"
    set $P2154, $P107
    .lex "$flags", $P2154
.annotate 'line', 1579
    find_lex $P108, "$spec"
    unless_null $P108, vivify_1051
    new $P108, "Undef"
  vivify_1051:
    set $S100, $P108
    split $P109, ";", $S100
    store_lex "$spec", $P109
.annotate 'line', 1580
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    find_lex $P2155, "$spec"
    unless_null $P2155, vivify_1052
    $P2155 = root_new ['parrot';'ResizablePMCArray']
  vivify_1052:
    set $P109, $P2155[$I100]
    unless_null $P109, vivify_1053
    new $P109, "Undef"
  vivify_1053:
    set $P2153, $P109
.annotate 'line', 1581
    new $P108, "Float"
    assign $P108, 1
    set $I100, $P108
    find_lex $P2156, "$spec"
    unless_null $P2156, vivify_1054
    $P2156 = root_new ['parrot';'ResizablePMCArray']
  vivify_1054:
    set $P109, $P2156[$I100]
    unless_null $P109, vivify_1055
    new $P109, "Undef"
  vivify_1055:
    set $P2154, $P109
.annotate 'line', 1582
    set $P108, $P2153
    unless_null $P108, vivify_1056
    new $P108, "Undef"
  vivify_1056:
    set $S100, $P108
    isgt $I100, $S100, ""
    if $I100, if_2157
.annotate 'line', 1588
    getinterp $P110
    $P112 = $P110."stderr_handle"()
    nqpevent_fh $P113, $P112
.annotate 'line', 1587
    goto if_2157_end
  if_2157:
.annotate 'line', 1582
    .const 'Sub' $P2159 = "237_1329260312.462" 
    capture_lex $P2159
    $P2159()
  if_2157_end:
.annotate 'line', 1590
    set $P108, $P2154
    unless_null $P108, vivify_1061
    new $P108, "Undef"
  vivify_1061:
    set $S100, $P108
    iseq $I101, $S100, ""
    if $I101, if_2162
    set $P110, $P2154
    unless_null $P110, vivify_1062
    new $P110, "Undef"
  vivify_1062:
    set $I100, $P110
    goto if_2162_end
  if_2162:
    new $P109, "Float"
    assign $P109, 31
    set $I100, $P109
  if_2162_end:
    nqpdebflags $I102, $I100
.annotate 'line', 1591
    nqpevent "nqpevent: log started"
.annotate 'line', 1578
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2158"  :anon :subid("237_1329260312.462") :outer("236_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1583
    new $P109, "Undef"
    set $P2160, $P109
    .lex "$fh", $P2160
    new $P110, "FileHandle"
    set $P2160, $P110
.annotate 'line', 1584
    set $P110, $P2160
    unless_null $P110, vivify_1057
    new $P110, "Undef"
  vivify_1057:
    find_lex $P111, "$file"
    unless_null $P111, vivify_1058
    new $P111, "Undef"
  vivify_1058:
    $P112 = $P110."open"($P111, "w")
    if $P112, unless_2161_end
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    new $P115, 'String'
    set $P115, "Cannot write to "
    find_lex $P116, "$file"
    unless_null $P116, vivify_1059
    new $P116, "Undef"
  vivify_1059:
    concat $P117, $P115, $P116
    $P114."panic"($P117)
  unless_2161_end:
.annotate 'line', 1585
    set $P110, $P2160
    unless_null $P110, vivify_1060
    new $P110, "Undef"
  vivify_1060:
    nqpevent_fh $P111, $P110
.annotate 'line', 1582
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage" :anon :subid("238_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2164
    .param pmc param_2165
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1595
    .const 'Sub' $P2170 = "239_1329260312.462" 
    capture_lex $P2170
    .lex "self", param_2164
    .lex "$stagename", param_2165
.annotate 'line', 1596
    $P2167 = root_new ['parrot';'ResizablePMCArray']
    set $P2166, $P2167
    .lex "@new_stages", $P2166
    new $P102, "ResizableStringArray"
    set $P2166, $P102
.annotate 'line', 1597
    set $P103, param_2164
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2168, $P104, $P105, "@!stages", 0
    unless_null $P2168, vivify_1063
    $P2168 = root_new ['parrot';'ResizablePMCArray']
  vivify_1063:
    defined $I100, $P2168
    unless $I100, for_undef_1064
    iter $P102, $P2168
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop2174_handler
    push_eh $P108
  loop2174_test:
    unless $P102, loop2174_done
    shift $P106, $P102
  loop2174_redo:
    .const 'Sub' $P2170 = "239_1329260312.462" 
    capture_lex $P2170
    $P2170($P106)
  loop2174_next:
    goto loop2174_test
  loop2174_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop2174_next
    eq $P109, .CONTROL_LOOP_REDO, loop2174_redo
  loop2174_done:
    pop_eh 
  for_undef_1064:
.annotate 'line', 1602
    set $P2175, $P2166
    unless_null $P2175, vivify_1069
    $P2175 = root_new ['parrot';'ResizablePMCArray']
  vivify_1069:
    set $P102, param_2164
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!stages", 0, $P2175
.annotate 'line', 1595
    .return ($P2175)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2169"  :anon :subid("239_1329260312.462") :outer("238_1329260312.462")
    .param pmc param_2171
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1597
    .lex "$_", param_2171
.annotate 'line', 1598
    find_lex $P108, "$_"
    unless_null $P108, vivify_1065
    new $P108, "Undef"
  vivify_1065:
    set $S100, $P108
    find_lex $P109, "$stagename"
    unless_null $P109, vivify_1066
    new $P109, "Undef"
  vivify_1066:
    set $S101, $P109
    isne $I101, $S100, $S101
    if $I101, if_2172
    new $P107, 'Integer'
    set $P107, $I101
    goto if_2172_end
  if_2172:
.annotate 'line', 1599
    find_lex $P2173, "@new_stages"
    unless_null $P2173, vivify_1067
    $P2173 = root_new ['parrot';'ResizablePMCArray']
  vivify_1067:
    find_lex $P110, "$_"
    unless_null $P110, vivify_1068
    new $P110, "Undef"
  vivify_1068:
    $P111 = $P2173."push"($P110)
.annotate 'line', 1598
    set $P107, $P111
  if_2172_end:
.annotate 'line', 1597
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage" :anon :subid("240_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2179
    .param pmc param_2180
    .param pmc param_2181 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1605
    .const 'Sub' $P2199 = "242_1329260312.462" 
    capture_lex $P2199
    .const 'Sub' $P2193 = "241_1329260312.462" 
    capture_lex $P2193
    new $P2178, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2178, control_2177
    push_eh $P2178
    .lex "self", param_2179
    .lex "$stagename", param_2180
    .lex "%adverbs", param_2181
.annotate 'line', 1606
    new $P102, "Undef"
    set $P2182, $P102
    .lex "$position", $P2182
.annotate 'line', 1607
    new $P103, "Undef"
    set $P2183, $P103
    .lex "$where", $P2183
.annotate 'line', 1620
    $P2185 = root_new ['parrot';'ResizablePMCArray']
    set $P2184, $P2185
    .lex "@new-stages", $P2184
.annotate 'line', 1605
    set $P104, $P2182
    unless_null $P104, vivify_1070
    new $P104, "Undef"
  vivify_1070:
    set $P104, $P2183
    unless_null $P104, vivify_1071
    new $P104, "Undef"
  vivify_1071:
.annotate 'line', 1608
    set $P2187, param_2181
    unless_null $P2187, vivify_1072
    $P2187 = root_new ['parrot';'Hash']
  vivify_1072:
    set $P104, $P2187["before"]
    unless_null $P104, vivify_1073
    new $P104, "Undef"
  vivify_1073:
    if $P104, if_2186
.annotate 'line', 1611
    set $P2190, param_2181
    unless_null $P2190, vivify_1074
    $P2190 = root_new ['parrot';'Hash']
  vivify_1074:
    set $P105, $P2190["after"]
    unless_null $P105, vivify_1075
    new $P105, "Undef"
  vivify_1075:
    if $P105, if_2189
.annotate 'line', 1614
    .const 'Sub' $P2193 = "241_1329260312.462" 
    capture_lex $P2193
    $P2193()
    goto if_2189_end
  if_2189:
.annotate 'line', 1612
    set $P2191, param_2181
    unless_null $P2191, vivify_1079
    $P2191 = root_new ['parrot';'Hash']
  vivify_1079:
    set $P106, $P2191["after"]
    unless_null $P106, vivify_1080
    new $P106, "Undef"
  vivify_1080:
    set $P2183, $P106
.annotate 'line', 1613
    new $P106, "String"
    assign $P106, "after"
    set $P2182, $P106
  if_2189_end:
.annotate 'line', 1611
    goto if_2186_end
  if_2186:
.annotate 'line', 1609
    set $P2188, param_2181
    unless_null $P2188, vivify_1081
    $P2188 = root_new ['parrot';'Hash']
  vivify_1081:
    set $P105, $P2188["before"]
    unless_null $P105, vivify_1082
    new $P105, "Undef"
  vivify_1082:
    set $P2183, $P105
.annotate 'line', 1610
    new $P105, "String"
    assign $P105, "before"
    set $P2182, $P105
  if_2186_end:
.annotate 'line', 1620
    new $P104, "ResizableStringArray"
    set $P2184, $P104
.annotate 'line', 1621
    set $P105, param_2179
    nqp_decontainerize $P106, $P105
    $P107 = $P106."stages"()
    defined $I100, $P107
    unless $I100, for_undef_1083
    iter $P104, $P107
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop2208_handler
    push_eh $P110
  loop2208_test:
    unless $P104, loop2208_done
    shift $P108, $P104
  loop2208_redo:
    .const 'Sub' $P2199 = "242_1329260312.462" 
    capture_lex $P2199
    $P2199($P108)
  loop2208_next:
    goto loop2208_test
  loop2208_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop2208_next
    eq $P111, .CONTROL_LOOP_REDO, loop2208_redo
  loop2208_done:
    pop_eh 
  for_undef_1083:
.annotate 'line', 1634
    set $P104, param_2179
    nqp_decontainerize $P105, $P104
    set $P2209, $P2184
    unless_null $P2209, vivify_1097
    $P2209 = root_new ['parrot';'ResizablePMCArray']
  vivify_1097:
    $P106 = $P105."stages"($P2209)
.annotate 'line', 1605
    .return ($P106)
  control_2177:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, "payload"
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2192"  :anon :subid("241_1329260312.462") :outer("240_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1615
    $P2195 = root_new ['parrot';'ResizablePMCArray']
    set $P2194, $P2195
    .lex "@new-stages", $P2194
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    $P108 = $P107."stages"()
    clone $P109, $P108
    set $P2194, $P109
.annotate 'line', 1616
    set $P2196, $P2194
    unless_null $P2196, vivify_1076
    $P2196 = root_new ['parrot';'ResizablePMCArray']
  vivify_1076:
    find_lex $P106, "$stagename"
    unless_null $P106, vivify_1077
    new $P106, "Undef"
  vivify_1077:
    push $P2196, $P106
.annotate 'line', 1617
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    set $P2197, $P2194
    unless_null $P2197, vivify_1078
    $P2197 = root_new ['parrot';'ResizablePMCArray']
  vivify_1078:
    $P107."stages"($P2197)
.annotate 'line', 1618
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    new $P107, "Float"
    assign $P107, 1
    setattribute $P106, 'payload', $P107
    throw $P106
.annotate 'line', 1614
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2198"  :anon :subid("242_1329260312.462") :outer("240_1329260312.462")
    .param pmc param_2200
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1621
    .lex "$_", param_2200
.annotate 'line', 1622
    find_lex $P110, "$_"
    unless_null $P110, vivify_1084
    new $P110, "Undef"
  vivify_1084:
    set $S100, $P110
    find_lex $P111, "$where"
    unless_null $P111, vivify_1085
    new $P111, "Undef"
  vivify_1085:
    set $S101, $P111
    iseq $I101, $S100, $S101
    if $I101, if_2201
.annotate 'line', 1631
    find_lex $P2207, "@new-stages"
    unless_null $P2207, vivify_1086
    $P2207 = root_new ['parrot';'ResizablePMCArray']
  vivify_1086:
    find_lex $P113, "$_"
    unless_null $P113, vivify_1087
    new $P113, "Undef"
  vivify_1087:
    push $P2207, $P113
.annotate 'line', 1630
    set $P109, $P2207
.annotate 'line', 1622
    goto if_2201_end
  if_2201:
.annotate 'line', 1623
    find_lex $P113, "$position"
    unless_null $P113, vivify_1088
    new $P113, "Undef"
  vivify_1088:
    set $S102, $P113
    iseq $I102, $S102, "before"
    if $I102, if_2202
.annotate 'line', 1627
    find_lex $P2205, "@new-stages"
    unless_null $P2205, vivify_1089
    $P2205 = root_new ['parrot';'ResizablePMCArray']
  vivify_1089:
    find_lex $P114, "$_"
    unless_null $P114, vivify_1090
    new $P114, "Undef"
  vivify_1090:
    push $P2205, $P114
.annotate 'line', 1628
    find_lex $P2206, "@new-stages"
    unless_null $P2206, vivify_1091
    $P2206 = root_new ['parrot';'ResizablePMCArray']
  vivify_1091:
    find_lex $P114, "$stagename"
    unless_null $P114, vivify_1092
    new $P114, "Undef"
  vivify_1092:
    push $P2206, $P114
.annotate 'line', 1626
    set $P112, $P2206
.annotate 'line', 1623
    goto if_2202_end
  if_2202:
.annotate 'line', 1624
    find_lex $P2203, "@new-stages"
    unless_null $P2203, vivify_1093
    $P2203 = root_new ['parrot';'ResizablePMCArray']
  vivify_1093:
    find_lex $P114, "$stagename"
    unless_null $P114, vivify_1094
    new $P114, "Undef"
  vivify_1094:
    push $P2203, $P114
.annotate 'line', 1625
    find_lex $P2204, "@new-stages"
    unless_null $P2204, vivify_1095
    $P2204 = root_new ['parrot';'ResizablePMCArray']
  vivify_1095:
    find_lex $P114, "$_"
    unless_null $P114, vivify_1096
    new $P114, "Undef"
  vivify_1096:
    push $P2204, $P114
.annotate 'line', 1623
    set $P112, $P2204
  if_2202_end:
.annotate 'line', 1622
    set $P109, $P112
  if_2201_end:
.annotate 'line', 1621
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name" :anon :subid("243_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2211
    .param pmc param_2212
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1637
    .const 'Sub' $P2228 = "244_1329260312.462" 
    capture_lex $P2228
    .lex "self", param_2211
    .lex "$name", param_2212
.annotate 'line', 1638
    $P2214 = root_new ['parrot';'ResizablePMCArray']
    set $P2213, $P2214
    .lex "@ns", $P2213
.annotate 'line', 1639
    new $P102, "Undef"
    set $P2215, $P102
    .lex "$sigil", $P2215
.annotate 'line', 1642
    new $P103, "Undef"
    set $P2216, $P103
    .lex "$idx", $P2216
.annotate 'line', 1650
    $P2218 = root_new ['parrot';'ResizablePMCArray']
    set $P2217, $P2218
    .lex "@actual_ns", $P2217
.annotate 'line', 1638
    set $P104, param_2212
    unless_null $P104, vivify_1098
    new $P104, "Undef"
  vivify_1098:
    set $S100, $P104
    split $P105, "::", $S100
    set $P2213, $P105
.annotate 'line', 1639
    new $P104, "Float"
    assign $P104, 0
    set $I100, $P104
    set $P2219, $P2213
    unless_null $P2219, vivify_1099
    $P2219 = root_new ['parrot';'ResizablePMCArray']
  vivify_1099:
    set $P105, $P2219[$I100]
    unless_null $P105, vivify_1100
    new $P105, "Undef"
  vivify_1100:
    set $S100, $P105
    new $P106, "Float"
    assign $P106, 0
    set $I101, $P106
    new $P107, "Float"
    assign $P107, 1
    set $I102, $P107
    substr $S101, $S100, $I101, $I102
    new $P108, 'String'
    set $P108, $S101
    set $P2215, $P108
.annotate 'line', 1642
    set $P104, $P2215
    unless_null $P104, vivify_1101
    new $P104, "Undef"
  vivify_1101:
    set $S100, $P104
    index $I100, "$@%&", $S100
    new $P105, 'Integer'
    set $P105, $I100
    set $P2216, $P105
.annotate 'line', 1643
    set $P104, $P2216
    unless_null $P104, vivify_1102
    new $P104, "Undef"
  vivify_1102:
    set $N100, $P104
    set $N101, 0
    isge $I100, $N100, $N101
    unless $I100, if_2220_end
.annotate 'line', 1644
    new $P105, "Float"
    assign $P105, 0
    set $I101, $P105
    set $P2221, $P2213
    unless_null $P2221, vivify_1103
    $P2221 = root_new ['parrot';'ResizablePMCArray']
  vivify_1103:
    set $P106, $P2221[$I101]
    unless_null $P106, vivify_1104
    new $P106, "Undef"
  vivify_1104:
    set $S100, $P106
    new $P107, "Float"
    assign $P107, 1
    set $I102, $P107
    substr $S101, $S100, $I102
    new $P108, 'String'
    set $P108, $S101
    new $P109, "Float"
    assign $P109, 0
    set $I103, $P109
    set $P2222, $P2213
    unless_null $P2222, vivify_1105
    $P2222 = root_new ['parrot';'ResizablePMCArray']
    set $P2213, $P2222
  vivify_1105:
    set $P2222[$I103], $P108
.annotate 'line', 1645
    set $P105, $P2215
    unless_null $P105, vivify_1106
    new $P105, "Undef"
  vivify_1106:
    new $P106, "Float"
    assign $P106, -1
    set $I101, $P106
    set $P2223, $P2213
    unless_null $P2223, vivify_1107
    $P2223 = root_new ['parrot';'ResizablePMCArray']
  vivify_1107:
    set $P107, $P2223[$I101]
    unless_null $P107, vivify_1108
    new $P107, "Undef"
  vivify_1108:
    concat $P108, $P105, $P107
    new $P109, "Float"
    assign $P109, -1
    set $I102, $P109
    set $P2224, $P2213
    unless_null $P2224, vivify_1109
    $P2224 = root_new ['parrot';'ResizablePMCArray']
    set $P2213, $P2224
  vivify_1109:
    set $P2224[$I102], $P108
  if_2220_end:
.annotate 'line', 1637
    set $P2225, $P2217
    unless_null $P2225, vivify_1110
    $P2225 = root_new ['parrot';'ResizablePMCArray']
  vivify_1110:
.annotate 'line', 1651
    set $P2226, $P2213
    unless_null $P2226, vivify_1111
    $P2226 = root_new ['parrot';'ResizablePMCArray']
  vivify_1111:
    defined $I100, $P2226
    unless $I100, for_undef_1112
    iter $P104, $P2226
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop2232_handler
    push_eh $P107
  loop2232_test:
    unless $P104, loop2232_done
    shift $P105, $P104
  loop2232_redo:
    .const 'Sub' $P2228 = "244_1329260312.462" 
    capture_lex $P2228
    $P2228($P105)
  loop2232_next:
    goto loop2232_test
  loop2232_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2232_next
    eq $P108, .CONTROL_LOOP_REDO, loop2232_redo
  loop2232_done:
    pop_eh 
  for_undef_1112:
.annotate 'line', 1637
    set $P2233, $P2217
    unless_null $P2233, vivify_1116
    $P2233 = root_new ['parrot';'ResizablePMCArray']
  vivify_1116:
    .return ($P2233)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2227"  :anon :subid("244_1329260312.462") :outer("243_1329260312.462")
    .param pmc param_2229
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1651
    .lex "$_", param_2229
.annotate 'line', 1652
    find_lex $P107, "$_"
    unless_null $P107, vivify_1113
    new $P107, "Undef"
  vivify_1113:
    set $S100, $P107
    iseq $I101, $S100, ""
    unless $I101, unless_2230
    new $P106, 'Integer'
    set $P106, $I101
    goto unless_2230_end
  unless_2230:
    find_lex $P2231, "@actual_ns"
    unless_null $P2231, vivify_1114
    $P2231 = root_new ['parrot';'ResizablePMCArray']
  vivify_1114:
    find_lex $P108, "$_"
    unless_null $P108, vivify_1115
    new $P108, "Undef"
  vivify_1115:
    push $P2231, $P108
    set $P106, $P2231
  unless_2230_end:
.annotate 'line', 1651
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof" :anon :subid("245_1329260312.462") :outer("164_1329260312.462")
    .param pmc param_2235
    .param pmc param_2236
    .param pmc param_2237
    .param pmc param_2238 :optional :named("cache")
    .param int has_param_2238 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1657
    .lex "self", param_2235
    .lex "$target", param_2236
    .lex "$pos", param_2237
    if has_param_2238, optparam_1117
    new $P102, "Undef"
    set param_2238, $P102
  optparam_1117:
    .lex "$cache", param_2238
.annotate 'line', 1658

            .local pmc target, linepos
            .local int pos, cache
            target = find_lex '$target'
            $P0 = find_lex '$pos'
            pos = $P0
            $P0 = find_lex '$cache'
            cache = $P0

            # If we've previously cached C<linepos> for target, we use it.
            unless cache goto linepos_build
            linepos = getprop '!linepos', target
            unless null linepos goto linepos_done

            # calculate a new linepos array.
        linepos_build:
            linepos = new ['ResizableIntegerArray']
            unless cache goto linepos_build_1
            setprop target, '!linepos', linepos
        linepos_build_1:
            .local string s
            .local int jpos, eos
            s = target
            eos = length s
            jpos = 0
            # Search for all of the newline markers in C<target>.  When we
            # find one, mark the ending offset of the line in C<linepos>.
        linepos_loop:
            jpos = find_cclass .CCLASS_NEWLINE, s, jpos, eos
            unless jpos < eos goto linepos_done_1
            $I0 = ord s, jpos
            inc jpos
            push linepos, jpos
            # Treat \r\n as a single logical newline.
            if $I0 != 13 goto linepos_loop
            $I0 = ord s, jpos
            if $I0 != 10 goto linepos_loop
            inc jpos
            goto linepos_loop
        linepos_done_1:
        linepos_done:

            # We have C<linepos>, so now we (binary) search the array
            # for the largest element that is not greater than C<pos>.
            .local int lo, hi, line
            lo = 0
            hi = elements linepos
        binary_loop:
            if lo >= hi goto binary_done
            line = lo + hi
            line = line / 2
            $I0 = linepos[line]
            if $I0 > pos goto binary_hi
            lo = line + 1
            goto binary_loop
        binary_hi:
            hi = line
            goto binary_loop
        binary_done:
            inc lo
            .return (lo)
        
.annotate 'line', 1657
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2240"  :subid("246_1329260312.462") :outer("10_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1818
    .const 'Sub' $P2256 = "251_1329260312.462" 
    capture_lex $P2256
    .const 'Sub' $P2252 = "250_1329260312.462" 
    capture_lex $P2252
    .const 'Sub' $P2249 = "249_1329260312.462" 
    capture_lex $P2249
    .const 'Sub' $P2246 = "248_1329260312.462" 
    capture_lex $P2246
    .const 'Sub' $P2244 = "247_1329260312.462" 
    capture_lex $P2244
    .lex "$?PACKAGE", $P2242
    .lex "$?CLASS", $P2243
.annotate 'line', 1834
    .const 'Sub' $P2256 = "251_1329260312.462" 
    newclosure $P2271, $P2256
.annotate 'line', 1818
    .return ($P2271)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init" :anon :subid("247_1329260312.462") :outer("246_1329260312.462")
    .param pmc param_2245
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1822
    .lex "self", param_2245
.annotate 'line', 1823
    new $P101, "ResizablePMCArray"
    set $P102, param_2245
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!arguments", 0, $P101
.annotate 'line', 1824
    new $P101, "Hash"
    set $P102, param_2245
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "%!options", 1, $P101
.annotate 'line', 1822
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments" :anon :subid("248_1329260312.462") :outer("246_1329260312.462")
    .param pmc param_2247
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1827
    .lex "self", param_2247
    set $P101, param_2247
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P2248, $P102, $P103, "@!arguments", 0
    unless_null $P2248, vivify_1119
    $P2248 = root_new ['parrot';'ResizablePMCArray']
  vivify_1119:
    .return ($P2248)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options" :anon :subid("249_1329260312.462") :outer("246_1329260312.462")
    .param pmc param_2250
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1828
    .lex "self", param_2250
    set $P101, param_2250
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P2251, $P102, $P103, "%!options", 1
    unless_null $P2251, vivify_1120
    $P2251 = root_new ['parrot';'Hash']
  vivify_1120:
    .return ($P2251)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument" :anon :subid("250_1329260312.462") :outer("246_1329260312.462")
    .param pmc param_2253
    .param pmc param_2254
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1830
    .lex "self", param_2253
    .lex "$x", param_2254
.annotate 'line', 1831
    set $P101, param_2253
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P2255, $P102, $P103, "@!arguments", 0
    unless_null $P2255, vivify_1121
    $P2255 = root_new ['parrot';'ResizablePMCArray']
  vivify_1121:
    set $P104, param_2254
    unless_null $P104, vivify_1122
    new $P104, "Undef"
  vivify_1122:
    push $P2255, $P104
.annotate 'line', 1830
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option" :anon :subid("251_1329260312.462") :outer("246_1329260312.462")
    .param pmc param_2257
    .param pmc param_2258
    .param pmc param_2259
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1834
    .const 'Sub' $P2263 = "252_1329260312.462" 
    capture_lex $P2263
    .lex "self", param_2257
    .lex "$name", param_2258
    .lex "$value", param_2259
.annotate 'line', 1837
    set $P105, param_2258
    unless_null $P105, vivify_1123
    new $P105, "Undef"
  vivify_1123:
    set $P102, param_2257
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P2261, $P103, $P104, "%!options", 1
    unless_null $P2261, vivify_1124
    $P2261 = root_new ['parrot';'Hash']
  vivify_1124:
    exists $I100, $P2261[$P105]
    if $I100, if_2260
.annotate 'line', 1846
    set $P109, param_2259
    unless_null $P109, vivify_1125
    new $P109, "Undef"
  vivify_1125:
    set $P110, param_2258
    unless_null $P110, vivify_1126
    new $P110, "Undef"
  vivify_1126:
    set $P111, param_2257
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P2270, $P112, $P113, "%!options", 1
    unless_null $P2270, vivify_1127
    $P2270 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P112, $P113, "%!options", 1, $P2270
  vivify_1127:
    set $P2270[$P110], $P109
.annotate 'line', 1845
    set $P101, $P109
.annotate 'line', 1837
    goto if_2260_end
  if_2260:
    .const 'Sub' $P2263 = "252_1329260312.462" 
    capture_lex $P2263
    $P108 = $P2263()
    set $P101, $P108
  if_2260_end:
.annotate 'line', 1834
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2262"  :anon :subid("252_1329260312.462") :outer("251_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1838
    new $P106, "Undef"
    set $P2264, $P106
    .lex "$t", $P2264
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P2265, $P108, $P109, "%!options", 1
    unless_null $P2265, vivify_1128
    $P2265 = root_new ['parrot';'Hash']
  vivify_1128:
    typeof $S100, $P2265
    new $P110, 'String'
    set $P110, $S100
    set $P2264, $P110
.annotate 'line', 1839
    set $P107, $P2264
    unless_null $P107, vivify_1129
    new $P107, "Undef"
  vivify_1129:
    "say"($P107)
.annotate 'line', 1840
    set $P108, $P2264
    unless_null $P108, vivify_1130
    new $P108, "Undef"
  vivify_1130:
    set $S100, $P108
    iseq $I101, $S100, "ResizablePMCArray"
    if $I101, if_2266
.annotate 'line', 1843
    find_lex $P109, "$name"
    unless_null $P109, vivify_1131
    new $P109, "Undef"
  vivify_1131:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P2268, $P111, $P112, "%!options", 1
    unless_null $P2268, vivify_1132
    $P2268 = root_new ['parrot';'Hash']
  vivify_1132:
    set $P114, $P2268[$P109]
    unless_null $P114, vivify_1133
    new $P114, "Undef"
  vivify_1133:
    find_lex $P115, "$name"
    unless_null $P115, vivify_1134
    new $P115, "Undef"
  vivify_1134:
    new $P116, "ResizablePMCArray"
    push $P116, $P114
    push $P116, $P115
    find_lex $P117, "$name"
    unless_null $P117, vivify_1135
    new $P117, "Undef"
  vivify_1135:
    find_lex $P118, "self"
    nqp_decontainerize $P119, $P118
    find_lex $P120, "$?CLASS"
    repr_get_attr_obj $P2269, $P119, $P120, "%!options", 1
    unless_null $P2269, vivify_1136
    $P2269 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P119, $P120, "%!options", 1, $P2269
  vivify_1136:
    set $P2269[$P117], $P116
.annotate 'line', 1842
    set $P107, $P116
.annotate 'line', 1840
    goto if_2266_end
  if_2266:
.annotate 'line', 1841
    find_lex $P109, "$name"
    unless_null $P109, vivify_1137
    new $P109, "Undef"
  vivify_1137:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P2267, $P111, $P112, "%!options", 1
    unless_null $P2267, vivify_1138
    $P2267 = root_new ['parrot';'Hash']
  vivify_1138:
    set $P113, $P2267[$P109]
    unless_null $P113, vivify_1139
    new $P113, "Undef"
  vivify_1139:
    find_lex $P114, "$value"
    unless_null $P114, vivify_1140
    new $P114, "Undef"
  vivify_1140:
    push $P113, $P114
.annotate 'line', 1840
    set $P107, $P113
  if_2266_end:
.annotate 'line', 1837
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2272"  :subid("253_1329260312.462") :outer("10_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1851
    .const 'Sub' $P2333 = "265_1329260312.462" 
    capture_lex $P2333
    .const 'Sub' $P2328 = "264_1329260312.462" 
    capture_lex $P2328
    .const 'Sub' $P2323 = "263_1329260312.462" 
    capture_lex $P2323
    .const 'Sub' $P2315 = "262_1329260312.462" 
    capture_lex $P2315
    .const 'Sub' $P2300 = "260_1329260312.462" 
    capture_lex $P2300
    .const 'Sub' $P2297 = "259_1329260312.462" 
    capture_lex $P2297
    .const 'Sub' $P2293 = "258_1329260312.462" 
    capture_lex $P2293
    .const 'Sub' $P2283 = "256_1329260312.462" 
    capture_lex $P2283
    .const 'Sub' $P2281 = "255_1329260312.462" 
    capture_lex $P2281
    .const 'Sub' $P2276 = "254_1329260312.462" 
    capture_lex $P2276
    .lex "$?PACKAGE", $P2274
    .lex "$?CLASS", $P2275
.annotate 'line', 1916
    .const 'Sub' $P2333 = "265_1329260312.462" 
    newclosure $P2406, $P2333
.annotate 'line', 1851
    .return ($P2406)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new" :anon :subid("254_1329260312.462") :outer("253_1329260312.462")
    .param pmc param_2277
    .param pmc param_2278
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1857
    .lex "self", param_2277
    .lex "@specs", param_2278
.annotate 'line', 1858
    new $P101, "Undef"
    set $P2279, $P101
    .lex "$obj", $P2279
    set $P102, param_2277
    nqp_decontainerize $P103, $P102
    $P104 = $P103."CREATE"()
    set $P2279, $P104
.annotate 'line', 1859
    set $P102, $P2279
    unless_null $P102, vivify_1141
    new $P102, "Undef"
  vivify_1141:
    set $P2280, param_2278
    unless_null $P2280, vivify_1142
    $P2280 = root_new ['parrot';'ResizablePMCArray']
  vivify_1142:
    $P102."BUILD"($P2280 :named("specs"))
.annotate 'line', 1857
    set $P102, $P2279
    unless_null $P102, vivify_1143
    new $P102, "Undef"
  vivify_1143:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg" :anon :subid("255_1329260312.462") :outer("253_1329260312.462")
    .param pmc param_2282
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1863
    .lex "self", param_2282
.annotate 'line', 1864
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2282
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!stop-after-first-arg", 3, $P101
.annotate 'line', 1863
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("256_1329260312.462") :outer("253_1329260312.462")
    .param pmc param_2284
    .param pmc param_2285 :optional :named("specs")
    .param int has_param_2285 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1867
    .const 'Sub' $P2290 = "257_1329260312.462" 
    capture_lex $P2290
    .lex "self", param_2284
    if has_param_2285, optparam_1144
    $P2286 = root_new ['parrot';'ResizablePMCArray']
    set param_2285, $P2286
  optparam_1144:
    .lex "@specs", param_2285
.annotate 'line', 1868
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2284
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P2287, $P103, $P104, "%!stopper", 2
    unless_null $P2287, vivify_1145
    $P2287 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P103, $P104, "%!stopper", 2, $P2287
  vivify_1145:
    set $P2287["--"], $P101
.annotate 'line', 1869
    new $P101, "Float"
    assign $P101, 0
    set $P102, param_2284
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!stop-after-first-arg", 3, $P101
.annotate 'line', 1870
    set $P2288, param_2285
    unless_null $P2288, vivify_1146
    $P2288 = root_new ['parrot';'ResizablePMCArray']
  vivify_1146:
    defined $I100, $P2288
    unless $I100, for_undef_1147
    iter $P101, $P2288
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop2292_handler
    push_eh $P103
  loop2292_test:
    unless $P101, loop2292_done
    shift $P102, $P101
  loop2292_redo:
    .const 'Sub' $P2290 = "257_1329260312.462" 
    capture_lex $P2290
    $P2290($P102)
  loop2292_next:
    goto loop2292_test
  loop2292_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop2292_next
    eq $P104, .CONTROL_LOOP_REDO, loop2292_redo
  loop2292_done:
    pop_eh 
  for_undef_1147:
.annotate 'line', 1867
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2289"  :anon :subid("257_1329260312.462") :outer("256_1329260312.462")
    .param pmc param_2291
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1870
    .lex "$_", param_2291
.annotate 'line', 1871
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$_"
    unless_null $P105, vivify_1148
    new $P105, "Undef"
  vivify_1148:
    $P106 = $P104."add-spec"($P105)
.annotate 'line', 1870
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper" :anon :subid("258_1329260312.462") :outer("253_1329260312.462")
    .param pmc param_2294
    .param pmc param_2295
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1874
    .lex "self", param_2294
    .lex "$x", param_2295
.annotate 'line', 1875
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2295
    unless_null $P102, vivify_1149
    new $P102, "Undef"
  vivify_1149:
    set $P103, param_2294
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2296, $P104, $P105, "%!stopper", 2
    unless_null $P2296, vivify_1150
    $P2296 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P104, $P105, "%!stopper", 2, $P2296
  vivify_1150:
    set $P2296[$P102], $P101
.annotate 'line', 1874
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases" :anon :subid("259_1329260312.462") :outer("253_1329260312.462")
    .param pmc param_2298
    .param pmc param_2299
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1878
    .lex "self", param_2298
    .lex "$s", param_2299
.annotate 'line', 1879
    set $P101, param_2299
    unless_null $P101, vivify_1151
    new $P101, "Undef"
  vivify_1151:
    set $S100, $P101
    split $P102, "|", $S100
.annotate 'line', 1878
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec" :anon :subid("260_1329260312.462") :outer("253_1329260312.462")
    .param pmc param_2301
    .param pmc param_2302
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1883
    .const 'Sub' $P2311 = "261_1329260312.462" 
    capture_lex $P2311
    .lex "self", param_2301
    .lex "$s", param_2302
.annotate 'line', 1884
    new $P101, "Undef"
    set $P2303, $P101
    .lex "$i", $P2303
.annotate 'line', 1885
    new $P102, "Undef"
    set $P2304, $P102
    .lex "$type", $P2304
.annotate 'line', 1886
    $P2306 = root_new ['parrot';'ResizablePMCArray']
    set $P2305, $P2306
    .lex "@options", $P2305
.annotate 'line', 1884
    set $P103, param_2302
    unless_null $P103, vivify_1152
    new $P103, "Undef"
  vivify_1152:
    set $S100, $P103
    index $I100, $S100, "="
    new $P104, 'Integer'
    set $P104, $I100
    set $P2303, $P104
.annotate 'line', 1883
    set $P103, $P2304
    unless_null $P103, vivify_1153
    new $P103, "Undef"
  vivify_1153:
    set $P2307, $P2305
    unless_null $P2307, vivify_1154
    $P2307 = root_new ['parrot';'ResizablePMCArray']
  vivify_1154:
.annotate 'line', 1887
    set $P103, $P2303
    unless_null $P103, vivify_1155
    new $P103, "Undef"
  vivify_1155:
    set $N100, $P103
    set $N101, 0
    islt $I100, $N100, $N101
    if $I100, if_2308
.annotate 'line', 1891
    set $P104, param_2302
    unless_null $P104, vivify_1156
    new $P104, "Undef"
  vivify_1156:
    set $S100, $P104
    set $P105, $P2303
    unless_null $P105, vivify_1157
    new $P105, "Undef"
  vivify_1157:
    add $P106, $P105, 1
    set $I101, $P106
    substr $S101, $S100, $I101
    new $P107, 'String'
    set $P107, $S101
    set $P2304, $P107
.annotate 'line', 1892
    set $P104, param_2301
    nqp_decontainerize $P105, $P104
    set $P106, param_2302
    unless_null $P106, vivify_1158
    new $P106, "Undef"
  vivify_1158:
    set $S100, $P106
    new $P107, "Float"
    assign $P107, 0
    set $I101, $P107
    set $P108, $P2303
    unless_null $P108, vivify_1159
    new $P108, "Undef"
  vivify_1159:
    set $I102, $P108
    substr $S101, $S100, $I101, $I102
    $P109 = $P105."split-option-aliases"($S101)
    set $P2305, $P109
.annotate 'line', 1890
    goto if_2308_end
  if_2308:
.annotate 'line', 1888
    new $P104, "String"
    assign $P104, "b"
    set $P2304, $P104
.annotate 'line', 1889
    set $P104, param_2301
    nqp_decontainerize $P105, $P104
    set $P106, param_2302
    unless_null $P106, vivify_1160
    new $P106, "Undef"
  vivify_1160:
    $P107 = $P105."split-option-aliases"($P106)
    set $P2305, $P107
  if_2308_end:
.annotate 'line', 1894
    set $P2309, $P2305
    unless_null $P2309, vivify_1161
    $P2309 = root_new ['parrot';'ResizablePMCArray']
  vivify_1161:
    defined $I100, $P2309
    unless $I100, for_undef_1162
    iter $P103, $P2309
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop2314_handler
    push_eh $P106
  loop2314_test:
    unless $P103, loop2314_done
    shift $P104, $P103
  loop2314_redo:
    .const 'Sub' $P2311 = "261_1329260312.462" 
    capture_lex $P2311
    $P2311($P104)
  loop2314_next:
    goto loop2314_test
  loop2314_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop2314_next
    eq $P107, .CONTROL_LOOP_REDO, loop2314_redo
  loop2314_done:
    pop_eh 
  for_undef_1162:
.annotate 'line', 1883
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2310"  :anon :subid("261_1329260312.462") :outer("260_1329260312.462")
    .param pmc param_2312
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1894
    .lex "$_", param_2312
.annotate 'line', 1895
    find_lex $P105, "$type"
    unless_null $P105, vivify_1163
    new $P105, "Undef"
  vivify_1163:
    find_lex $P106, "$_"
    unless_null $P106, vivify_1164
    new $P106, "Undef"
  vivify_1164:
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P2313, $P108, $P109, "%!options", 1
    unless_null $P2313, vivify_1165
    $P2313 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P108, $P109, "%!options", 1, $P2313
  vivify_1165:
    set $P2313[$P106], $P105
.annotate 'line', 1894
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option" :anon :subid("262_1329260312.462") :outer("253_1329260312.462")
    .param pmc param_2318
    .param pmc param_2319
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1900
    new $P2317, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2317, control_2316
    push_eh $P2317
    .lex "self", param_2318
    .lex "$x", param_2319
.annotate 'line', 1901
    set $P102, param_2319
    unless_null $P102, vivify_1166
    new $P102, "Undef"
  vivify_1166:
    set $S100, $P102
    iseq $I100, $S100, "-"
    unless $I100, unless_2321
    new $P101, 'Integer'
    set $P101, $I100
    goto unless_2321_end
  unless_2321:
    set $P103, param_2319
    unless_null $P103, vivify_1167
    new $P103, "Undef"
  vivify_1167:
    set $S101, $P103
    iseq $I101, $S101, "--"
    new $P101, 'Integer'
    set $P101, $I101
  unless_2321_end:
    unless $P101, if_2320_end
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    new $P105, "Float"
    assign $P105, 0
    setattribute $P104, 'payload', $P105
    throw $P104
  if_2320_end:
.annotate 'line', 1902
    set $P101, param_2319
    unless_null $P101, vivify_1168
    new $P101, "Undef"
  vivify_1168:
    set $S100, $P101
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    new $P103, "Float"
    assign $P103, 1
    set $I101, $P103
    substr $S101, $S100, $I100, $I101
    iseq $I102, $S101, "-"
    unless $I102, if_2322_end
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    new $P105, "Float"
    assign $P105, 1
    setattribute $P104, 'payload', $P105
    throw $P104
  if_2322_end:
.annotate 'line', 1900
    .return (0)
  control_2316:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value" :anon :subid("263_1329260312.462") :outer("253_1329260312.462")
    .param pmc param_2324
    .param pmc param_2325
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1906
    .lex "self", param_2324
    .lex "$x", param_2325
.annotate 'line', 1907
    new $P101, "Undef"
    set $P2326, $P101
    .lex "$spec", $P2326
    set $P102, param_2325
    unless_null $P102, vivify_1169
    new $P102, "Undef"
  vivify_1169:
    set $P103, param_2324
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2327, $P104, $P105, "%!options", 1
    unless_null $P2327, vivify_1170
    $P2327 = root_new ['parrot';'Hash']
  vivify_1170:
    set $P106, $P2327[$P102]
    unless_null $P106, vivify_1171
    new $P106, "Undef"
  vivify_1171:
    set $P2326, $P106
.annotate 'line', 1908
    set $P102, $P2326
    unless_null $P102, vivify_1172
    new $P102, "Undef"
  vivify_1172:
    set $S100, $P102
    new $P103, "Float"
    assign $P103, 0
    set $I100, $P103
    new $P104, "Float"
    assign $P104, 1
    set $I101, $P104
    substr $S101, $S100, $I100, $I101
    iseq $I102, $S101, "s"
.annotate 'line', 1906
    .return ($I102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "optional-value" :anon :subid("264_1329260312.462") :outer("253_1329260312.462")
    .param pmc param_2329
    .param pmc param_2330
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1911
    .lex "self", param_2329
    .lex "$x", param_2330
.annotate 'line', 1912
    new $P101, "Undef"
    set $P2331, $P101
    .lex "$spec", $P2331
    set $P102, param_2330
    unless_null $P102, vivify_1173
    new $P102, "Undef"
  vivify_1173:
    set $P103, param_2329
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2332, $P104, $P105, "%!options", 1
    unless_null $P2332, vivify_1174
    $P2332 = root_new ['parrot';'Hash']
  vivify_1174:
    set $P106, $P2332[$P102]
    unless_null $P106, vivify_1175
    new $P106, "Undef"
  vivify_1175:
    set $P2331, $P106
.annotate 'line', 1913
    set $P102, $P2331
    unless_null $P102, vivify_1176
    new $P102, "Undef"
  vivify_1176:
    set $S100, $P102
    iseq $I100, $S100, "s?"
.annotate 'line', 1911
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse" :anon :subid("265_1329260312.462") :outer("253_1329260312.462")
    .param pmc param_2336
    .param pmc param_2337
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1916
    .const 'Sub' $P2362 = "268_1329260312.462" 
    capture_lex $P2362
    .const 'Sub' $P2354 = "267_1329260312.462" 
    capture_lex $P2354
    .const 'Sub' $P2342 = "266_1329260312.462" 
    capture_lex $P2342
    new $P2335, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2335, control_2334
    push_eh $P2335
    .lex "self", param_2336
    .lex "@args", param_2337
.annotate 'line', 1917
    new $P101, "Undef"
    set $P2338, $P101
    .lex "$i", $P2338
.annotate 'line', 1918
    new $P102, "Undef"
    set $P2339, $P102
    .lex "$arg-count", $P2339
.annotate 'line', 1920
    new $P103, "Undef"
    set $P2340, $P103
    .lex "$result", $P2340
.annotate 'line', 1924
    .const 'Sub' $P2342 = "266_1329260312.462" 
    newclosure $P2352, $P2342
    set $P2341, $P2352
    .lex "get-value", $P2341
.annotate 'line', 1939
    .const 'Sub' $P2354 = "267_1329260312.462" 
    newclosure $P2359, $P2354
    set $P2353, $P2359
    .lex "slurp-rest", $P2353
.annotate 'line', 1917
    new $P105, "Float"
    assign $P105, 0
    set $P2338, $P105
.annotate 'line', 1918
    set $P2360, param_2337
    unless_null $P2360, vivify_1202
    $P2360 = root_new ['parrot';'ResizablePMCArray']
  vivify_1202:
    set $N100, $P2360
    new $P105, 'Float'
    set $P105, $N100
    set $P2339, $P105
.annotate 'line', 1920
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "HLL"
    nqp_get_package_through_who $P107, $P106, "CommandLine"
    get_who $P108, $P107
    set $P109, $P108["Result"]
    $P110 = $P109."new"()
    set $P2340, $P110
.annotate 'line', 1921
    set $P105, $P2340
    unless_null $P105, vivify_1203
    new $P105, "Undef"
  vivify_1203:
    $P105."init"()
.annotate 'line', 1916
    set $P105, $P2341
    set $P105, $P2353
.annotate 'line', 1947
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop2405_handler
    push_eh $P108
  loop2405_test:
    set $P105, $P2338
    unless_null $P105, vivify_1204
    new $P105, "Undef"
  vivify_1204:
    set $N100, $P105
    set $P106, $P2339
    unless_null $P106, vivify_1205
    new $P106, "Undef"
  vivify_1205:
    set $N101, $P106
    islt $I101, $N100, $N101
    unless $I101, loop2405_done
  loop2405_redo:
    .const 'Sub' $P2362 = "268_1329260312.462" 
    capture_lex $P2362
    $P2362()
  loop2405_next:
    goto loop2405_test
  loop2405_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop2405_next
    eq $P109, .CONTROL_LOOP_REDO, loop2405_redo
  loop2405_done:
    pop_eh 
.annotate 'line', 2002
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    set $P106, $P2340
    unless_null $P106, vivify_1265
    new $P106, "Undef"
  vivify_1265:
    setattribute $P105, 'payload', $P106
    throw $P105
.annotate 'line', 1916
    .return ()
  control_2334:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, "payload"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("266_1329260312.462") :outer("265_1329260312.462")
    .param pmc param_2343
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1924
    .lex "$opt", param_2343
.annotate 'line', 1925
    find_lex $P105, "$i"
    unless_null $P105, vivify_1177
    new $P105, "Undef"
  vivify_1177:
    set $N100, $P105
    find_lex $P106, "$arg-count"
    unless_null $P106, vivify_1178
    new $P106, "Undef"
  vivify_1178:
    sub $P107, $P106, 1
    set $N101, $P107
    iseq $I100, $N100, $N101
    if $I100, if_2344
.annotate 'line', 1927
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$i"
    unless_null $P111, vivify_1179
    new $P111, "Undef"
  vivify_1179:
    add $P112, $P111, 1
    set $I101, $P112
    find_lex $P2346, "@args"
    unless_null $P2346, vivify_1180
    $P2346 = root_new ['parrot';'ResizablePMCArray']
  vivify_1180:
    set $P113, $P2346[$I101]
    unless_null $P113, vivify_1181
    new $P113, "Undef"
  vivify_1181:
    $P114 = $P110."is-option"($P113)
    if $P114, if_2345
.annotate 'line', 1929
    find_lex $P116, "$i"
    unless_null $P116, vivify_1182
    new $P116, "Undef"
  vivify_1182:
    add $P117, $P116, 1
    set $I102, $P117
    find_lex $P2348, "@args"
    unless_null $P2348, vivify_1183
    $P2348 = root_new ['parrot';'ResizablePMCArray']
  vivify_1183:
    set $P118, $P2348[$I102]
    unless_null $P118, vivify_1184
    new $P118, "Undef"
  vivify_1184:
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    find_lex $P121, "$?CLASS"
    repr_get_attr_obj $P2349, $P120, $P121, "%!stopper", 2
    unless_null $P2349, vivify_1185
    $P2349 = root_new ['parrot';'Hash']
  vivify_1185:
    set $P122, $P2349[$P118]
    unless_null $P122, vivify_1186
    new $P122, "Undef"
  vivify_1186:
    if $P122, if_2347
.annotate 'line', 1931
    find_lex $P123, "$i"
    unless_null $P123, vivify_1187
    new $P123, "Undef"
  vivify_1187:
    clone $P2350, $P123
    inc $P123
    find_lex $P123, "$i"
    unless_null $P123, vivify_1188
    new $P123, "Undef"
  vivify_1188:
    set $I103, $P123
    find_lex $P2351, "@args"
    unless_null $P2351, vivify_1189
    $P2351 = root_new ['parrot';'ResizablePMCArray']
  vivify_1189:
    set $P124, $P2351[$I103]
    unless_null $P124, vivify_1190
    new $P124, "Undef"
  vivify_1190:
    set $P115, $P124
.annotate 'line', 1929
    goto if_2347_end
  if_2347:
.annotate 'line', 1930
    new $P123, 'String'
    set $P123, "Option "
    set $P124, param_2343
    unless_null $P124, vivify_1191
    new $P124, "Undef"
  vivify_1191:
    concat $P125, $P123, $P124
    concat $P126, $P125, " needs a value, but is followed by a stopper"
    die $P126
  if_2347_end:
.annotate 'line', 1929
    set $P108, $P115
.annotate 'line', 1927
    goto if_2345_end
  if_2345:
.annotate 'line', 1928
    new $P115, 'String'
    set $P115, "Option "
    set $P116, param_2343
    unless_null $P116, vivify_1192
    new $P116, "Undef"
  vivify_1192:
    concat $P117, $P115, $P116
    concat $P118, $P117, " needs a value, but is followed by an option"
    die $P118
  if_2345_end:
.annotate 'line', 1927
    set $P104, $P108
.annotate 'line', 1925
    goto if_2344_end
  if_2344:
.annotate 'line', 1926
    new $P108, 'String'
    set $P108, "Option "
    set $P109, param_2343
    unless_null $P109, vivify_1193
    new $P109, "Undef"
  vivify_1193:
    concat $P110, $P108, $P109
    concat $P111, $P110, " needs a value"
    die $P111
  if_2344_end:
.annotate 'line', 1924
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("267_1329260312.462") :outer("265_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1939
    find_lex $P105, "$i"
    unless_null $P105, vivify_1194
    new $P105, "Undef"
  vivify_1194:
    clone $P2355, $P105
    inc $P105
.annotate 'line', 1941
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop2358_handler
    push_eh $P107
  loop2358_test:
    find_lex $P105, "$i"
    unless_null $P105, vivify_1195
    new $P105, "Undef"
  vivify_1195:
    set $N100, $P105
    find_lex $P106, "$arg-count"
    unless_null $P106, vivify_1196
    new $P106, "Undef"
  vivify_1196:
    set $N101, $P106
    islt $I100, $N100, $N101
    unless $I100, loop2358_done
  loop2358_redo:
.annotate 'line', 1942
    find_lex $P107, "$result"
    unless_null $P107, vivify_1197
    new $P107, "Undef"
  vivify_1197:
    find_lex $P108, "$i"
    unless_null $P108, vivify_1198
    new $P108, "Undef"
  vivify_1198:
    set $I101, $P108
    find_lex $P2356, "@args"
    unless_null $P2356, vivify_1199
    $P2356 = root_new ['parrot';'ResizablePMCArray']
  vivify_1199:
    set $P109, $P2356[$I101]
    unless_null $P109, vivify_1200
    new $P109, "Undef"
  vivify_1200:
    $P107."add-argument"($P109)
.annotate 'line', 1941
    find_lex $P107, "$i"
    unless_null $P107, vivify_1201
    new $P107, "Undef"
  vivify_1201:
    clone $P2357, $P107
    inc $P107
  loop2358_next:
    goto loop2358_test
  loop2358_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2358_next
    eq $P108, .CONTROL_LOOP_REDO, loop2358_redo
  loop2358_done:
    pop_eh 
.annotate 'line', 1939
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2361"  :anon :subid("268_1329260312.462") :outer("265_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1947
    .const 'Sub' $P2385 = "270_1329260312.462" 
    capture_lex $P2385
    .const 'Sub' $P2368 = "269_1329260312.462" 
    capture_lex $P2368
.annotate 'line', 1948
    new $P107, "Undef"
    set $P2363, $P107
    .lex "$cur", $P2363
    find_lex $P108, "$i"
    unless_null $P108, vivify_1206
    new $P108, "Undef"
  vivify_1206:
    set $I102, $P108
    find_lex $P2364, "@args"
    unless_null $P2364, vivify_1207
    $P2364 = root_new ['parrot';'ResizablePMCArray']
  vivify_1207:
    set $P109, $P2364[$I102]
    unless_null $P109, vivify_1208
    new $P109, "Undef"
  vivify_1208:
    set $P2363, $P109
.annotate 'line', 1949
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    set $P110, $P2363
    unless_null $P110, vivify_1209
    new $P110, "Undef"
  vivify_1209:
    $P111 = $P109."is-option"($P110)
    if $P111, if_2365
.annotate 'line', 1994
    set $P112, $P2363
    unless_null $P112, vivify_1210
    new $P112, "Undef"
  vivify_1210:
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_get_attr_obj $P2402, $P114, $P115, "%!stopper", 2
    unless_null $P2402, vivify_1211
    $P2402 = root_new ['parrot';'Hash']
  vivify_1211:
    set $P116, $P2402[$P112]
    unless_null $P116, vivify_1212
    new $P116, "Undef"
  vivify_1212:
    if $P116, if_2401
.annotate 'line', 1997
    find_lex $P117, "$result"
    unless_null $P117, vivify_1213
    new $P117, "Undef"
  vivify_1213:
    set $P118, $P2363
    unless_null $P118, vivify_1214
    new $P118, "Undef"
  vivify_1214:
    $P117."add-argument"($P118)
.annotate 'line', 1998
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$?CLASS"
    repr_get_attr_obj $P120, $P118, $P119, "$!stop-after-first-arg", 3
    unless_null $P120, vivify_1215
    new $P120, "Undef"
  vivify_1215:
    unless $P120, if_2403_end
    "slurp-rest"()
  if_2403_end:
.annotate 'line', 1996
    goto if_2401_end
  if_2401:
.annotate 'line', 1995
    "slurp-rest"()
  if_2401_end:
.annotate 'line', 1994
    goto if_2365_end
  if_2365:
.annotate 'line', 1950
    set $P112, $P2363
    unless_null $P112, vivify_1216
    new $P112, "Undef"
  vivify_1216:
    set $S100, $P112
    new $P113, "Float"
    assign $P113, 0
    set $I102, $P113
    new $P114, "Float"
    assign $P114, 2
    set $I103, $P114
    substr $S101, $S100, $I102, $I103
    iseq $I104, $S101, "--"
    if $I104, if_2366
.annotate 'line', 1972
    .const 'Sub' $P2385 = "270_1329260312.462" 
    capture_lex $P2385
    $P2385()
    goto if_2366_end
  if_2366:
.annotate 'line', 1950
    .const 'Sub' $P2368 = "269_1329260312.462" 
    capture_lex $P2368
    $P2368()
  if_2366_end:
  if_2365_end:
.annotate 'line', 1947
    find_lex $P108, "$i"
    unless_null $P108, vivify_1264
    new $P108, "Undef"
  vivify_1264:
    clone $P2404, $P108
    inc $P108
    .return ($P2404)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2384"  :anon :subid("270_1329260312.462") :outer("268_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1972
    .const 'Sub' $P2394 = "271_1329260312.462" 
    capture_lex $P2394
.annotate 'line', 1973
    new $P120, "Undef"
    set $P2386, $P120
    .lex "$opt", $P2386
    find_lex $P121, "$cur"
    unless_null $P121, vivify_1217
    new $P121, "Undef"
  vivify_1217:
    set $S102, $P121
    new $P122, "Float"
    assign $P122, 1
    set $I105, $P122
    substr $S103, $S102, $I105
    new $P123, 'String'
    set $P123, $S103
    set $P2386, $P123
.annotate 'line', 1974
    set $P122, $P2386
    unless_null $P122, vivify_1218
    new $P122, "Undef"
  vivify_1218:
    set $S102, $P122
    length $I105, $S102
    set $N102, $I105
    set $N103, 1
    iseq $I106, $N102, $N103
    if $I106, if_2387
.annotate 'line', 1984
    .const 'Sub' $P2394 = "271_1329260312.462" 
    capture_lex $P2394
    $P126 = $P2394()
    set $P121, $P126
.annotate 'line', 1974
    goto if_2387_end
  if_2387:
.annotate 'line', 1976
    set $P123, $P2386
    unless_null $P123, vivify_1226
    new $P123, "Undef"
  vivify_1226:
    find_lex $P124, "self"
    nqp_decontainerize $P125, $P124
    find_lex $P126, "$?CLASS"
    repr_get_attr_obj $P2389, $P125, $P126, "%!options", 1
    unless_null $P2389, vivify_1227
    $P2389 = root_new ['parrot';'Hash']
  vivify_1227:
    set $P127, $P2389[$P123]
    unless_null $P127, vivify_1228
    new $P127, "Undef"
  vivify_1228:
    if $P127, unless_2388_end
    new $P128, 'String'
    set $P128, "No such option -"
    set $P129, $P2386
    unless_null $P129, vivify_1229
    new $P129, "Undef"
  vivify_1229:
    concat $P130, $P128, $P129
    die $P130
  unless_2388_end:
.annotate 'line', 1977
    find_lex $P123, "self"
    nqp_decontainerize $P124, $P123
    set $P125, $P2386
    unless_null $P125, vivify_1230
    new $P125, "Undef"
  vivify_1230:
    $P126 = $P124."wants-value"($P125)
    if $P126, if_2390
.annotate 'line', 1981
    find_lex $P127, "$result"
    unless_null $P127, vivify_1231
    new $P127, "Undef"
  vivify_1231:
    set $P128, $P2386
    unless_null $P128, vivify_1232
    new $P128, "Undef"
  vivify_1232:
    $P127."add-option"($P128, 1)
.annotate 'line', 1980
    goto if_2390_end
  if_2390:
.annotate 'line', 1978
    find_lex $P127, "$result"
    unless_null $P127, vivify_1233
    new $P127, "Undef"
  vivify_1233:
    set $P128, $P2386
    unless_null $P128, vivify_1234
    new $P128, "Undef"
  vivify_1234:
.annotate 'line', 1979
    new $P129, 'String'
    set $P129, "-"
    set $P130, $P2386
    unless_null $P130, vivify_1235
    new $P130, "Undef"
  vivify_1235:
    concat $P131, $P129, $P130
    $P132 = "get-value"($P131)
    $P127."add-option"($P128, $P132)
  if_2390_end:
.annotate 'line', 1983
    new $P124, 'String'
    set $P124, "-"
    set $P125, $P2386
    unless_null $P125, vivify_1236
    new $P125, "Undef"
  vivify_1236:
    concat $P126, $P124, $P125
    find_lex $P127, "self"
    nqp_decontainerize $P128, $P127
    find_lex $P129, "$?CLASS"
    repr_get_attr_obj $P2392, $P128, $P129, "%!stopper", 2
    unless_null $P2392, vivify_1237
    $P2392 = root_new ['parrot';'Hash']
  vivify_1237:
    set $P130, $P2392[$P126]
    unless_null $P130, vivify_1238
    new $P130, "Undef"
  vivify_1238:
    if $P130, if_2391
    set $P123, $P130
    goto if_2391_end
  if_2391:
    $P131 = "slurp-rest"()
    set $P123, $P131
  if_2391_end:
.annotate 'line', 1974
    set $P121, $P123
  if_2387_end:
.annotate 'line', 1972
    .return ($P121)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block2393"  :anon :subid("271_1329260312.462") :outer("270_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1984
    .const 'Sub' $P2397 = "272_1329260312.462" 
    capture_lex $P2397
.annotate 'line', 1986
    new $P124, "Undef"
    set $P2395, $P124
    .lex "$iter", $P2395
    find_lex $P125, "$opt"
    unless_null $P125, vivify_1219
    new $P125, "Undef"
  vivify_1219:
    iter $P126, $P125
    set $P2395, $P126
.annotate 'line', 1987
    new $P127, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P127, loop2400_handler
    push_eh $P127
  loop2400_test:
    set $P125, $P2395
    unless_null $P125, vivify_1220
    new $P125, "Undef"
  vivify_1220:
    unless $P125, loop2400_done
  loop2400_redo:
    .const 'Sub' $P2397 = "272_1329260312.462" 
    capture_lex $P2397
    $P2397()
  loop2400_next:
    goto loop2400_test
  loop2400_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P128, exception, 'type'
    eq $P128, .CONTROL_LOOP_NEXT, loop2400_next
    eq $P128, .CONTROL_LOOP_REDO, loop2400_redo
  loop2400_done:
    pop_eh 
.annotate 'line', 1984
    .return ($P125)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2396"  :anon :subid("272_1329260312.462") :outer("271_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1988
    new $P126, "Undef"
    set $P2398, $P126
    .lex "$o", $P2398
    find_lex $P127, "$iter"
    unless_null $P127, vivify_1221
    new $P127, "Undef"
  vivify_1221:
    shift $P128, $P127
    set $P2398, $P128
.annotate 'line', 1989
    find_lex $P127, "self"
    nqp_decontainerize $P128, $P127
    set $P129, $P2398
    unless_null $P129, vivify_1222
    new $P129, "Undef"
  vivify_1222:
    $P130 = $P128."wants-value"($P129)
    unless $P130, if_2399_end
    new $P131, 'String'
    set $P131, "Option -"
    set $P132, $P2398
    unless_null $P132, vivify_1223
    new $P132, "Undef"
  vivify_1223:
    concat $P133, $P131, $P132
    concat $P134, $P133, " requires a value and cannot be grouped"
    die $P134
  if_2399_end:
.annotate 'line', 1990
    find_lex $P127, "$result"
    unless_null $P127, vivify_1224
    new $P127, "Undef"
  vivify_1224:
    set $P128, $P2398
    unless_null $P128, vivify_1225
    new $P128, "Undef"
  vivify_1225:
    $P129 = $P127."add-option"($P128, 1)
.annotate 'line', 1987
    .return ($P129)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2367"  :anon :subid("269_1329260312.462") :outer("268_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1952
    new $P115, "Undef"
    set $P2369, $P115
    .lex "$opt", $P2369
.annotate 'line', 1953
    new $P116, "Undef"
    set $P2370, $P116
    .lex "$idx", $P2370
.annotate 'line', 1954
    new $P117, "Undef"
    set $P2371, $P117
    .lex "$value", $P2371
.annotate 'line', 1955
    new $P118, "Undef"
    set $P2372, $P118
    .lex "$has-value", $P2372
.annotate 'line', 1952
    find_lex $P119, "$i"
    unless_null $P119, vivify_1239
    new $P119, "Undef"
  vivify_1239:
    set $I105, $P119
    find_lex $P2373, "@args"
    unless_null $P2373, vivify_1240
    $P2373 = root_new ['parrot';'ResizablePMCArray']
  vivify_1240:
    set $P120, $P2373[$I105]
    unless_null $P120, vivify_1241
    new $P120, "Undef"
  vivify_1241:
    set $S102, $P120
    new $P121, "Float"
    assign $P121, 2
    set $I106, $P121
    substr $S103, $S102, $I106
    new $P122, 'String'
    set $P122, $S103
    set $P2369, $P122
.annotate 'line', 1953
    set $P119, $P2369
    unless_null $P119, vivify_1242
    new $P119, "Undef"
  vivify_1242:
    set $S102, $P119
    index $I105, $S102, "="
    new $P120, 'Integer'
    set $P120, $I105
    set $P2370, $P120
.annotate 'line', 1954
    new $P119, "Float"
    assign $P119, 1
    set $P2371, $P119
.annotate 'line', 1955
    new $P119, "Float"
    assign $P119, 0
    set $P2372, $P119
.annotate 'line', 1957
    set $P119, $P2370
    unless_null $P119, vivify_1243
    new $P119, "Undef"
  vivify_1243:
    set $N102, $P119
    set $N103, 0
    isge $I105, $N102, $N103
    if $I105, if_2374
.annotate 'line', 1961
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    set $P122, $P2369
    unless_null $P122, vivify_1244
    new $P122, "Undef"
  vivify_1244:
    $P123 = $P121."optional-value"($P122)
    unless $P123, if_2375_end
.annotate 'line', 1962
    new $P124, "String"
    assign $P124, ""
    set $P2371, $P124
.annotate 'line', 1963
    new $P124, "Float"
    assign $P124, 1
    set $P2372, $P124
  if_2375_end:
.annotate 'line', 1961
    goto if_2374_end
  if_2374:
.annotate 'line', 1958
    set $P120, $P2369
    unless_null $P120, vivify_1245
    new $P120, "Undef"
  vivify_1245:
    set $S102, $P120
    set $P121, $P2370
    unless_null $P121, vivify_1246
    new $P121, "Undef"
  vivify_1246:
    add $P122, $P121, 1
    set $I106, $P122
    substr $S103, $S102, $I106
    new $P123, 'String'
    set $P123, $S103
    set $P2371, $P123
.annotate 'line', 1959
    set $P120, $P2369
    unless_null $P120, vivify_1247
    new $P120, "Undef"
  vivify_1247:
    set $S102, $P120
    new $P121, "Float"
    assign $P121, 0
    set $I106, $P121
    set $P122, $P2370
    unless_null $P122, vivify_1248
    new $P122, "Undef"
  vivify_1248:
    set $I107, $P122
    substr $S103, $S102, $I106, $I107
    new $P123, 'String'
    set $P123, $S103
    set $P2369, $P123
.annotate 'line', 1960
    new $P120, "Float"
    assign $P120, 1
    set $P2372, $P120
  if_2374_end:
.annotate 'line', 1965
    set $P122, $P2369
    unless_null $P122, vivify_1249
    new $P122, "Undef"
  vivify_1249:
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    find_lex $P121, "$?CLASS"
    repr_get_attr_obj $P2377, $P120, $P121, "%!options", 1
    unless_null $P2377, vivify_1250
    $P2377 = root_new ['parrot';'Hash']
  vivify_1250:
    exists $I105, $P2377[$P122]
    if $I105, unless_2376_end
    new $P123, 'String'
    set $P123, "Illegal option --"
    set $P124, $P2369
    unless_null $P124, vivify_1251
    new $P124, "Undef"
  vivify_1251:
    concat $P125, $P123, $P124
    die $P125
  unless_2376_end:
.annotate 'line', 1966
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    set $P122, $P2369
    unless_null $P122, vivify_1252
    new $P122, "Undef"
  vivify_1252:
    $P123 = $P121."wants-value"($P122)
    isfalse $I105, $P123
    if $I105, if_2379
    new $P119, 'Integer'
    set $P119, $I105
    goto if_2379_end
  if_2379:
    set $P124, $P2372
    unless_null $P124, vivify_1253
    new $P124, "Undef"
  vivify_1253:
    set $P119, $P124
  if_2379_end:
    unless $P119, if_2378_end
    new $P125, 'String'
    set $P125, "Option --"
    set $P126, $P2369
    unless_null $P126, vivify_1254
    new $P126, "Undef"
  vivify_1254:
    concat $P127, $P125, $P126
    concat $P128, $P127, " does not allow a value"
    die $P128
  if_2378_end:
.annotate 'line', 1967
    set $P120, $P2372
    unless_null $P120, vivify_1255
    new $P120, "Undef"
  vivify_1255:
    isfalse $I105, $P120
    if $I105, if_2381
    new $P119, 'Integer'
    set $P119, $I105
    goto if_2381_end
  if_2381:
    find_lex $P121, "self"
    nqp_decontainerize $P122, $P121
    set $P123, $P2369
    unless_null $P123, vivify_1256
    new $P123, "Undef"
  vivify_1256:
    $P124 = $P122."wants-value"($P123)
    set $P119, $P124
  if_2381_end:
    unless $P119, if_2380_end
.annotate 'line', 1968
    new $P125, 'String'
    set $P125, "--"
    set $P126, $P2369
    unless_null $P126, vivify_1257
    new $P126, "Undef"
  vivify_1257:
    concat $P127, $P125, $P126
    $P128 = "get-value"($P127)
    set $P2371, $P128
  if_2380_end:
.annotate 'line', 1970
    find_lex $P119, "$result"
    unless_null $P119, vivify_1258
    new $P119, "Undef"
  vivify_1258:
    set $P120, $P2369
    unless_null $P120, vivify_1259
    new $P120, "Undef"
  vivify_1259:
    set $P121, $P2371
    unless_null $P121, vivify_1260
    new $P121, "Undef"
  vivify_1260:
    $P119."add-option"($P120, $P121)
.annotate 'line', 1971
    new $P120, 'String'
    set $P120, "--"
    set $P121, $P2369
    unless_null $P121, vivify_1261
    new $P121, "Undef"
  vivify_1261:
    concat $P122, $P120, $P121
    find_lex $P123, "self"
    nqp_decontainerize $P124, $P123
    find_lex $P125, "$?CLASS"
    repr_get_attr_obj $P2383, $P124, $P125, "%!stopper", 2
    unless_null $P2383, vivify_1262
    $P2383 = root_new ['parrot';'Hash']
  vivify_1262:
    set $P126, $P2383[$P122]
    unless_null $P126, vivify_1263
    new $P126, "Undef"
  vivify_1263:
    if $P126, if_2382
    set $P119, $P126
    goto if_2382_end
  if_2382:
    find_lex $P127, "slurp-rest"
    set $P119, $P127
  if_2382_end:
.annotate 'line', 1950
    .return ($P119)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "_block2407"  :subid("273_1329260312.462") :outer("10_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2028
    .const 'Sub' $P2513 = "294_1329260312.462" 
    capture_lex $P2513
    .const 'Sub' $P2510 = "293_1329260312.462" 
    capture_lex $P2510
    .const 'Sub' $P2507 = "292_1329260312.462" 
    capture_lex $P2507
    .const 'Sub' $P2505 = "291_1329260312.462" 
    capture_lex $P2505
    .const 'Sub' $P2503 = "290_1329260312.462" 
    capture_lex $P2503
    .const 'Sub' $P2487 = "288_1329260312.462" 
    capture_lex $P2487
    .const 'Sub' $P2478 = "287_1329260312.462" 
    capture_lex $P2478
    .const 'Sub' $P2469 = "286_1329260312.462" 
    capture_lex $P2469
    .const 'Sub' $P2467 = "285_1329260312.462" 
    capture_lex $P2467
    .const 'Sub' $P2462 = "284_1329260312.462" 
    capture_lex $P2462
    .const 'Sub' $P2456 = "283_1329260312.462" 
    capture_lex $P2456
    .const 'Sub' $P2450 = "282_1329260312.462" 
    capture_lex $P2450
    .const 'Sub' $P2446 = "281_1329260312.462" 
    capture_lex $P2446
    .const 'Sub' $P2443 = "280_1329260312.462" 
    capture_lex $P2443
    .const 'Sub' $P2437 = "279_1329260312.462" 
    capture_lex $P2437
    .const 'Sub' $P2434 = "278_1329260312.462" 
    capture_lex $P2434
    .const 'Sub' $P2427 = "277_1329260312.462" 
    capture_lex $P2427
    .const 'Sub' $P2421 = "276_1329260312.462" 
    capture_lex $P2421
    .const 'Sub' $P2416 = "275_1329260312.462" 
    capture_lex $P2416
    .const 'Sub' $P2411 = "274_1329260312.462" 
    capture_lex $P2411
    .lex "$?PACKAGE", $P2409
    .lex "$?CLASS", $P2410
.annotate 'line', 2249
    .const 'Sub' $P2513 = "294_1329260312.462" 
    newclosure $P2529, $P2513
.annotate 'line', 2028
    .return ($P2529)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "new" :anon :subid("274_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2412
    .param pmc param_2413 :named("handle")
    .param pmc param_2414 :optional :named("description")
    .param int has_param_2414 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2063
    .lex "self", param_2412
    .lex "$handle", param_2413
    if has_param_2414, optparam_1266
    new $P101, "String"
    assign $P101, "<unknown>"
    set param_2414, $P101
  optparam_1266:
    .lex "$description", param_2414
.annotate 'line', 2064
    new $P102, "Undef"
    set $P2415, $P102
    .lex "$obj", $P2415
    set $P103, param_2412
    nqp_decontainerize $P104, $P103
    $P105 = $P104."CREATE"()
    set $P2415, $P105
.annotate 'line', 2065
    set $P103, $P2415
    unless_null $P103, vivify_1267
    new $P103, "Undef"
  vivify_1267:
    set $P104, param_2413
    unless_null $P104, vivify_1268
    new $P104, "Undef"
  vivify_1268:
    set $P105, param_2414
    unless_null $P105, vivify_1269
    new $P105, "Undef"
  vivify_1269:
    $P103."BUILD"($P104 :named("handle"), $P105 :named("description"))
.annotate 'line', 2063
    set $P103, $P2415
    unless_null $P103, vivify_1270
    new $P103, "Undef"
  vivify_1270:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "BUILD" :anon :subid("275_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2417
    .param pmc param_2418 :named("handle")
    .param pmc param_2419 :named("description")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2069
    .lex "self", param_2417
    .lex "$handle", param_2418
    .lex "$description", param_2419
.annotate 'line', 2070
    set $P101, param_2418
    unless_null $P101, vivify_1271
    new $P101, "Undef"
  vivify_1271:
    set $S100, $P101
    nqp_create_sc $P102, $S100
    set $P103, param_2417
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "$!sc", 0, $P102
.annotate 'line', 2071
    set $P101, param_2418
    unless_null $P101, vivify_1272
    new $P101, "Undef"
  vivify_1272:
    set $P102, param_2417
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!handle", 1, $P101
.annotate 'line', 2072
    new $P101, "Hash"
    set $P102, param_2417
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "%!addr_to_slot", 7, $P101
.annotate 'line', 2073
    new $P101, "ResizablePMCArray"
    set $P102, param_2417
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!fixup_tasks", 6, $P101
.annotate 'line', 2074
    new $P101, "ResizablePMCArray"
    set $P102, param_2417
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!load_dependency_tasks", 5, $P101
.annotate 'line', 2075
    set $P101, param_2417
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!sc", 0
    unless_null $P104, vivify_1273
    new $P104, "Undef"
  vivify_1273:
    set $P105, param_2419
    unless_null $P105, vivify_1274
    new $P105, "Undef"
  vivify_1274:
    $P104."set_description"($P105)
.annotate 'line', 2076
    find_dynamic_lex $P103, "%*COMPILING"
    unless_null $P103, vivify_1275
    get_hll_global $P101, "GLOBAL"
    get_who $P102, $P101
    set $P103, $P102["%COMPILING"]
    unless_null $P103, vivify_1276
    die "Contextual %*COMPILING not found"
  vivify_1276:
  vivify_1275:
    set $P2420, $P103["%?OPTIONS"]
    unless_null $P2420, vivify_1277
    $P2420 = root_new ['parrot';'Hash']
  vivify_1277:
    set $P104, $P2420["target"]
    unless_null $P104, vivify_1278
    new $P104, "Undef"
  vivify_1278:
    set $S100, $P104
    iseq $I100, $S100, "pir"
    new $P105, 'Integer'
    set $P105, $I100
    set $P106, param_2417
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_bind_attr_obj $P107, $P108, "$!precomp_mode", 2, $P105
.annotate 'line', 2077
    new $P101, "Float"
    assign $P101, 0
    set $P102, param_2417
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!num_code_refs", 3, $P101
.annotate 'line', 2078
    new $P101, "ResizablePMCArray"
    set $P102, param_2417
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!code_ref_blocks", 4, $P101
.annotate 'line', 2069
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "slot_for_object" :anon :subid("276_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2422
    .param pmc param_2423
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2082
    .lex "self", param_2422
    .lex "$obj", param_2423
.annotate 'line', 2083
    new $P101, "Undef"
    set $P2424, $P101
    .lex "$slot", $P2424
    set $P102, param_2423
    unless_null $P102, vivify_1279
    new $P102, "Undef"
  vivify_1279:
    get_id $I100, $P102
    set $P103, param_2422
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2425, $P104, $P105, "%!addr_to_slot", 7
    unless_null $P2425, vivify_1280
    $P2425 = root_new ['parrot';'Hash']
  vivify_1280:
    set $P106, $P2425[$I100]
    unless_null $P106, vivify_1281
    new $P106, "Undef"
  vivify_1281:
    set $P2424, $P106
.annotate 'line', 2084
    set $P102, $P2424
    unless_null $P102, vivify_1282
    new $P102, "Undef"
  vivify_1282:
    defined $I100, $P102
    if $I100, unless_2426_end
.annotate 'line', 2085
    die "slot_for_object called on object not in context"
  unless_2426_end:
.annotate 'line', 2082
    set $P102, $P2424
    unless_null $P102, vivify_1283
    new $P102, "Undef"
  vivify_1283:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "get_slot_past_for_object" :anon :subid("277_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2428
    .param pmc param_2429
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2094
    .lex "self", param_2428
    .lex "$obj", param_2429
.annotate 'line', 2095
    new $P101, "Undef"
    set $P2430, $P101
    .lex "$slot", $P2430
.annotate 'line', 2096
    new $P102, "Undef"
    set $P2431, $P102
    .lex "$past", $P2431
.annotate 'line', 2095
    set $P103, param_2428
    nqp_decontainerize $P104, $P103
    set $P105, param_2429
    unless_null $P105, vivify_1284
    new $P105, "Undef"
  vivify_1284:
    $P106 = $P104."slot_for_object"($P105)
    set $P2430, $P106
.annotate 'line', 2096
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "PAST"
    get_who $P105, $P104
    set $P106, $P105["Op"]
    set $P107, param_2428
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!handle", 1
    unless_null $P110, vivify_1285
    new $P110, "Undef"
  vivify_1285:
    set $P111, $P2430
    unless_null $P111, vivify_1286
    new $P111, "Undef"
  vivify_1286:
    $P112 = $P106."new"($P110, $P111, "nqp_get_sc_object Psi" :named("pirop"))
    set $P2431, $P112
.annotate 'line', 2097
    new $P103, "Float"
    assign $P103, 1
    set $P2432, $P2431
    unless_null $P2432, vivify_1287
    $P2432 = root_new ['parrot';'Hash']
    set $P2431, $P2432
  vivify_1287:
    set $P2432["has_compile_time_value"], $P103
.annotate 'line', 2098
    set $P103, param_2429
    unless_null $P103, vivify_1288
    new $P103, "Undef"
  vivify_1288:
    set $P2433, $P2431
    unless_null $P2433, vivify_1289
    $P2433 = root_new ['parrot';'Hash']
    set $P2431, $P2433
  vivify_1289:
    set $P2433["compile_time_value"], $P103
.annotate 'line', 2094
    set $P103, $P2431
    unless_null $P103, vivify_1290
    new $P103, "Undef"
  vivify_1290:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "get_slot_past_for_code_ref_at" :anon :subid("278_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2435
    .param pmc param_2436
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2103
    .lex "self", param_2435
    .lex "$idx", param_2436
.annotate 'line', 2104
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "PAST"
    get_who $P103, $P102
    set $P104, $P103["Op"]
    set $P105, param_2435
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P108, $P106, $P107, "$!handle", 1
    unless_null $P108, vivify_1291
    new $P108, "Undef"
  vivify_1291:
    set $P109, param_2436
    unless_null $P109, vivify_1292
    new $P109, "Undef"
  vivify_1292:
    $P110 = $P104."new"($P108, $P109, "nqp_get_sc_code_ref Psi" :named("pirop"))
.annotate 'line', 2103
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.include "except_types.pasm"
.sub "set_slot_past" :anon :subid("279_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2440
    .param pmc param_2441
    .param pmc param_2442
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2108
    new $P2439, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2439, control_2438
    push_eh $P2439
    .lex "self", param_2440
    .lex "$slot", param_2441
    .lex "$past_to_set", param_2442
.annotate 'line', 2109
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    get_hll_global $P102, "GLOBAL"
    nqp_get_package_through_who $P103, $P102, "PAST"
    get_who $P104, $P103
    set $P105, $P104["Op"]
    set $P106, param_2440
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P109, $P107, $P108, "$!handle", 1
    unless_null $P109, vivify_1293
    new $P109, "Undef"
  vivify_1293:
    set $P110, param_2441
    unless_null $P110, vivify_1294
    new $P110, "Undef"
  vivify_1294:
    set $P111, param_2442
    unless_null $P111, vivify_1295
    new $P111, "Undef"
  vivify_1295:
    $P112 = $P105."new"($P109, $P110, $P111, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P101, 'payload', $P112
    throw $P101
.annotate 'line', 2108
    .return ()
  control_2438:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "set_cur_sc" :anon :subid("280_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2444
    .param pmc param_2445
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2115
    .lex "self", param_2444
    .lex "$to_wrap", param_2445
.annotate 'line', 2116
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "PAST"
    get_who $P103, $P102
    set $P104, $P103["Op"]
    set $P105, param_2445
    unless_null $P105, vivify_1296
    new $P105, "Undef"
  vivify_1296:
.annotate 'line', 2119
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P107, $P106, "PAST"
    get_who $P108, $P107
    set $P109, $P108["Var"]
    $P110 = $P109."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P111 = $P104."new"($P105, $P110, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2115
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "add_object_to_cur_sc_past" :anon :subid("281_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2447
    .param pmc param_2448
    .param pmc param_2449
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2123
    .lex "self", param_2447
    .lex "$slot", param_2448
    .lex "$to_wrap", param_2449
.annotate 'line', 2124
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "PAST"
    get_who $P103, $P102
    set $P104, $P103["Op"]
.annotate 'line', 2126
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "PAST"
    get_who $P107, $P106
    set $P108, $P107["Var"]
    $P109 = $P108."new"("cur_sc" :named("name"), "register" :named("scope"))
    set $P110, param_2448
    unless_null $P110, vivify_1297
    new $P110, "Undef"
  vivify_1297:
    set $P111, param_2449
    unless_null $P111, vivify_1298
    new $P111, "Undef"
  vivify_1298:
    $P112 = $P104."new"($P109, $P110, $P111, "nqp_add_object_to_sc 2PiP" :named("pirop"))
.annotate 'line', 2123
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "add_object" :anon :subid("282_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2451
    .param pmc param_2452
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2133
    .lex "self", param_2451
    .lex "$obj", param_2452
.annotate 'line', 2135
    new $P101, "Undef"
    set $P2453, $P101
    .lex "$idx", $P2453
.annotate 'line', 2134
    set $P102, param_2452
    unless_null $P102, vivify_1299
    new $P102, "Undef"
  vivify_1299:
    set $P103, param_2451
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P106, $P104, $P105, "$!sc", 0
    unless_null $P106, vivify_1300
    new $P106, "Undef"
  vivify_1300:
    nqp_set_sc_for_object $P102, $P106
.annotate 'line', 2135
    set $P102, param_2451
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!sc", 0
    unless_null $P105, vivify_1301
    new $P105, "Undef"
  vivify_1301:
    $P106 = $P105."elems"()
    set $P2453, $P106
.annotate 'line', 2136
    set $P102, param_2452
    unless_null $P102, vivify_1302
    new $P102, "Undef"
  vivify_1302:
    set $P103, $P2453
    unless_null $P103, vivify_1303
    new $P103, "Undef"
  vivify_1303:
    set $I100, $P103
    set $P104, param_2451
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P2454, $P105, $P106, "$!sc", 0
    unless_null $P2454, vivify_1304
    $P2454 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "$!sc", 0, $P2454
  vivify_1304:
    set $P2454[$I100], $P102
.annotate 'line', 2137
    set $P102, $P2453
    unless_null $P102, vivify_1305
    new $P102, "Undef"
  vivify_1305:
    set $P103, param_2452
    unless_null $P103, vivify_1306
    new $P103, "Undef"
  vivify_1306:
    get_id $I100, $P103
    set $P104, param_2451
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P2455, $P105, $P106, "%!addr_to_slot", 7
    unless_null $P2455, vivify_1307
    $P2455 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!addr_to_slot", 7, $P2455
  vivify_1307:
    set $P2455[$I100], $P102
.annotate 'line', 2133
    set $P102, $P2453
    unless_null $P102, vivify_1308
    new $P102, "Undef"
  vivify_1308:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "add_code_LEGACY" :anon :subid("283_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2457
    .param pmc param_2458
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2143
    .lex "self", param_2457
    .lex "$obj", param_2458
.annotate 'line', 2144
    new $P101, "Undef"
    set $P2459, $P101
    .lex "$idx", $P2459
    set $P102, param_2457
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!sc", 0
    unless_null $P105, vivify_1309
    new $P105, "Undef"
  vivify_1309:
    $P106 = $P105."elems"()
    set $P2459, $P106
.annotate 'line', 2145
    set $P102, param_2458
    unless_null $P102, vivify_1310
    new $P102, "Undef"
  vivify_1310:
    set $P103, $P2459
    unless_null $P103, vivify_1311
    new $P103, "Undef"
  vivify_1311:
    set $I100, $P103
    set $P104, param_2457
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P2460, $P105, $P106, "$!sc", 0
    unless_null $P2460, vivify_1312
    $P2460 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "$!sc", 0, $P2460
  vivify_1312:
    set $P2460[$I100], $P102
.annotate 'line', 2146
    set $P102, $P2459
    unless_null $P102, vivify_1313
    new $P102, "Undef"
  vivify_1313:
    set $P103, param_2458
    unless_null $P103, vivify_1314
    new $P103, "Undef"
  vivify_1314:
    get_id $I100, $P103
    set $P104, param_2457
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P2461, $P105, $P106, "%!addr_to_slot", 7
    unless_null $P2461, vivify_1315
    $P2461 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!addr_to_slot", 7, $P2461
  vivify_1315:
    set $P2461[$I100], $P102
.annotate 'line', 2143
    set $P102, $P2459
    unless_null $P102, vivify_1316
    new $P102, "Undef"
  vivify_1316:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "add_root_code_ref" :anon :subid("284_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2463
    .param pmc param_2464
    .param pmc param_2465
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2151
    .lex "self", param_2463
    .lex "$code_ref", param_2464
    .lex "$past_block", param_2465
.annotate 'line', 2152
    new $P101, "Undef"
    set $P2466, $P101
    .lex "$code_ref_idx", $P2466
    set $P102, param_2463
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!num_code_refs", 3
    unless_null $P105, vivify_1317
    new $P105, "Undef"
  vivify_1317:
    set $P2466, $P105
.annotate 'line', 2153
    set $P102, param_2463
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!num_code_refs", 3
    unless_null $P105, vivify_1318
    new $P105, "Undef"
  vivify_1318:
    add $P106, $P105, 1
    set $P107, param_2463
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_bind_attr_obj $P108, $P109, "$!num_code_refs", 3, $P106
.annotate 'line', 2154
    set $P102, param_2463
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!code_ref_blocks", 4
    unless_null $P105, vivify_1319
    new $P105, "Undef"
  vivify_1319:
    set $P106, param_2465
    unless_null $P106, vivify_1320
    new $P106, "Undef"
  vivify_1320:
    $P105."push"($P106)
.annotate 'line', 2155
    set $P102, param_2463
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!sc", 0
    unless_null $P105, vivify_1321
    new $P105, "Undef"
  vivify_1321:
    set $P106, $P2466
    unless_null $P106, vivify_1322
    new $P106, "Undef"
  vivify_1322:
    set $I100, $P106
    set $P107, param_2464
    unless_null $P107, vivify_1323
    new $P107, "Undef"
  vivify_1323:
    nqp_add_code_ref_to_sc $P105, $I100, $P107
.annotate 'line', 2151
    set $P102, $P2466
    unless_null $P102, vivify_1324
    new $P102, "Undef"
  vivify_1324:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "is_precompilation_mode" :anon :subid("285_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2468
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2160
    .lex "self", param_2468
    set $P101, param_2468
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!precomp_mode", 2
    unless_null $P104, vivify_1325
    new $P104, "Undef"
  vivify_1325:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "add_load_dependency_task" :anon :subid("286_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2470
    .param pmc param_2471 :optional :named("deserialize_past")
    .param int has_param_2471 :opt_flag
    .param pmc param_2472 :optional :named("fixup_past")
    .param int has_param_2472 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2166
    .lex "self", param_2470
    if has_param_2471, optparam_1326
    new $P101, "Undef"
    set param_2471, $P101
  optparam_1326:
    .lex "$deserialize_past", param_2471
    if has_param_2472, optparam_1327
    new $P102, "Undef"
    set param_2472, $P102
  optparam_1327:
    .lex "$fixup_past", param_2472
.annotate 'line', 2167
    set $P104, param_2470
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P107, $P105, $P106, "$!precomp_mode", 2
    unless_null $P107, vivify_1328
    new $P107, "Undef"
  vivify_1328:
    if $P107, if_2473
.annotate 'line', 2171
    set $P110, param_2472
    unless_null $P110, vivify_1329
    new $P110, "Undef"
  vivify_1329:
    if $P110, if_2476
    set $P109, $P110
    goto if_2476_end
  if_2476:
    set $P111, param_2470
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P2477, $P112, $P113, "@!load_dependency_tasks", 5
    unless_null $P2477, vivify_1330
    $P2477 = root_new ['parrot';'ResizablePMCArray']
  vivify_1330:
    set $P114, param_2472
    unless_null $P114, vivify_1331
    new $P114, "Undef"
  vivify_1331:
    $P115 = $P2477."push"($P114)
    set $P109, $P115
  if_2476_end:
.annotate 'line', 2170
    set $P103, $P109
.annotate 'line', 2167
    goto if_2473_end
  if_2473:
.annotate 'line', 2168
    set $P109, param_2471
    unless_null $P109, vivify_1332
    new $P109, "Undef"
  vivify_1332:
    if $P109, if_2474
    set $P108, $P109
    goto if_2474_end
  if_2474:
    set $P110, param_2470
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P2475, $P111, $P112, "@!load_dependency_tasks", 5
    unless_null $P2475, vivify_1333
    $P2475 = root_new ['parrot';'ResizablePMCArray']
  vivify_1333:
    set $P113, param_2471
    unless_null $P113, vivify_1334
    new $P113, "Undef"
  vivify_1334:
    $P114 = $P2475."push"($P113)
    set $P108, $P114
  if_2474_end:
.annotate 'line', 2167
    set $P103, $P108
  if_2473_end:
.annotate 'line', 2166
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "add_fixup_task" :anon :subid("287_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2479
    .param pmc param_2480 :optional :named("deserialize_past")
    .param int has_param_2480 :opt_flag
    .param pmc param_2481 :optional :named("fixup_past")
    .param int has_param_2481 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2177
    .lex "self", param_2479
    if has_param_2480, optparam_1335
    new $P101, "Undef"
    set param_2480, $P101
  optparam_1335:
    .lex "$deserialize_past", param_2480
    if has_param_2481, optparam_1336
    new $P102, "Undef"
    set param_2481, $P102
  optparam_1336:
    .lex "$fixup_past", param_2481
.annotate 'line', 2178
    set $P104, param_2479
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P107, $P105, $P106, "$!precomp_mode", 2
    unless_null $P107, vivify_1337
    new $P107, "Undef"
  vivify_1337:
    if $P107, if_2482
.annotate 'line', 2182
    set $P110, param_2481
    unless_null $P110, vivify_1338
    new $P110, "Undef"
  vivify_1338:
    if $P110, if_2485
    set $P109, $P110
    goto if_2485_end
  if_2485:
    set $P111, param_2479
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P2486, $P112, $P113, "@!fixup_tasks", 6
    unless_null $P2486, vivify_1339
    $P2486 = root_new ['parrot';'ResizablePMCArray']
  vivify_1339:
    set $P114, param_2481
    unless_null $P114, vivify_1340
    new $P114, "Undef"
  vivify_1340:
    $P115 = $P2486."push"($P114)
    set $P109, $P115
  if_2485_end:
.annotate 'line', 2181
    set $P103, $P109
.annotate 'line', 2178
    goto if_2482_end
  if_2482:
.annotate 'line', 2179
    set $P109, param_2480
    unless_null $P109, vivify_1341
    new $P109, "Undef"
  vivify_1341:
    if $P109, if_2483
    set $P108, $P109
    goto if_2483_end
  if_2483:
    set $P110, param_2479
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P2484, $P111, $P112, "@!fixup_tasks", 6
    unless_null $P2484, vivify_1342
    $P2484 = root_new ['parrot';'ResizablePMCArray']
  vivify_1342:
    set $P113, param_2480
    unless_null $P113, vivify_1343
    new $P113, "Undef"
  vivify_1343:
    $P114 = $P2484."push"($P113)
    set $P108, $P114
  if_2483_end:
.annotate 'line', 2178
    set $P103, $P108
  if_2482_end:
.annotate 'line', 2177
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "get_ref" :anon :subid("288_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2488
    .param pmc param_2489
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2188
    .const 'Sub' $P2494 = "289_1329260312.462" 
    capture_lex $P2494
    .lex "self", param_2488
    .lex "$obj", param_2489
.annotate 'line', 2191
    new $P101, "Undef"
    set $P2490, $P101
    .lex "$sc", $P2490
    set $P102, param_2489
    unless_null $P102, vivify_1344
    new $P102, "Undef"
  vivify_1344:
    nqp_get_sc_for_object $P103, $P102
    set $P2490, $P103
.annotate 'line', 2192
    set $P102, $P2490
    unless_null $P102, vivify_1345
    new $P102, "Undef"
  vivify_1345:
    defined $I100, $P102
    if $I100, unless_2491_end
.annotate 'line', 2193
    new $P103, "String"
    assign $P103, "Object of type '"
    set $P104, param_2489
    unless_null $P104, vivify_1346
    new $P104, "Undef"
  vivify_1346:
    get_how $P105, $P104
    set $P106, param_2489
    unless_null $P106, vivify_1347
    new $P106, "Undef"
  vivify_1347:
    $S100 = $P105."name"($P106)
    concat $P107, $P103, $S100
    concat $P108, $P107, "' cannot be referenced without having been "
    concat $P109, $P108, "assigned a serialization context"
.annotate 'line', 2194
    die $P109
  unless_2491_end:
.annotate 'line', 2201
    set $P103, $P2490
    unless_null $P103, vivify_1348
    new $P103, "Undef"
  vivify_1348:
    set $P104, param_2488
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P107, $P105, $P106, "$!sc", 0
    unless_null $P107, vivify_1349
    new $P107, "Undef"
  vivify_1349:
    issame $I100, $P103, $P107
    if $I100, if_2492
.annotate 'line', 2204
    .const 'Sub' $P2494 = "289_1329260312.462" 
    capture_lex $P2494
    $P112 = $P2494()
    set $P102, $P112
.annotate 'line', 2201
    goto if_2492_end
  if_2492:
.annotate 'line', 2202
    set $P108, param_2488
    nqp_decontainerize $P109, $P108
    set $P110, param_2489
    unless_null $P110, vivify_1365
    new $P110, "Undef"
  vivify_1365:
    $P111 = $P109."get_slot_past_for_object"($P110)
.annotate 'line', 2201
    set $P102, $P111
  if_2492_end:
.annotate 'line', 2188
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "_block2493"  :anon :subid("289_1329260312.462") :outer("288_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2205
    new $P108, "Undef"
    set $P2495, $P108
    .lex "$handle", $P2495
.annotate 'line', 2219
    new $P109, "Undef"
    set $P2496, $P109
    .lex "$past", $P2496
.annotate 'line', 2205
    find_lex $P110, "$sc"
    unless_null $P110, vivify_1350
    new $P110, "Undef"
  vivify_1350:
    $P112 = $P110."handle"()
    set $P2495, $P112
.annotate 'line', 2206
    set $P114, $P2495
    unless_null $P114, vivify_1351
    new $P114, "Undef"
  vivify_1351:
    find_lex $P110, "self"
    nqp_decontainerize $P112, $P110
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P2498, $P112, $P113, "%!dependencies", 8
    unless_null $P2498, vivify_1352
    $P2498 = root_new ['parrot';'Hash']
  vivify_1352:
    exists $I101, $P2498[$P114]
    if $I101, unless_2497_end
.annotate 'line', 2207
    find_lex $P115, "$sc"
    unless_null $P115, vivify_1353
    new $P115, "Undef"
  vivify_1353:
    set $P116, $P2495
    unless_null $P116, vivify_1354
    new $P116, "Undef"
  vivify_1354:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$?CLASS"
    repr_get_attr_obj $P2499, $P118, $P119, "%!dependencies", 8
    unless_null $P2499, vivify_1355
    $P2499 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P118, $P119, "%!dependencies", 8, $P2499
  vivify_1355:
    set $P2499[$P116], $P115
.annotate 'line', 2208
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Op"]
.annotate 'line', 2210
    get_hll_global $P121, "GLOBAL"
    nqp_get_package_through_who $P122, $P121, "PAST"
    get_who $P123, $P122
    set $P124, $P123["Op"]
.annotate 'line', 2212
    get_hll_global $P125, "GLOBAL"
    nqp_get_package_through_who $P126, $P125, "PAST"
    get_who $P127, $P126
    set $P128, $P127["Op"]
    set $P129, $P2495
    unless_null $P129, vivify_1356
    new $P129, "Undef"
  vivify_1356:
    $P130 = $P128."new"($P129, "nqp_get_sc Ps" :named("pirop"))
    $P131 = $P124."new"($P130, "isnull IP" :named("pirop"))
.annotate 'line', 2214
    get_hll_global $P132, "GLOBAL"
    nqp_get_package_through_who $P133, $P132, "PAST"
    get_who $P134, $P133
    set $P135, $P134["Op"]
.annotate 'line', 2216
    new $P136, "String"
    assign $P136, "Incorrect pre-compiled version of "
    find_lex $P137, "$sc"
    unless_null $P137, vivify_1357
    new $P137, "Undef"
  vivify_1357:
    $P138 = $P137."description"()
    unless $P138, unless_2500
    set $S100, $P138
    goto unless_2500_end
  unless_2500:
    set $S100, "<unknown>"
  unless_2500_end:
    concat $P139, $P136, $S100
    concat $P140, $P139, " loaded"
    $P141 = $P135."new"($P140, "die vS" :named("pirop"))
.annotate 'line', 2214
    $P142 = $P120."new"($P131, $P141, "if" :named("pasttype"))
.annotate 'line', 2208
    $P116."add_fixup_task"($P142 :named("deserialize_past"))
  unless_2497_end:
.annotate 'line', 2219
    get_hll_global $P110, "GLOBAL"
    nqp_get_package_through_who $P112, $P110, "PAST"
    get_who $P113, $P112
    set $P114, $P113["Op"]
    set $P115, $P2495
    unless_null $P115, vivify_1358
    new $P115, "Undef"
  vivify_1358:
.annotate 'line', 2220
    find_lex $P116, "$sc"
    unless_null $P116, vivify_1359
    new $P116, "Undef"
  vivify_1359:
    find_lex $P117, "$obj"
    unless_null $P117, vivify_1360
    new $P117, "Undef"
  vivify_1360:
    $P118 = $P116."slot_index_for"($P117)
    $P119 = $P114."new"($P115, $P118, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2219
    set $P2496, $P119
.annotate 'line', 2221
    new $P110, "Float"
    assign $P110, 1
    set $P2501, $P2496
    unless_null $P2501, vivify_1361
    $P2501 = root_new ['parrot';'Hash']
    set $P2496, $P2501
  vivify_1361:
    set $P2501["has_compile_time_value"], $P110
.annotate 'line', 2222
    find_lex $P110, "$obj"
    unless_null $P110, vivify_1362
    new $P110, "Undef"
  vivify_1362:
    set $P2502, $P2496
    unless_null $P2502, vivify_1363
    $P2502 = root_new ['parrot';'Hash']
    set $P2496, $P2502
  vivify_1363:
    set $P2502["compile_time_value"], $P110
.annotate 'line', 2204
    set $P110, $P2496
    unless_null $P110, vivify_1364
    new $P110, "Undef"
  vivify_1364:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "sc" :anon :subid("290_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2504
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2228
    .lex "self", param_2504
    set $P101, param_2504
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!sc", 0
    unless_null $P104, vivify_1366
    new $P104, "Undef"
  vivify_1366:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "handle" :anon :subid("291_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2506
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2233
    .lex "self", param_2506
    set $P101, param_2506
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!handle", 1
    unless_null $P104, vivify_1367
    new $P104, "Undef"
  vivify_1367:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "load_dependency_tasks" :anon :subid("292_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2508
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2238
    .lex "self", param_2508
    set $P101, param_2508
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P2509, $P102, $P103, "@!load_dependency_tasks", 5
    unless_null $P2509, vivify_1368
    $P2509 = root_new ['parrot';'ResizablePMCArray']
  vivify_1368:
    .return ($P2509)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "fixup_tasks" :anon :subid("293_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2511
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2243
    .lex "self", param_2511
    set $P101, param_2511
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P2512, $P102, $P103, "@!fixup_tasks", 6
    unless_null $P2512, vivify_1369
    $P2512 = root_new ['parrot';'ResizablePMCArray']
  vivify_1369:
    .return ($P2512)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.include "except_types.pasm"
.sub "serialize_and_produce_deserialization_past" :anon :subid("294_1329260312.462") :outer("273_1329260312.462")
    .param pmc param_2514
    .param pmc param_2515
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2249
    .const 'Sub' $P2526 = "296_1329260312.462" 
    capture_lex $P2526
    .const 'Sub' $P2521 = "295_1329260312.462" 
    capture_lex $P2521
    .lex "self", param_2514
    .lex "$sc_reg", param_2515
.annotate 'line', 2251
    new $P101, "Undef"
    set $P2516, $P101
    .lex "$sh", $P2516
.annotate 'line', 2252
    new $P102, "Undef"
    set $P2517, $P102
    .lex "$serialized", $P2517
.annotate 'line', 2257
    new $P103, "Undef"
    set $P2518, $P103
    .lex "$sh_past", $P2518
.annotate 'line', 2271
    new $P104, "Undef"
    set $P2519, $P104
    .lex "$cr_past", $P2519
.annotate 'line', 2251
    new $P105, "ResizableStringArray"
    set $P2516, $P105
.annotate 'line', 2252
    set $P105, param_2514
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P108, $P106, $P107, "$!sc", 0
    unless_null $P108, vivify_1370
    new $P108, "Undef"
  vivify_1370:
    set $P109, $P2516
    unless_null $P109, vivify_1371
    new $P109, "Undef"
  vivify_1371:
    nqp_serialize_sc $S100, $P108, $P109
    new $P110, 'String'
    set $P110, $S100
    set $P2517, $P110
.annotate 'line', 2253
    set $P105, $P2517
    unless_null $P105, vivify_1372
    new $P105, "Undef"
  vivify_1372:
    set $S100, $P105
    length $I100, $S100
    new $P106, 'Integer'
    set $P106, $I100
    concat $P107, $P106, " bytes of serialized data produced"
    "say"($P107)
.annotate 'line', 2254
    set $P105, $P2516
    unless_null $P105, vivify_1373
    new $P105, "Undef"
  vivify_1373:
    elements $I100, $P105
    new $P106, 'Integer'
    set $P106, $I100
    concat $P107, $P106, " strings in heap"
    "say"($P107)
.annotate 'line', 2257
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "PAST"
    get_who $P107, $P106
    set $P108, $P107["Stmts"]
.annotate 'line', 2258
    get_hll_global $P109, "GLOBAL"
    nqp_get_package_through_who $P110, $P109, "PAST"
    get_who $P111, $P110
    set $P112, $P111["Op"]
.annotate 'line', 2260
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Var"]
    $P117 = $P116."new"("register" :named("scope"), "string_heap" :named("name"), 1 :named("isdecl"))
.annotate 'line', 2261
    get_hll_global $P118, "GLOBAL"
    nqp_get_package_through_who $P119, $P118, "PAST"
    get_who $P120, $P119
    set $P121, $P120["Op"]
    $P122 = $P121."new"("ResizableStringArray", "new Ps" :named("pirop"))
    $P123 = $P112."new"($P117, $P122, "bind" :named("pasttype"))
.annotate 'line', 2258
    $P124 = $P108."new"($P123)
.annotate 'line', 2257
    set $P2518, $P124
.annotate 'line', 2262
    set $P106, $P2516
    unless_null $P106, vivify_1374
    new $P106, "Undef"
  vivify_1374:
    defined $I100, $P106
    unless $I100, for_undef_1375
    iter $P105, $P106
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop2524_handler
    push_eh $P108
  loop2524_test:
    unless $P105, loop2524_done
    shift $P107, $P105
  loop2524_redo:
    .const 'Sub' $P2521 = "295_1329260312.462" 
    capture_lex $P2521
    $P2521($P107)
  loop2524_next:
    goto loop2524_test
  loop2524_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop2524_next
    eq $P109, .CONTROL_LOOP_REDO, loop2524_redo
  loop2524_done:
    pop_eh 
  for_undef_1375:
.annotate 'line', 2268
    set $P105, $P2518
    unless_null $P105, vivify_1379
    new $P105, "Undef"
  vivify_1379:
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P107, $P106, "PAST"
    get_who $P108, $P107
    set $P109, $P108["Var"]
    $P110 = $P109."new"("register" :named("scope"), "string_heap" :named("name"))
    $P105."push"($P110)
.annotate 'line', 2271
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "PAST"
    get_who $P107, $P106
    set $P108, $P107["Op"]
    $P109 = $P108."new"("list" :named("pasttype"))
    set $P2519, $P109
.annotate 'line', 2272
    set $P106, param_2514
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P109, $P107, $P108, "$!code_ref_blocks", 4
    unless_null $P109, vivify_1380
    new $P109, "Undef"
  vivify_1380:
    defined $I100, $P109
    unless $I100, for_undef_1381
    iter $P105, $P109
    new $P111, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P111, loop2528_handler
    push_eh $P111
  loop2528_test:
    unless $P105, loop2528_done
    shift $P110, $P105
  loop2528_redo:
    .const 'Sub' $P2526 = "296_1329260312.462" 
    capture_lex $P2526
    $P2526($P110)
  loop2528_next:
    goto loop2528_test
  loop2528_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P112, exception, 'type'
    eq $P112, .CONTROL_LOOP_NEXT, loop2528_next
    eq $P112, .CONTROL_LOOP_REDO, loop2528_redo
  loop2528_done:
    pop_eh 
  for_undef_1381:
.annotate 'line', 2277
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "PAST"
    get_who $P107, $P106
    set $P108, $P107["Op"]
.annotate 'line', 2279
    get_hll_global $P109, "GLOBAL"
    nqp_get_package_through_who $P110, $P109, "PAST"
    get_who $P111, $P110
    set $P112, $P111["Op"]
.annotate 'line', 2280
    new $P113, "String"
    assign $P113, "    $S0 = binary:\""
    set $P114, $P2517
    unless_null $P114, vivify_1384
    new $P114, "Undef"
  vivify_1384:
    set $S100, $P114
    escape $S101, $S100
    concat $P115, $P113, $S101
    concat $P116, $P115, "\""
    new $P117, "ResizablePMCArray"
    push $P117, $P116
    push $P117, "    %r = box $S0"
.annotate 'line', 2279
    $P118 = $P112."new"($P117 :named("inline"))
.annotate 'line', 2283
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "PAST"
    get_who $P121, $P120
    set $P122, $P121["Var"]
    set $P123, param_2515
    unless_null $P123, vivify_1385
    new $P123, "Undef"
  vivify_1385:
    $P124 = $P122."new"($P123 :named("name"), "register" :named("scope"))
    set $P125, $P2518
    unless_null $P125, vivify_1386
    new $P125, "Undef"
  vivify_1386:
    set $P126, $P2519
    unless_null $P126, vivify_1387
    new $P126, "Undef"
  vivify_1387:
    $P127 = $P108."new"($P118, $P124, $P125, $P126, "nqp_deserialize_sc__vSPPP" :named("pirop"))
.annotate 'line', 2249
    .return ($P127)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "_block2520"  :anon :subid("295_1329260312.462") :outer("294_1329260312.462")
    .param pmc param_2522
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2262
    .lex "$s", param_2522
.annotate 'line', 2263
    find_lex $P108, "$sh_past"
    unless_null $P108, vivify_1376
    new $P108, "Undef"
  vivify_1376:
    get_hll_global $P109, "GLOBAL"
    nqp_get_package_through_who $P110, $P109, "PAST"
    get_who $P111, $P110
    set $P112, $P111["Op"]
.annotate 'line', 2265
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Var"]
    $P117 = $P116."new"("register" :named("scope"), "string_heap" :named("name"))
.annotate 'line', 2266
    set $P119, param_2522
    unless_null $P119, vivify_1377
    new $P119, "Undef"
  vivify_1377:
    isnull $I101, $P119
    if $I101, if_2523
    set $P125, param_2522
    unless_null $P125, vivify_1378
    new $P125, "Undef"
  vivify_1378:
    set $P118, $P125
    goto if_2523_end
  if_2523:
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "PAST"
    get_who $P122, $P121
    set $P123, $P122["Op"]
    $P124 = $P123."new"("null S" :named("pirop"))
    set $P118, $P124
  if_2523_end:
    $P126 = $P112."new"($P117, $P118, "push vPs" :named("pirop"))
.annotate 'line', 2263
    $P127 = $P108."push"($P126)
.annotate 'line', 2262
    .return ($P127)
.end


.HLL "nqp"

.namespace ["HLL";"World"]
.sub "_block2525"  :anon :subid("296_1329260312.462") :outer("294_1329260312.462")
    .param pmc param_2527
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2272
    .lex "$block", param_2527
.annotate 'line', 2273
    find_lex $P111, "$cr_past"
    unless_null $P111, vivify_1382
    new $P111, "Undef"
  vivify_1382:
    get_hll_global $P112, "GLOBAL"
    nqp_get_package_through_who $P113, $P112, "PAST"
    get_who $P114, $P113
    set $P115, $P114["Val"]
    set $P116, param_2527
    unless_null $P116, vivify_1383
    new $P116, "Undef"
  vivify_1383:
    $P117 = $P115."new"($P116 :named("value"), "Sub" :named("returns"))
    $P118 = $P111."push"($P117)
.annotate 'line', 2272
    .return ($P118)
.end


.HLL "nqp"

.namespace []
.sub "_block2531" :load :anon :subid("297_1329260312.462")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1050
    .const '' $P2533 = "10_1329260312.462" 
    $P107 = $P2533()
    .return ($P107)
.end

