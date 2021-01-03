#lang typed/racket
(require stomp)
(define s (stomp-connect "dev.rabbitmq.com"
                         #:login "guest"
                         #:passcode "guest"
                         #:virtual-host "/"))
(stomp-send s "/exchange/amq.rabbitmq.log/info"
            (string->bytes/utf-8 "Hello world, from Racket!"))
(stomp-disconnect s)
