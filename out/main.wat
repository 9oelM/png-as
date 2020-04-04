(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "__png_as_external" "logString" (func $src/util/log/logString (param i32)))
 (import "__png_as_external" "exit" (func $src/util/exit/_exit (param i32)))
 (import "__png_as_external" "logNumber" (func $src/util/log/logNumber (param i32)))
 (memory $0 1)
 (data (i32.const 1024) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1072) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1136) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1184) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00I\00H\00D\00R")
 (data (i32.const 1216) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00I\00E\00N\00D")
 (data (i32.const 1248) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00I\00D\00A\00T")
 (data (i32.const 1280) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00P\00L\00T\00E")
 (data (i32.const 1312) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00s\00R\00G\00B")
 (data (i32.const 1344) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00g\00A\00M\00A")
 (data (i32.const 1380) "\01")
 (data (i32.const 1392) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1456) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1520) "\08\00\00\00\01\00\00\00\03\00\00\00\08\00\00\00\89PNG\0d\n\1a\n")
 (data (i32.const 1552) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00h\00e\00a\00d\00e\00r\00 \00b\00i\00t\00 \00a\00t\00 ")
 (data (i32.const 1616) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 1648) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 1684) "\01\00\00\00\01")
 (data (i32.const 1696) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00t\00h\00 \00b\00i\00t\00.\00 \00A\00b\00o\00r\00t\00i\00n\00g\00.\00.\00.")
 (data (i32.const 1760) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00c\00h\00u\00n\00k\00t\00y\00p\00e\00:\00 ")
 (data (i32.const 1808) "\05\00\00\00\01\00\00\00\03\00\00\00\05\00\00\00\01\02\04\08\10")
 (data (i32.const 1840) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1888) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1952) "\02\00\00\00\01\00\00\00\03\00\00\00\02\00\00\00\08\10")
 (data (i32.const 1984) "\04\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\01\02\04\08")
 (data (i32.const 2016) "\02\00\00\00\01\00\00\00\03\00\00\00\02\00\00\00\08\10")
 (data (i32.const 2048) "\02\00\00\00\01\00\00\00\03\00\00\00\02\00\00\00\08\10")
 (data (i32.const 2080) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 2144) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 2192) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00l\00o\00r\00 \00t\00y\00p\00e")
 (data (i32.const 2272) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00l\00o\00r\00 \00t\00y\00p\00e\00 \00f\00o\00r\00 \00P\00E\00T\00E")
 (data (i32.const 2368) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 2400) "R\00\00\00\01\00\00\00\01\00\00\00R\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00v\00a\00l\00i\00d\00 \00r\00e\00n\00d\00e\00r\00i\00n\00g\00 \00i\00n\00t\00e\00n\00t\00 \00f\00o\00r\00 \00s\00R\00G\00B")
 (data (i32.const 2512) "\0d\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00d\00\00\00\00\00\00\000\c1\00\00\00\00\00\00a\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\"A\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\"\t")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $external/types/UInt8ArrayID i32 (i32.const 5))
 (global $~lib/rt/__rtti_base i32 (i32.const 2512))
 (global $src/parser/Parser i32 (i32.const 6))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "Parser" (global $src/parser/Parser))
 (export "Parser#get:position" (func $src/parser/Parser#get:position))
 (export "Parser#set:position" (func $src/parser/Parser#set:position))
 (export "Parser#get:chunkTypes" (func $src/parser/Parser#get:chunkTypes))
 (export "Parser#set:chunkTypes" (func $src/parser/Parser#set:chunkTypes))
 (export "Parser#get:IHDR" (func $src/parser/Parser#get:IHDR))
 (export "Parser#set:IHDR" (func $src/parser/Parser#set:IHDR))
 (export "Parser#get:PLTE" (func $src/parser/Parser#get:PLTE))
 (export "Parser#set:PLTE" (func $src/parser/Parser#set:PLTE))
 (export "Parser#get:sRGB" (func $src/parser/Parser#get:sRGB))
 (export "Parser#set:sRGB" (func $src/parser/Parser#set:sRGB))
 (export "Parser#get:gAMA" (func $src/parser/Parser#get:gAMA))
 (export "Parser#set:gAMA" (func $src/parser/Parser#set:gAMA))
 (export "Parser#constructor" (func $src/parser/Parser#constructor))
 (export "Parser#main" (func $src/parser/Parser#main))
 (export "UInt8ArrayID" (global $external/types/UInt8ArrayID))
 (func $~lib/rt/tlsf/removeBlock (; 4 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 277
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 279
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $4
   i32.const 7
   i32.sub
   local.set $4
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $4
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 292
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=20
  local.set $3
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $3
   i32.store offset=20
  end
  local.get $3
  if
   local.get $3
   local.get $5
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $4
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $4
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   i32.store offset=96
   local.get $3
   i32.eqz
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.tee $3
    i32.load offset=4
    i32.const 1
    local.get $2
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.set $1
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 5 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 205
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 207
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    local.get $3
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $4
    i32.load
    local.set $5
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $7
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1040
    i32.const 228
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $2
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 243
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.const 16
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 244
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $6
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 260
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $3
  i32.store offset=20
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $2
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 6 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  local.get $2
  i32.le_u
  select
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 386
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $1
   local.get $3
   i32.const 16
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1040
    i32.const 396
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1040
    i32.const 408
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/maybeInitialize (; 7 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $0
  i32.eqz
  if
   i32.const 1
   memory.size
   local.tee $0
   i32.gt_s
   if (result i32)
    i32.const 1
    local.get $0
    i32.sub
    memory.grow
    i32.const 0
    i32.lt_s
   else
    i32.const 0
   end
   if
    unreachable
   end
   i32.const 2624
   local.tee $0
   i32.const 0
   i32.store
   i32.const 4192
   i32.const 0
   i32.store
   loop $for-loop|0
    local.get $1
    i32.const 23
    i32.lt_u
    if
     local.get $1
     i32.const 2
     i32.shl
     i32.const 2624
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 16
      i32.lt_u
      if
       local.get $2
       local.get $1
       i32.const 4
       i32.shl
       i32.add
       i32.const 2
       i32.shl
       i32.const 2624
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   i32.const 2624
   i32.const 4208
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 2624
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/searchBlock (; 8 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870904
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 338
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1040
     i32.const 351
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/prepareBlock (; 9 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1040
   i32.const 365
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 16
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.tee $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 10 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/tlsf/collectLock
  if
   i32.const 0
   i32.const 1040
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 1088
   i32.const 1040
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $3
  i32.const 16
  local.get $3
  i32.const 16
  i32.gt_u
  select
  local.tee $4
  call $~lib/rt/tlsf/searchBlock
  local.tee $3
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/tlsf/collectLock
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/searchBlock
   local.tee $3
   i32.eqz
   if
    i32.const 16
    memory.size
    local.tee $3
    i32.const 16
    i32.shl
    i32.const 16
    i32.sub
    local.get $0
    i32.load offset=1568
    i32.ne
    i32.shl
    local.get $4
    i32.const 1
    i32.const 27
    local.get $4
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    i32.add
    local.get $4
    local.get $4
    i32.const 536870904
    i32.lt_u
    select
    i32.add
    i32.const 65535
    i32.add
    i32.const -65536
    i32.and
    i32.const 16
    i32.shr_u
    local.set $5
    local.get $3
    local.get $5
    local.get $3
    local.get $5
    i32.gt_s
    select
    memory.grow
    i32.const 0
    i32.lt_s
    if
     local.get $5
     memory.grow
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
    local.get $0
    local.get $3
    i32.const 16
    i32.shl
    memory.size
    i32.const 16
    i32.shl
    call $~lib/rt/tlsf/addMemory
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/searchBlock
    local.tee $3
    i32.eqz
    if
     i32.const 0
     i32.const 1040
     i32.const 513
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $4
  i32.lt_u
  if
   i32.const 0
   i32.const 1040
   i32.const 521
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $4
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (; 11 ;) (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/__retain (; 12 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 2620
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   i32.load offset=4
   local.tee $2
   i32.const -268435456
   i32.and
   local.get $2
   i32.const 1
   i32.add
   i32.const -268435456
   i32.and
   i32.ne
   if
    i32.const 0
    i32.const 1152
    i32.const 109
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $1
   i32.load
   i32.const 1
   i32.and
   if
    i32.const 0
    i32.const 1152
    i32.const 112
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (; 13 ;) (param $0 i32)
  local.get $0
  i32.const 2620
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/memory/memory.copy (; 14 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/__allocBuffer (; 15 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $2
  if
   local.get $1
   local.get $2
   local.get $0
   call $~lib/memory/memory.copy
  end
  local.get $1
 )
 (func $~lib/rt/__allocArray (; 16 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  i32.const 16
  local.get $1
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 0
  local.get $2
  call $~lib/rt/__allocBuffer
  local.tee $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $src/parser/Parser#constructor (; 17 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 28
   i32.const 6
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.const 7
  i32.const 1392
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store offset=24
  local.get $0
 )
 (func $src/parser/Parser#get:position (; 18 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $src/parser/Parser#set:position (; 19 ;) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $src/parser/Parser#get:chunkTypes (; 20 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
 )
 (func $src/parser/Parser#set:chunkTypes (; 21 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  local.get $0
  local.tee $2
  i32.load offset=4
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $0
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $1
  i32.store offset=4
 )
 (func $src/parser/Parser#get:IHDR (; 22 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__retain
 )
 (func $src/parser/Parser#set:IHDR (; 23 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  local.get $0
  local.tee $2
  i32.load offset=8
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $0
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $1
  i32.store offset=8
 )
 (func $src/parser/Parser#get:PLTE (; 24 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
 )
 (func $src/parser/Parser#set:PLTE (; 25 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  local.get $0
  local.tee $2
  i32.load offset=12
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $0
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $1
  i32.store offset=12
 )
 (func $src/parser/Parser#get:sRGB (; 26 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
 )
 (func $src/parser/Parser#set:sRGB (; 27 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  local.get $0
  local.tee $2
  i32.load offset=16
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $0
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $1
  i32.store offset=16
 )
 (func $src/parser/Parser#get:gAMA (; 28 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
  call $~lib/rt/pure/__retain
 )
 (func $src/parser/Parser#set:gAMA (; 29 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  local.get $0
  local.tee $2
  i32.load offset=20
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $0
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $1
  i32.store offset=20
 )
 (func $src/parser/Parser#readNext8bits (; 30 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=24
  local.set $1
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  local.tee $0
  i32.store
  local.get $0
  local.get $1
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1408
   i32.const 1472
   i32.const 152
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $src/parser/Parser#readNext32BitsNum (; 31 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $src/parser/Parser#readNext8bits
  drop
  local.get $0
  call $src/parser/Parser#readNext8bits
  local.set $1
  local.get $0
  call $src/parser/Parser#readNext8bits
  local.set $2
  local.get $0
  call $src/parser/Parser#readNext8bits
  i32.const 255
  i32.and
  local.get $1
  i32.const 255
  i32.and
  i32.const 16
  i32.shl
  local.get $2
  i32.const 255
  i32.and
  i32.const 8
  i32.shl
  i32.or
  i32.or
 )
 (func $src/parser/Parser#readNext32BitsStr (; 32 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $src/parser/Parser#readNext8bits
  local.set $1
  local.get $0
  call $src/parser/Parser#readNext8bits
  local.set $2
  local.get $0
  call $src/parser/Parser#readNext8bits
  local.set $3
  local.get $0
  call $src/parser/Parser#readNext8bits
  local.set $5
  i32.const 4
  i32.const 12
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=4
  local.tee $0
  local.get $1
  i32.const 255
  i32.and
  i32.store
  local.get $0
  local.get $2
  i32.const 255
  i32.and
  i32.store offset=4
  local.get $0
  local.get $3
  i32.const 255
  i32.and
  i32.store offset=8
  local.get $0
  local.get $5
  i32.const 255
  i32.and
  i32.store offset=12
  i32.const 0
  local.set $0
  local.get $4
  i32.load offset=12
  local.tee $1
  local.set $2
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.load offset=4
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $2
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/number/decimalCount32 (; 33 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 10
  i32.ge_u
  i32.const 1
  i32.add
  local.get $0
  i32.const 10000
  i32.ge_u
  i32.const 3
  i32.add
  local.get $0
  i32.const 1000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 100
  i32.lt_u
  select
  local.get $0
  i32.const 1000000
  i32.ge_u
  i32.const 6
  i32.add
  local.get $0
  i32.const 1000000000
  i32.ge_u
  i32.const 8
  i32.add
  local.get $0
  i32.const 100000000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 10000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000
  i32.lt_u
  select
 )
 (func $~lib/util/number/utoa_simple<u32> (; 34 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $do-continue|0
   local.get $1
   i32.const 10
   i32.rem_u
   local.set $3
   local.get $1
   i32.const 10
   i32.div_u
   local.set $1
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $3
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   br_if $do-continue|0
  end
 )
 (func $~lib/string/String#get:length (; 35 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String.__concat (; 36 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $__inlined_func$~lib/string/String#concat (result i32)
   local.get $0
   i32.const 1664
   local.get $0
   select
   local.set $2
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.eqz
   if
    local.get $0
    i32.const 1664
    i32.ne
    if
     local.get $0
     call $~lib/rt/pure/__release
    end
    i32.const 1664
    local.set $0
   end
   local.get $2
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.tee $3
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.tee $4
   i32.add
   local.tee $1
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const 1696
    br $__inlined_func$~lib/string/String#concat
   end
   local.get $1
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.tee $1
   local.get $2
   local.get $3
   call $~lib/memory/memory.copy
   local.get $1
   local.get $3
   i32.add
   local.get $0
   local.get $4
   call $~lib/memory/memory.copy
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
  end
 )
 (func $src/header/validateHeader (; 37 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 8
  i32.const 3
  i32.const 1536
  call $~lib/rt/__allocBuffer
  local.set $1
  loop $for-loop|0
   local.get $2
   i32.const 8
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.load offset=4
    i32.add
    i32.load8_u
    local.get $1
    local.get $2
    i32.add
    i32.load8_u
    i32.ne
    if
     i32.const 1568
     local.get $2
     if (result i32)
      local.get $2
      i32.const 31
      i32.shr_u
      local.tee $0
      if
       i32.const 0
       local.get $2
       i32.sub
       local.set $2
      end
      local.get $2
      call $~lib/util/number/decimalCount32
      local.get $0
      i32.add
      local.tee $3
      i32.const 1
      i32.shl
      i32.const 1
      call $~lib/rt/tlsf/__alloc
      local.tee $1
      local.get $2
      local.get $3
      call $~lib/util/number/utoa_simple<u32>
      local.get $0
      if
       local.get $1
       i32.const 45
       i32.store16
      end
      local.get $1
      call $~lib/rt/pure/__retain
     else
      i32.const 1632
     end
     local.tee $0
     call $~lib/string/String.__concat
     local.tee $1
     i32.const 1712
     call $~lib/string/String.__concat
     local.tee $2
     call $src/util/log/logString
     i32.const -1
     call $src/util/exit/_exit
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     i32.const -1
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 7
 )
 (func $~lib/util/string/compareImpl (; 38 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $do-continue|0
    local.get $0
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $2
   local.tee $3
   i32.const 1
   i32.sub
   local.set $2
   local.get $3
   if
    local.get $0
    i32.load16_u
    local.tee $3
    local.get $1
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $3
     local.get $4
     i32.sub
     return
    end
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (; 39 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.eqz
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.tee $2
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/util/hash/hash8 (; 40 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/map/Map<u8,~lib/staticarray/StaticArray<u8>>#find (; 41 ;) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  i32.load
  local.get $1
  i32.const 4
  i32.load
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $1
  loop $while-continue|0
   local.get $1
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     i32.load8_u
     local.get $0
     i32.const 255
     i32.and
     i32.eq
    end
    if
     local.get $1
     return
    end
    local.get $1
    i32.load offset=8
    i32.const -2
    i32.and
    local.set $1
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/memory/memory.fill (; 42 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   local.tee $2
   i32.const 0
   i32.store8 offset=3
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   i32.const 28
   i32.sub
   local.tee $1
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 43 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 1856
   i32.const 1904
   i32.const 54
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/map/Map<u8,~lib/staticarray/StaticArray<u8>>#rehash (; 44 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $4
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  i32.const 8
  i32.load
  local.tee $2
  i32.const 16
  i32.load
  i32.const 12
  i32.mul
  i32.add
  local.set $6
  local.get $1
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $6
   i32.ne
   if
    local.get $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $2
     i32.load8_u
     i32.store8
     local.get $3
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $3
     local.get $4
     local.get $2
     i32.load8_u
     call $~lib/util/hash/hash8
     local.get $0
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $7
     i32.load
     i32.store offset=8
     local.get $7
     local.get $3
     i32.store
     local.get $3
     i32.const 12
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 12
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $4
  local.tee $2
  i32.const 0
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  i32.const 0
  local.get $2
  i32.store
  i32.const 4
  local.get $0
  i32.store
  local.get $1
  local.tee $0
  i32.const 8
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $0
   local.get $2
   call $~lib/rt/pure/__release
  end
  i32.const 8
  local.get $0
  i32.store
  i32.const 12
  local.get $5
  i32.store
  i32.const 16
  i32.const 20
  i32.load
  i32.store
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<u8,~lib/staticarray/StaticArray<u8>>#set (; 45 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $0
  i32.const 255
  i32.and
  call $~lib/util/hash/hash8
  local.tee $3
  call $~lib/map/Map<u8,~lib/staticarray/StaticArray<u8>>#find
  local.tee $2
  if
   local.get $1
   local.get $2
   i32.load offset=4
   local.tee $0
   i32.ne
   if
    local.get $2
    local.get $1
    call $~lib/rt/pure/__retain
    i32.store offset=4
    local.get $0
    call $~lib/rt/pure/__release
   end
  else
   i32.const 16
   i32.load
   i32.const 12
   i32.load
   i32.eq
   if
    i32.const 20
    i32.load
    i32.const 12
    i32.load
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     i32.const 4
     i32.load
    else
     i32.const 4
     i32.load
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u8,~lib/staticarray/StaticArray<u8>>#rehash
   end
   i32.const 8
   i32.load
   i32.const 16
   i32.const 16
   i32.load
   local.tee $4
   i32.const 1
   i32.add
   i32.store
   local.get $4
   i32.const 12
   i32.mul
   i32.add
   local.tee $2
   local.get $0
   i32.store8
   local.get $2
   local.get $1
   call $~lib/rt/pure/__retain
   i32.store offset=4
   i32.const 20
   i32.const 20
   i32.load
   i32.const 1
   i32.add
   i32.store
   local.get $2
   i32.const 0
   i32.load
   local.get $3
   i32.const 4
   i32.load
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $2
   i32.store
  end
  i32.const 0
 )
 (func $~lib/util/number/itoa<u8> (; 46 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $__inlined_func$~lib/util/number/utoa32 (result i32)
   i32.const 1632
   local.get $0
   i32.const 255
   i32.and
   local.tee $0
   i32.eqz
   br_if $__inlined_func$~lib/util/number/utoa32
   drop
   local.get $0
   call $~lib/util/number/decimalCount32
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.tee $2
   local.get $0
   local.get $1
   call $~lib/util/number/utoa_simple<u32>
   local.get $2
   call $~lib/rt/pure/__retain
  end
 )
 (func $src/chunkTypes/IHDR#constructor (; 47 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  i32.const 0
  i32.const 5
  i32.const 3
  i32.const 1824
  call $~lib/rt/__allocBuffer
  call $~lib/map/Map<u8,~lib/staticarray/StaticArray<u8>>#set
  call $~lib/rt/pure/__release
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 1968
  call $~lib/rt/__allocBuffer
  call $~lib/map/Map<u8,~lib/staticarray/StaticArray<u8>>#set
  call $~lib/rt/pure/__release
  i32.const 3
  i32.const 4
  i32.const 3
  i32.const 2000
  call $~lib/rt/__allocBuffer
  call $~lib/map/Map<u8,~lib/staticarray/StaticArray<u8>>#set
  call $~lib/rt/pure/__release
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 2032
  call $~lib/rt/__allocBuffer
  call $~lib/map/Map<u8,~lib/staticarray/StaticArray<u8>>#set
  call $~lib/rt/pure/__release
  i32.const 6
  i32.const 2
  i32.const 3
  i32.const 2064
  call $~lib/rt/__allocBuffer
  call $~lib/map/Map<u8,~lib/staticarray/StaticArray<u8>>#set
  call $~lib/rt/pure/__release
  local.get $3
  local.get $3
  i32.const 255
  i32.and
  call $~lib/util/hash/hash8
  call $~lib/map/Map<u8,~lib/staticarray/StaticArray<u8>>#find
  local.tee $8
  i32.eqz
  if
   i32.const 2096
   i32.const 2160
   i32.const 111
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.tee $8
  if
   i32.const 17
   i32.const 8
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.tee $9
   i32.const 0
   i32.store
   local.get $9
   local.get $0
   i32.store offset=4
   local.get $9
   local.get $1
   i32.store offset=8
   local.get $9
   local.get $2
   i32.store8 offset=12
   local.get $9
   local.get $3
   i32.store8 offset=13
   local.get $9
   local.get $4
   i32.store8 offset=14
   local.get $9
   local.get $5
   i32.store8 offset=15
   local.get $9
   local.get $6
   i32.store8 offset=16
   local.get $8
   local.tee $7
   local.get $9
   i32.load
   local.tee $10
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $7
    local.get $10
    call $~lib/rt/pure/__release
   end
   local.get $9
   local.get $7
   i32.store
  else
   local.get $3
   call $~lib/util/number/itoa<u8>
   local.tee $7
   i32.const 2208
   call $~lib/string/String.__concat
   local.tee $10
   call $src/util/log/logString
   local.get $7
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.const 255
  i32.and
  if
   local.get $4
   call $~lib/util/number/itoa<u8>
   local.tee $7
   i32.const 2208
   call $~lib/string/String.__concat
   local.tee $10
   call $src/util/log/logString
   local.get $7
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.const 255
  i32.and
  if
   local.get $5
   call $~lib/util/number/itoa<u8>
   local.tee $7
   i32.const 2208
   call $~lib/string/String.__concat
   local.tee $10
   call $src/util/log/logString
   local.get $7
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.eqz
  if
   i32.const 17
   i32.const 8
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $9
  end
  local.get $9
  i32.const 0
  i32.store
  local.get $9
  local.get $0
  i32.store offset=4
  local.get $9
  local.get $1
  i32.store offset=8
  local.get $9
  local.get $2
  i32.store8 offset=12
  local.get $9
  local.get $3
  i32.store8 offset=13
  local.get $9
  local.get $4
  i32.store8 offset=14
  local.get $9
  local.get $5
  i32.store8 offset=15
  local.get $9
  local.get $6
  i32.store8 offset=16
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $src/chunkTypes/sRGB#constructor (; 48 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 255
  i32.and
  local.set $5
  i32.const 4
  i32.const 12
  i32.const 2384
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  local.set $3
  block $__inlined_func$~lib/array/Array<i32>#indexOf
   local.get $4
   i32.load offset=12
   local.tee $2
   if (result i32)
    i32.const 0
    local.get $2
    i32.ge_s
   else
    i32.const 1
   end
   if
    i32.const -1
    local.set $1
    br $__inlined_func$~lib/array/Array<i32>#indexOf
   end
   local.get $3
   i32.load offset=4
   local.set $3
   loop $while-continue|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     local.get $5
     local.get $3
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.eq
     br_if $__inlined_func$~lib/array/Array<i32>#indexOf
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $1
  end
  local.get $1
  i32.const 0
  i32.lt_s
  if
   local.get $0
   call $~lib/util/number/itoa<u8>
   local.tee $1
   i32.const 2416
   call $~lib/string/String.__concat
   local.tee $2
   call $src/util/log/logString
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
  end
  i32.const 1
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $1
  local.get $0
  i32.store8
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $src/parser/Parser#main (; 49 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $0
  i32.load offset=24
  local.get $0
  i32.load
  call $src/header/validateHeader
  i32.store
  i32.const 1696
  local.set $1
  loop $while-continue|0
   local.get $1
   i32.const 1232
   call $~lib/string/String.__eq
   i32.eqz
   if
    local.get $0
    call $src/parser/Parser#readNext32BitsNum
    local.set $6
    local.get $0
    call $src/parser/Parser#readNext32BitsStr
    local.set $2
    local.get $1
    call $~lib/rt/pure/__release
    i32.const 1776
    local.get $2
    local.tee $1
    call $~lib/string/String.__concat
    local.tee $4
    call $src/util/log/logString
    local.get $1
    i32.const 1200
    call $~lib/string/String.__eq
    if
     local.get $0
     call $src/parser/Parser#readNext32BitsNum
     local.get $0
     call $src/parser/Parser#readNext32BitsNum
     local.get $0
     call $src/parser/Parser#readNext8bits
     local.get $0
     call $src/parser/Parser#readNext8bits
     local.get $0
     call $src/parser/Parser#readNext8bits
     local.get $0
     call $src/parser/Parser#readNext8bits
     local.get $0
     call $src/parser/Parser#readNext8bits
     call $src/chunkTypes/IHDR#constructor
     local.set $2
     local.get $0
     i32.load offset=8
     call $~lib/rt/pure/__release
     local.get $0
     local.get $2
     i32.store offset=8
    else
     local.get $1
     i32.const 1296
     call $~lib/string/String.__eq
     if
      local.get $0
      call $src/parser/Parser#readNext8bits
      local.set $3
      local.get $0
      call $src/parser/Parser#readNext8bits
      local.set $6
      local.get $0
      call $src/parser/Parser#readNext8bits
      local.set $2
      i32.const 4
      i32.const 9
      call $~lib/rt/tlsf/__alloc
      call $~lib/rt/pure/__retain
      local.tee $5
      local.get $3
      i32.store8
      local.get $5
      local.get $6
      i32.store8 offset=1
      local.get $5
      local.get $2
      i32.store8 offset=2
      local.get $5
      i32.const 3
      i32.store8 offset=3
      local.get $0
      i32.load offset=12
      call $~lib/rt/pure/__release
      local.get $0
      local.get $5
      i32.store offset=12
     else
      local.get $1
      i32.const 1360
      call $~lib/string/String.__eq
      if
       local.get $0
       call $src/parser/Parser#readNext32BitsNum
       local.set $6
       i32.const 4
       i32.const 11
       call $~lib/rt/tlsf/__alloc
       call $~lib/rt/pure/__retain
       local.tee $2
       local.get $6
       i32.store
       local.get $0
       i32.load offset=20
       call $~lib/rt/pure/__release
       local.get $0
       local.get $2
       i32.store offset=20
      else
       local.get $1
       i32.const 1328
       call $~lib/string/String.__eq
       if
        local.get $0
        call $src/parser/Parser#readNext8bits
        call $src/chunkTypes/sRGB#constructor
        local.set $2
        local.get $0
        i32.load offset=16
        call $~lib/rt/pure/__release
        local.get $0
        local.get $2
        i32.store offset=16
       else
        local.get $1
        i32.const 1264
        call $~lib/string/String.__eq
        if
         local.get $0
         call $src/parser/Parser#readNext8bits
         local.get $0
         call $src/parser/Parser#readNext8bits
         local.set $2
         i32.const 255
         i32.and
         call $src/util/log/logNumber
         local.get $2
         i32.const 255
         i32.and
         call $src/util/log/logNumber
        else
         local.get $0
         local.get $6
         local.get $0
         i32.load
         i32.add
         i32.store
        end
       end
      end
     end
    end
    local.get $0
    local.get $0
    i32.load
    i32.const 4
    i32.add
    i32.store
    local.get $4
    call $~lib/rt/pure/__release
    br $while-continue|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 1
 )
 (func $~lib/rt/pure/__collect (; 50 ;)
  nop
 )
 (func $~lib/rt/pure/decrement (; 51 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 268435455
  i32.and
  local.set $1
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 1152
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   call $~lib/rt/__visit_members
   local.get $2
   i32.const -2147483648
   i32.and
   if
    i32.const 0
    i32.const 1152
    i32.const 126
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $0
   i32.load
   i32.const 1
   i32.or
   i32.store
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 1152
    i32.const 136
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.sub
   local.get $2
   i32.const -268435456
   i32.and
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/rt/pure/__visit (; 52 ;) (param $0 i32)
  local.get $0
  i32.const 2620
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/pure/decrement
 )
 (func $~lib/rt/__visit_members (; 53 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $switch$1$default
   block $switch$1$case$14
    block $switch$1$case$9
     block $switch$1$case$8
      block $switch$1$case$6
       block $switch$1$case$5
        block $switch$1$case$4
         block $switch$1$case$2
          local.get $0
          i32.const 8
          i32.sub
          i32.load
          br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$5 $switch$1$case$6 $switch$1$case$4 $switch$1$case$8 $switch$1$case$9 $switch$1$case$4 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$14 $switch$1$default
         end
         return
        end
        local.get $0
        i32.load
        local.tee $0
        if
         local.get $0
         call $~lib/rt/pure/__visit
        end
        return
       end
       return
      end
      local.get $0
      i32.load
      call $~lib/rt/pure/__visit
      local.get $0
      i32.load offset=8
      local.tee $2
      local.tee $1
      local.get $0
      i32.load offset=16
      i32.const 12
      i32.mul
      i32.add
      local.set $0
      loop $while-continue|0
       local.get $1
       local.get $0
       i32.lt_u
       if
        local.get $1
        i32.load offset=8
        i32.const 1
        i32.and
        i32.eqz
        if
         local.get $1
         i32.load offset=4
         call $~lib/rt/pure/__visit
        end
        local.get $1
        i32.const 12
        i32.add
        local.set $1
        br $while-continue|0
       end
      end
      local.get $2
      call $~lib/rt/pure/__visit
      return
     end
     local.get $0
     i32.load offset=4
     local.tee $1
     if
      local.get $1
      call $~lib/rt/pure/__visit
     end
     local.get $0
     i32.load offset=8
     local.tee $1
     if
      local.get $1
      call $~lib/rt/pure/__visit
     end
     local.get $0
     i32.load offset=12
     local.tee $1
     if
      local.get $1
      call $~lib/rt/pure/__visit
     end
     local.get $0
     i32.load offset=16
     local.tee $1
     if
      local.get $1
      call $~lib/rt/pure/__visit
     end
     local.get $0
     i32.load offset=20
     local.tee $1
     if
      local.get $1
      call $~lib/rt/pure/__visit
     end
     local.get $0
     i32.load offset=24
     local.tee $0
     if
      local.get $0
      call $~lib/rt/pure/__visit
     end
     return
    end
    local.get $0
    i32.load offset=4
    local.tee $1
    local.get $0
    i32.load offset=12
    i32.const 2
    i32.shl
    i32.add
    local.set $2
    loop $while-continue|00
     local.get $1
     local.get $2
     i32.lt_u
     if
      local.get $1
      i32.load
      local.tee $3
      if
       local.get $3
       call $~lib/rt/pure/__visit
      end
      local.get $1
      i32.const 4
      i32.add
      local.set $1
      br $while-continue|00
     end
    end
    local.get $0
    i32.load
    call $~lib/rt/pure/__visit
    return
   end
   local.get $0
   i32.load
   call $~lib/rt/pure/__visit
   return
  end
  unreachable
 )
)
