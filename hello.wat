(module
  (import "env" "memory" (memory 1))
  (import "env" "log" (func $log (param i32 i32)))

  (data (i32.const 0) "Hello from Webassembly!")

  (func (export "hello")
    i32.const 0
    i32.const 23
    call $log
  )
)
