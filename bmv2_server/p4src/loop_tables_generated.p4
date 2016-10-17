// !!! Autogenerated code !!!

#define GOTTHARD_MAX_OP 10

action do_check_op0(in bit<1> read_cache_mode) {
    
    req_meta.read_cache_mode = read_cache_mode;
    req_meta.w_cnt = req_meta.w_cnt + (gotthard_op[0].op_type == GOTTHARD_OP_WRITE ? (bit<8>) 1:0);
    req_meta.rb_cnt = req_meta.rb_cnt + (gotthard_op[0].op_type == GOTTHARD_OP_VALUE ? (bit<8>) 1:0);
    req_meta.r_cnt = req_meta.r_cnt + (gotthard_op[0].op_type == GOTTHARD_OP_READ ? (bit<8>) 1:0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[0].op_type == GOTTHARD_OP_READ ? (bit<1>)
        (~is_cached_register[gotthard_op[0].key] & ~is_opti_cached_register[gotthard_op[0].key]) : 0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[0].op_type == GOTTHARD_OP_VALUE ? (bit<1>)
        (~is_cached_register[gotthard_op[0].key] & ~is_opti_cached_register[gotthard_op[0].key]) : 0);
    req_meta.has_opti_invalid_read = req_meta.has_opti_invalid_read |
        (gotthard_op[0].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[0].key] == 1 and
        opti_value_register[gotthard_op[0].key] != gotthard_op[0].value ? (bit<1>) 1:0);
    req_meta.has_invalid_read = req_meta.has_invalid_read | req_meta.has_opti_invalid_read |
        (gotthard_op[0].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[0].key] == 0 and
        is_cached_register[gotthard_op[0].key] == 1 and
            value_register[gotthard_op[0].key] != gotthard_op[0].value ? (bit<1>) 1 : 0);
}


action do_check_op1(in bit<1> read_cache_mode) {
    do_check_op0(read_cache_mode);
    req_meta.read_cache_mode = read_cache_mode;
    req_meta.w_cnt = req_meta.w_cnt + (gotthard_op[1].op_type == GOTTHARD_OP_WRITE ? (bit<8>) 1:0);
    req_meta.rb_cnt = req_meta.rb_cnt + (gotthard_op[1].op_type == GOTTHARD_OP_VALUE ? (bit<8>) 1:0);
    req_meta.r_cnt = req_meta.r_cnt + (gotthard_op[1].op_type == GOTTHARD_OP_READ ? (bit<8>) 1:0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[1].op_type == GOTTHARD_OP_READ ? (bit<1>)
        (~is_cached_register[gotthard_op[1].key] & ~is_opti_cached_register[gotthard_op[1].key]) : 0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[1].op_type == GOTTHARD_OP_VALUE ? (bit<1>)
        (~is_cached_register[gotthard_op[1].key] & ~is_opti_cached_register[gotthard_op[1].key]) : 0);
    req_meta.has_opti_invalid_read = req_meta.has_opti_invalid_read |
        (gotthard_op[1].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[1].key] == 1 and
        opti_value_register[gotthard_op[1].key] != gotthard_op[1].value ? (bit<1>) 1:0);
    req_meta.has_invalid_read = req_meta.has_invalid_read | req_meta.has_opti_invalid_read |
        (gotthard_op[1].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[1].key] == 0 and
        is_cached_register[gotthard_op[1].key] == 1 and
            value_register[gotthard_op[1].key] != gotthard_op[1].value ? (bit<1>) 1 : 0);
}


action do_check_op2(in bit<1> read_cache_mode) {
    do_check_op1(read_cache_mode);
    req_meta.read_cache_mode = read_cache_mode;
    req_meta.w_cnt = req_meta.w_cnt + (gotthard_op[2].op_type == GOTTHARD_OP_WRITE ? (bit<8>) 1:0);
    req_meta.rb_cnt = req_meta.rb_cnt + (gotthard_op[2].op_type == GOTTHARD_OP_VALUE ? (bit<8>) 1:0);
    req_meta.r_cnt = req_meta.r_cnt + (gotthard_op[2].op_type == GOTTHARD_OP_READ ? (bit<8>) 1:0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[2].op_type == GOTTHARD_OP_READ ? (bit<1>)
        (~is_cached_register[gotthard_op[2].key] & ~is_opti_cached_register[gotthard_op[2].key]) : 0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[2].op_type == GOTTHARD_OP_VALUE ? (bit<1>)
        (~is_cached_register[gotthard_op[2].key] & ~is_opti_cached_register[gotthard_op[2].key]) : 0);
    req_meta.has_opti_invalid_read = req_meta.has_opti_invalid_read |
        (gotthard_op[2].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[2].key] == 1 and
        opti_value_register[gotthard_op[2].key] != gotthard_op[2].value ? (bit<1>) 1:0);
    req_meta.has_invalid_read = req_meta.has_invalid_read | req_meta.has_opti_invalid_read |
        (gotthard_op[2].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[2].key] == 0 and
        is_cached_register[gotthard_op[2].key] == 1 and
            value_register[gotthard_op[2].key] != gotthard_op[2].value ? (bit<1>) 1 : 0);
}


action do_check_op3(in bit<1> read_cache_mode) {
    do_check_op2(read_cache_mode);
    req_meta.read_cache_mode = read_cache_mode;
    req_meta.w_cnt = req_meta.w_cnt + (gotthard_op[3].op_type == GOTTHARD_OP_WRITE ? (bit<8>) 1:0);
    req_meta.rb_cnt = req_meta.rb_cnt + (gotthard_op[3].op_type == GOTTHARD_OP_VALUE ? (bit<8>) 1:0);
    req_meta.r_cnt = req_meta.r_cnt + (gotthard_op[3].op_type == GOTTHARD_OP_READ ? (bit<8>) 1:0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[3].op_type == GOTTHARD_OP_READ ? (bit<1>)
        (~is_cached_register[gotthard_op[3].key] & ~is_opti_cached_register[gotthard_op[3].key]) : 0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[3].op_type == GOTTHARD_OP_VALUE ? (bit<1>)
        (~is_cached_register[gotthard_op[3].key] & ~is_opti_cached_register[gotthard_op[3].key]) : 0);
    req_meta.has_opti_invalid_read = req_meta.has_opti_invalid_read |
        (gotthard_op[3].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[3].key] == 1 and
        opti_value_register[gotthard_op[3].key] != gotthard_op[3].value ? (bit<1>) 1:0);
    req_meta.has_invalid_read = req_meta.has_invalid_read | req_meta.has_opti_invalid_read |
        (gotthard_op[3].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[3].key] == 0 and
        is_cached_register[gotthard_op[3].key] == 1 and
            value_register[gotthard_op[3].key] != gotthard_op[3].value ? (bit<1>) 1 : 0);
}


action do_check_op4(in bit<1> read_cache_mode) {
    do_check_op3(read_cache_mode);
    req_meta.read_cache_mode = read_cache_mode;
    req_meta.w_cnt = req_meta.w_cnt + (gotthard_op[4].op_type == GOTTHARD_OP_WRITE ? (bit<8>) 1:0);
    req_meta.rb_cnt = req_meta.rb_cnt + (gotthard_op[4].op_type == GOTTHARD_OP_VALUE ? (bit<8>) 1:0);
    req_meta.r_cnt = req_meta.r_cnt + (gotthard_op[4].op_type == GOTTHARD_OP_READ ? (bit<8>) 1:0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[4].op_type == GOTTHARD_OP_READ ? (bit<1>)
        (~is_cached_register[gotthard_op[4].key] & ~is_opti_cached_register[gotthard_op[4].key]) : 0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[4].op_type == GOTTHARD_OP_VALUE ? (bit<1>)
        (~is_cached_register[gotthard_op[4].key] & ~is_opti_cached_register[gotthard_op[4].key]) : 0);
    req_meta.has_opti_invalid_read = req_meta.has_opti_invalid_read |
        (gotthard_op[4].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[4].key] == 1 and
        opti_value_register[gotthard_op[4].key] != gotthard_op[4].value ? (bit<1>) 1:0);
    req_meta.has_invalid_read = req_meta.has_invalid_read | req_meta.has_opti_invalid_read |
        (gotthard_op[4].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[4].key] == 0 and
        is_cached_register[gotthard_op[4].key] == 1 and
            value_register[gotthard_op[4].key] != gotthard_op[4].value ? (bit<1>) 1 : 0);
}


action do_check_op5(in bit<1> read_cache_mode) {
    do_check_op4(read_cache_mode);
    req_meta.read_cache_mode = read_cache_mode;
    req_meta.w_cnt = req_meta.w_cnt + (gotthard_op[5].op_type == GOTTHARD_OP_WRITE ? (bit<8>) 1:0);
    req_meta.rb_cnt = req_meta.rb_cnt + (gotthard_op[5].op_type == GOTTHARD_OP_VALUE ? (bit<8>) 1:0);
    req_meta.r_cnt = req_meta.r_cnt + (gotthard_op[5].op_type == GOTTHARD_OP_READ ? (bit<8>) 1:0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[5].op_type == GOTTHARD_OP_READ ? (bit<1>)
        (~is_cached_register[gotthard_op[5].key] & ~is_opti_cached_register[gotthard_op[5].key]) : 0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[5].op_type == GOTTHARD_OP_VALUE ? (bit<1>)
        (~is_cached_register[gotthard_op[5].key] & ~is_opti_cached_register[gotthard_op[5].key]) : 0);
    req_meta.has_opti_invalid_read = req_meta.has_opti_invalid_read |
        (gotthard_op[5].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[5].key] == 1 and
        opti_value_register[gotthard_op[5].key] != gotthard_op[5].value ? (bit<1>) 1:0);
    req_meta.has_invalid_read = req_meta.has_invalid_read | req_meta.has_opti_invalid_read |
        (gotthard_op[5].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[5].key] == 0 and
        is_cached_register[gotthard_op[5].key] == 1 and
            value_register[gotthard_op[5].key] != gotthard_op[5].value ? (bit<1>) 1 : 0);
}


action do_check_op6(in bit<1> read_cache_mode) {
    do_check_op5(read_cache_mode);
    req_meta.read_cache_mode = read_cache_mode;
    req_meta.w_cnt = req_meta.w_cnt + (gotthard_op[6].op_type == GOTTHARD_OP_WRITE ? (bit<8>) 1:0);
    req_meta.rb_cnt = req_meta.rb_cnt + (gotthard_op[6].op_type == GOTTHARD_OP_VALUE ? (bit<8>) 1:0);
    req_meta.r_cnt = req_meta.r_cnt + (gotthard_op[6].op_type == GOTTHARD_OP_READ ? (bit<8>) 1:0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[6].op_type == GOTTHARD_OP_READ ? (bit<1>)
        (~is_cached_register[gotthard_op[6].key] & ~is_opti_cached_register[gotthard_op[6].key]) : 0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[6].op_type == GOTTHARD_OP_VALUE ? (bit<1>)
        (~is_cached_register[gotthard_op[6].key] & ~is_opti_cached_register[gotthard_op[6].key]) : 0);
    req_meta.has_opti_invalid_read = req_meta.has_opti_invalid_read |
        (gotthard_op[6].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[6].key] == 1 and
        opti_value_register[gotthard_op[6].key] != gotthard_op[6].value ? (bit<1>) 1:0);
    req_meta.has_invalid_read = req_meta.has_invalid_read | req_meta.has_opti_invalid_read |
        (gotthard_op[6].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[6].key] == 0 and
        is_cached_register[gotthard_op[6].key] == 1 and
            value_register[gotthard_op[6].key] != gotthard_op[6].value ? (bit<1>) 1 : 0);
}


action do_check_op7(in bit<1> read_cache_mode) {
    do_check_op6(read_cache_mode);
    req_meta.read_cache_mode = read_cache_mode;
    req_meta.w_cnt = req_meta.w_cnt + (gotthard_op[7].op_type == GOTTHARD_OP_WRITE ? (bit<8>) 1:0);
    req_meta.rb_cnt = req_meta.rb_cnt + (gotthard_op[7].op_type == GOTTHARD_OP_VALUE ? (bit<8>) 1:0);
    req_meta.r_cnt = req_meta.r_cnt + (gotthard_op[7].op_type == GOTTHARD_OP_READ ? (bit<8>) 1:0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[7].op_type == GOTTHARD_OP_READ ? (bit<1>)
        (~is_cached_register[gotthard_op[7].key] & ~is_opti_cached_register[gotthard_op[7].key]) : 0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[7].op_type == GOTTHARD_OP_VALUE ? (bit<1>)
        (~is_cached_register[gotthard_op[7].key] & ~is_opti_cached_register[gotthard_op[7].key]) : 0);
    req_meta.has_opti_invalid_read = req_meta.has_opti_invalid_read |
        (gotthard_op[7].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[7].key] == 1 and
        opti_value_register[gotthard_op[7].key] != gotthard_op[7].value ? (bit<1>) 1:0);
    req_meta.has_invalid_read = req_meta.has_invalid_read | req_meta.has_opti_invalid_read |
        (gotthard_op[7].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[7].key] == 0 and
        is_cached_register[gotthard_op[7].key] == 1 and
            value_register[gotthard_op[7].key] != gotthard_op[7].value ? (bit<1>) 1 : 0);
}


action do_check_op8(in bit<1> read_cache_mode) {
    do_check_op7(read_cache_mode);
    req_meta.read_cache_mode = read_cache_mode;
    req_meta.w_cnt = req_meta.w_cnt + (gotthard_op[8].op_type == GOTTHARD_OP_WRITE ? (bit<8>) 1:0);
    req_meta.rb_cnt = req_meta.rb_cnt + (gotthard_op[8].op_type == GOTTHARD_OP_VALUE ? (bit<8>) 1:0);
    req_meta.r_cnt = req_meta.r_cnt + (gotthard_op[8].op_type == GOTTHARD_OP_READ ? (bit<8>) 1:0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[8].op_type == GOTTHARD_OP_READ ? (bit<1>)
        (~is_cached_register[gotthard_op[8].key] & ~is_opti_cached_register[gotthard_op[8].key]) : 0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[8].op_type == GOTTHARD_OP_VALUE ? (bit<1>)
        (~is_cached_register[gotthard_op[8].key] & ~is_opti_cached_register[gotthard_op[8].key]) : 0);
    req_meta.has_opti_invalid_read = req_meta.has_opti_invalid_read |
        (gotthard_op[8].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[8].key] == 1 and
        opti_value_register[gotthard_op[8].key] != gotthard_op[8].value ? (bit<1>) 1:0);
    req_meta.has_invalid_read = req_meta.has_invalid_read | req_meta.has_opti_invalid_read |
        (gotthard_op[8].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[8].key] == 0 and
        is_cached_register[gotthard_op[8].key] == 1 and
            value_register[gotthard_op[8].key] != gotthard_op[8].value ? (bit<1>) 1 : 0);
}


action do_check_op9(in bit<1> read_cache_mode) {
    do_check_op8(read_cache_mode);
    req_meta.read_cache_mode = read_cache_mode;
    req_meta.w_cnt = req_meta.w_cnt + (gotthard_op[9].op_type == GOTTHARD_OP_WRITE ? (bit<8>) 1:0);
    req_meta.rb_cnt = req_meta.rb_cnt + (gotthard_op[9].op_type == GOTTHARD_OP_VALUE ? (bit<8>) 1:0);
    req_meta.r_cnt = req_meta.r_cnt + (gotthard_op[9].op_type == GOTTHARD_OP_READ ? (bit<8>) 1:0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[9].op_type == GOTTHARD_OP_READ ? (bit<1>)
        (~is_cached_register[gotthard_op[9].key] & ~is_opti_cached_register[gotthard_op[9].key]) : 0);
    req_meta.has_cache_miss = req_meta.has_cache_miss |
        (gotthard_op[9].op_type == GOTTHARD_OP_VALUE ? (bit<1>)
        (~is_cached_register[gotthard_op[9].key] & ~is_opti_cached_register[gotthard_op[9].key]) : 0);
    req_meta.has_opti_invalid_read = req_meta.has_opti_invalid_read |
        (gotthard_op[9].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[9].key] == 1 and
        opti_value_register[gotthard_op[9].key] != gotthard_op[9].value ? (bit<1>) 1:0);
    req_meta.has_invalid_read = req_meta.has_invalid_read | req_meta.has_opti_invalid_read |
        (gotthard_op[9].op_type == GOTTHARD_OP_VALUE and
        is_opti_cached_register[gotthard_op[9].key] == 0 and
        is_cached_register[gotthard_op[9].key] == 1 and
            value_register[gotthard_op[9].key] != gotthard_op[9].value ? (bit<1>) 1 : 0);
}

table t_req_pass1 {
    reads {
        gotthard_hdr.op_cnt: exact;
    }
    actions {
        _nop;
        do_check_op0;
        do_check_op1;
        do_check_op2;
        do_check_op3;
        do_check_op4;
        do_check_op5;
        do_check_op6;
        do_check_op7;
        do_check_op8;
        do_check_op9;
    }
    size: 11;
}

action do_req_fix0() {
    
    gotthard_op[0].op_type =
        (gotthard_op[0].op_type == GOTTHARD_OP_READ and req_meta.read_cache_mode == 1)
        or gotthard_op[0].op_type == GOTTHARD_OP_VALUE ?
        (bit<8>) GOTTHARD_OP_VALUE : GOTTHARD_OP_NOP;
    gotthard_op[0].key = gotthard_op[0].key;
    gotthard_op[0].value = is_opti_cached_register[gotthard_op[0].key] == 1 ?
        opti_value_register[gotthard_op[0].key] : value_register[gotthard_op[0].key];
}


action do_req_fix1() {
    do_req_fix0();
    gotthard_op[1].op_type =
        (gotthard_op[1].op_type == GOTTHARD_OP_READ and req_meta.read_cache_mode == 1)
        or gotthard_op[1].op_type == GOTTHARD_OP_VALUE ?
        (bit<8>) GOTTHARD_OP_VALUE : GOTTHARD_OP_NOP;
    gotthard_op[1].key = gotthard_op[1].key;
    gotthard_op[1].value = is_opti_cached_register[gotthard_op[1].key] == 1 ?
        opti_value_register[gotthard_op[1].key] : value_register[gotthard_op[1].key];
}


action do_req_fix2() {
    do_req_fix1();
    gotthard_op[2].op_type =
        (gotthard_op[2].op_type == GOTTHARD_OP_READ and req_meta.read_cache_mode == 1)
        or gotthard_op[2].op_type == GOTTHARD_OP_VALUE ?
        (bit<8>) GOTTHARD_OP_VALUE : GOTTHARD_OP_NOP;
    gotthard_op[2].key = gotthard_op[2].key;
    gotthard_op[2].value = is_opti_cached_register[gotthard_op[2].key] == 1 ?
        opti_value_register[gotthard_op[2].key] : value_register[gotthard_op[2].key];
}


action do_req_fix3() {
    do_req_fix2();
    gotthard_op[3].op_type =
        (gotthard_op[3].op_type == GOTTHARD_OP_READ and req_meta.read_cache_mode == 1)
        or gotthard_op[3].op_type == GOTTHARD_OP_VALUE ?
        (bit<8>) GOTTHARD_OP_VALUE : GOTTHARD_OP_NOP;
    gotthard_op[3].key = gotthard_op[3].key;
    gotthard_op[3].value = is_opti_cached_register[gotthard_op[3].key] == 1 ?
        opti_value_register[gotthard_op[3].key] : value_register[gotthard_op[3].key];
}


action do_req_fix4() {
    do_req_fix3();
    gotthard_op[4].op_type =
        (gotthard_op[4].op_type == GOTTHARD_OP_READ and req_meta.read_cache_mode == 1)
        or gotthard_op[4].op_type == GOTTHARD_OP_VALUE ?
        (bit<8>) GOTTHARD_OP_VALUE : GOTTHARD_OP_NOP;
    gotthard_op[4].key = gotthard_op[4].key;
    gotthard_op[4].value = is_opti_cached_register[gotthard_op[4].key] == 1 ?
        opti_value_register[gotthard_op[4].key] : value_register[gotthard_op[4].key];
}


action do_req_fix5() {
    do_req_fix4();
    gotthard_op[5].op_type =
        (gotthard_op[5].op_type == GOTTHARD_OP_READ and req_meta.read_cache_mode == 1)
        or gotthard_op[5].op_type == GOTTHARD_OP_VALUE ?
        (bit<8>) GOTTHARD_OP_VALUE : GOTTHARD_OP_NOP;
    gotthard_op[5].key = gotthard_op[5].key;
    gotthard_op[5].value = is_opti_cached_register[gotthard_op[5].key] == 1 ?
        opti_value_register[gotthard_op[5].key] : value_register[gotthard_op[5].key];
}


action do_req_fix6() {
    do_req_fix5();
    gotthard_op[6].op_type =
        (gotthard_op[6].op_type == GOTTHARD_OP_READ and req_meta.read_cache_mode == 1)
        or gotthard_op[6].op_type == GOTTHARD_OP_VALUE ?
        (bit<8>) GOTTHARD_OP_VALUE : GOTTHARD_OP_NOP;
    gotthard_op[6].key = gotthard_op[6].key;
    gotthard_op[6].value = is_opti_cached_register[gotthard_op[6].key] == 1 ?
        opti_value_register[gotthard_op[6].key] : value_register[gotthard_op[6].key];
}


action do_req_fix7() {
    do_req_fix6();
    gotthard_op[7].op_type =
        (gotthard_op[7].op_type == GOTTHARD_OP_READ and req_meta.read_cache_mode == 1)
        or gotthard_op[7].op_type == GOTTHARD_OP_VALUE ?
        (bit<8>) GOTTHARD_OP_VALUE : GOTTHARD_OP_NOP;
    gotthard_op[7].key = gotthard_op[7].key;
    gotthard_op[7].value = is_opti_cached_register[gotthard_op[7].key] == 1 ?
        opti_value_register[gotthard_op[7].key] : value_register[gotthard_op[7].key];
}


action do_req_fix8() {
    do_req_fix7();
    gotthard_op[8].op_type =
        (gotthard_op[8].op_type == GOTTHARD_OP_READ and req_meta.read_cache_mode == 1)
        or gotthard_op[8].op_type == GOTTHARD_OP_VALUE ?
        (bit<8>) GOTTHARD_OP_VALUE : GOTTHARD_OP_NOP;
    gotthard_op[8].key = gotthard_op[8].key;
    gotthard_op[8].value = is_opti_cached_register[gotthard_op[8].key] == 1 ?
        opti_value_register[gotthard_op[8].key] : value_register[gotthard_op[8].key];
}


action do_req_fix9() {
    do_req_fix8();
    gotthard_op[9].op_type =
        (gotthard_op[9].op_type == GOTTHARD_OP_READ and req_meta.read_cache_mode == 1)
        or gotthard_op[9].op_type == GOTTHARD_OP_VALUE ?
        (bit<8>) GOTTHARD_OP_VALUE : GOTTHARD_OP_NOP;
    gotthard_op[9].key = gotthard_op[9].key;
    gotthard_op[9].value = is_opti_cached_register[gotthard_op[9].key] == 1 ?
        opti_value_register[gotthard_op[9].key] : value_register[gotthard_op[9].key];
}

table t_req_fix {
    reads {
        gotthard_hdr.op_cnt: exact;
    }
    actions {
        _nop;
        do_req_fix0;
        do_req_fix1;
        do_req_fix2;
        do_req_fix3;
        do_req_fix4;
        do_req_fix5;
        do_req_fix6;
        do_req_fix7;
        do_req_fix8;
        do_req_fix9;
    }
    size: 11;
}

action do_opti_update0() {
    
    is_opti_cached_register[gotthard_op[0].key] = gotthard_op[0].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        (bit<1>) 1 : is_opti_cached_register[gotthard_op[0].key];
    opti_value_register[gotthard_op[0].key] = gotthard_op[0].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        gotthard_op[0].value : opti_value_register[gotthard_op[0].key];
}


action do_opti_update1() {
    do_opti_update0();
    is_opti_cached_register[gotthard_op[1].key] = gotthard_op[1].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        (bit<1>) 1 : is_opti_cached_register[gotthard_op[1].key];
    opti_value_register[gotthard_op[1].key] = gotthard_op[1].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        gotthard_op[1].value : opti_value_register[gotthard_op[1].key];
}


action do_opti_update2() {
    do_opti_update1();
    is_opti_cached_register[gotthard_op[2].key] = gotthard_op[2].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        (bit<1>) 1 : is_opti_cached_register[gotthard_op[2].key];
    opti_value_register[gotthard_op[2].key] = gotthard_op[2].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        gotthard_op[2].value : opti_value_register[gotthard_op[2].key];
}


action do_opti_update3() {
    do_opti_update2();
    is_opti_cached_register[gotthard_op[3].key] = gotthard_op[3].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        (bit<1>) 1 : is_opti_cached_register[gotthard_op[3].key];
    opti_value_register[gotthard_op[3].key] = gotthard_op[3].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        gotthard_op[3].value : opti_value_register[gotthard_op[3].key];
}


action do_opti_update4() {
    do_opti_update3();
    is_opti_cached_register[gotthard_op[4].key] = gotthard_op[4].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        (bit<1>) 1 : is_opti_cached_register[gotthard_op[4].key];
    opti_value_register[gotthard_op[4].key] = gotthard_op[4].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        gotthard_op[4].value : opti_value_register[gotthard_op[4].key];
}


action do_opti_update5() {
    do_opti_update4();
    is_opti_cached_register[gotthard_op[5].key] = gotthard_op[5].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        (bit<1>) 1 : is_opti_cached_register[gotthard_op[5].key];
    opti_value_register[gotthard_op[5].key] = gotthard_op[5].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        gotthard_op[5].value : opti_value_register[gotthard_op[5].key];
}


action do_opti_update6() {
    do_opti_update5();
    is_opti_cached_register[gotthard_op[6].key] = gotthard_op[6].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        (bit<1>) 1 : is_opti_cached_register[gotthard_op[6].key];
    opti_value_register[gotthard_op[6].key] = gotthard_op[6].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        gotthard_op[6].value : opti_value_register[gotthard_op[6].key];
}


action do_opti_update7() {
    do_opti_update6();
    is_opti_cached_register[gotthard_op[7].key] = gotthard_op[7].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        (bit<1>) 1 : is_opti_cached_register[gotthard_op[7].key];
    opti_value_register[gotthard_op[7].key] = gotthard_op[7].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        gotthard_op[7].value : opti_value_register[gotthard_op[7].key];
}


action do_opti_update8() {
    do_opti_update7();
    is_opti_cached_register[gotthard_op[8].key] = gotthard_op[8].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        (bit<1>) 1 : is_opti_cached_register[gotthard_op[8].key];
    opti_value_register[gotthard_op[8].key] = gotthard_op[8].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        gotthard_op[8].value : opti_value_register[gotthard_op[8].key];
}


action do_opti_update9() {
    do_opti_update8();
    is_opti_cached_register[gotthard_op[9].key] = gotthard_op[9].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        (bit<1>) 1 : is_opti_cached_register[gotthard_op[9].key];
    opti_value_register[gotthard_op[9].key] = gotthard_op[9].op_type == (bit<8>)GOTTHARD_OP_WRITE ?
        gotthard_op[9].value : opti_value_register[gotthard_op[9].key];
}

table t_opti_update {
    reads {
        gotthard_hdr.op_cnt: exact;
    }
    actions {
        _nop;
        do_opti_update0;
        do_opti_update1;
        do_opti_update2;
        do_opti_update3;
        do_opti_update4;
        do_opti_update5;
        do_opti_update6;
        do_opti_update7;
        do_opti_update8;
        do_opti_update9;
    }
    size: 11;
}

action do_store_update0() {
    
    value_register[gotthard_op[0].key] =
        (gotthard_op[0].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[0].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            gotthard_op[0].value : value_register[gotthard_op[0].key];
    is_cached_register[gotthard_op[0].key] =
        (gotthard_op[0].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[0].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            (bit<1>)1 : is_cached_register[gotthard_op[0].key];
    is_opti_cached_register[gotthard_op[0].key] = (bit<1>)0;
}


action do_store_update1() {
    do_store_update0();
    value_register[gotthard_op[1].key] =
        (gotthard_op[1].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[1].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            gotthard_op[1].value : value_register[gotthard_op[1].key];
    is_cached_register[gotthard_op[1].key] =
        (gotthard_op[1].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[1].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            (bit<1>)1 : is_cached_register[gotthard_op[1].key];
    is_opti_cached_register[gotthard_op[1].key] = (bit<1>)0;
}


action do_store_update2() {
    do_store_update1();
    value_register[gotthard_op[2].key] =
        (gotthard_op[2].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[2].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            gotthard_op[2].value : value_register[gotthard_op[2].key];
    is_cached_register[gotthard_op[2].key] =
        (gotthard_op[2].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[2].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            (bit<1>)1 : is_cached_register[gotthard_op[2].key];
    is_opti_cached_register[gotthard_op[2].key] = (bit<1>)0;
}


action do_store_update3() {
    do_store_update2();
    value_register[gotthard_op[3].key] =
        (gotthard_op[3].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[3].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            gotthard_op[3].value : value_register[gotthard_op[3].key];
    is_cached_register[gotthard_op[3].key] =
        (gotthard_op[3].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[3].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            (bit<1>)1 : is_cached_register[gotthard_op[3].key];
    is_opti_cached_register[gotthard_op[3].key] = (bit<1>)0;
}


action do_store_update4() {
    do_store_update3();
    value_register[gotthard_op[4].key] =
        (gotthard_op[4].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[4].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            gotthard_op[4].value : value_register[gotthard_op[4].key];
    is_cached_register[gotthard_op[4].key] =
        (gotthard_op[4].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[4].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            (bit<1>)1 : is_cached_register[gotthard_op[4].key];
    is_opti_cached_register[gotthard_op[4].key] = (bit<1>)0;
}


action do_store_update5() {
    do_store_update4();
    value_register[gotthard_op[5].key] =
        (gotthard_op[5].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[5].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            gotthard_op[5].value : value_register[gotthard_op[5].key];
    is_cached_register[gotthard_op[5].key] =
        (gotthard_op[5].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[5].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            (bit<1>)1 : is_cached_register[gotthard_op[5].key];
    is_opti_cached_register[gotthard_op[5].key] = (bit<1>)0;
}


action do_store_update6() {
    do_store_update5();
    value_register[gotthard_op[6].key] =
        (gotthard_op[6].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[6].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            gotthard_op[6].value : value_register[gotthard_op[6].key];
    is_cached_register[gotthard_op[6].key] =
        (gotthard_op[6].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[6].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            (bit<1>)1 : is_cached_register[gotthard_op[6].key];
    is_opti_cached_register[gotthard_op[6].key] = (bit<1>)0;
}


action do_store_update7() {
    do_store_update6();
    value_register[gotthard_op[7].key] =
        (gotthard_op[7].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[7].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            gotthard_op[7].value : value_register[gotthard_op[7].key];
    is_cached_register[gotthard_op[7].key] =
        (gotthard_op[7].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[7].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            (bit<1>)1 : is_cached_register[gotthard_op[7].key];
    is_opti_cached_register[gotthard_op[7].key] = (bit<1>)0;
}


action do_store_update8() {
    do_store_update7();
    value_register[gotthard_op[8].key] =
        (gotthard_op[8].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[8].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            gotthard_op[8].value : value_register[gotthard_op[8].key];
    is_cached_register[gotthard_op[8].key] =
        (gotthard_op[8].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[8].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            (bit<1>)1 : is_cached_register[gotthard_op[8].key];
    is_opti_cached_register[gotthard_op[8].key] = (bit<1>)0;
}


action do_store_update9() {
    do_store_update8();
    value_register[gotthard_op[9].key] =
        (gotthard_op[9].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[9].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            gotthard_op[9].value : value_register[gotthard_op[9].key];
    is_cached_register[gotthard_op[9].key] =
        (gotthard_op[9].op_type == (bit<8>)GOTTHARD_OP_UPDATE or
         gotthard_op[9].op_type == (bit<8>)GOTTHARD_OP_VALUE) ?
            (bit<1>)1 : is_cached_register[gotthard_op[9].key];
    is_opti_cached_register[gotthard_op[9].key] = (bit<1>)0;
}

table t_store_update {
    reads {
        gotthard_hdr.op_cnt: exact;
    }
    actions {
        _nop;
        do_store_update0;
        do_store_update1;
        do_store_update2;
        do_store_update3;
        do_store_update4;
        do_store_update5;
        do_store_update6;
        do_store_update7;
        do_store_update8;
        do_store_update9;
    }
    size: 11;
}

