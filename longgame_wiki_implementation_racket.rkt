#|.metadata name longgame_wiki_implementation_racket.rkt
.metadata created ty21.3.19.5.56.26azm4d5s
.metadata (updated ty21.3.19.5.56.26azm4d5s ty21.5.5.20.43.02pzm4d3s ty21.5.5.20.49.22pzm4d3s 
)
.metadata (creators jesscxc) (updaters jesscxc)
.metadata (filename_extension rkt)
.metadata site NoLiesPlease.com
.meta run with Racket (site racket-lang.org )
|#
#lang racket/gui
;(connect data (multiline ""_ty21.3.10.23.51.11pzm5d3s
; .meta some transforming to closer to Longgamelang
(define-syntax connect (make-rename-transformer #'define))
(define-syntax macro (make-rename-transformer #'lambda))
(define-syntax prepend (make-rename-transformer #'cons))
(define-syntax case (make-rename-transformer #'cond))
(define-syntax do_sequence (make-rename-transformer #'let))
(connect true #t)
(connect false #f)
(connect first car)
(connect rest cdr)
;""_ty21.3.10.23.51.11pzm5d3s
;))

; .meta create GUI main window
(connect
  window_frame1
  (new frame%
       (label "Longgame Wiki (version ty21.5.5.20.45.30pzm4d3s)")
       (width 600)
       (height 400)))

; .meta configure fonts
(connect font_general (make-object font% 10 "Courier New" 'modern 'normal))

; .meta display main window
(send window_frame1 show true)

;(connect data (multiline ""_ty21.3.22.5.58.45azm4d1s
; .meta set up GUI framework of overall placement
(connect
  row1
  (new horizontal-panel%
       (parent window_frame1)))
(connect
  right_column1
  (new horizontal-panel%
       (parent row1)))
(connect
  right_panel1
  (new vertical-panel%
       (parent right_column1)
       (alignment '(right bottom))))
(connect
  text_panel1
  (new vertical-panel%
       (parent right_panel1)
       (style '(border))
       (alignment '(left top))))
(connect
  buttons_panel1
  (new vertical-panel%
       (parent right_column1)
       (style '(border))
       (alignment '(left top))))
;""_ty21.3.22.5.58.45azm4d1s
;))

;(connect data (multiline ""_ty21.3.22.7.06.31azm4d1s
; .meta set up placements and such for the displaying text/button/etc

; .meta text display example
(connect
  display_text
  (new message%
       (parent text_panel1)
       (label "text")
       (font font_general)))
;""_ty21.3.22.7.06.31azm4d1s
;))

;(connect data (multiline ""_ty21.3.22.7.07.58azm4d1s
; .meta make macros for the buttons to use
(connect
  placeholder_macro
  (macro
    (button event)
    10))
;""_ty21.3.22.7.07.58azm4d1s
;))

;(connect data (multiline ""_ty21.3.22.7.08.18azm4d1s
; .meta set up and place buttons on GUI
(connect
  button_placeholder
  (new button%
       (parent buttons_panel1)
       (label "button")
       (min-width 100)
       (min-height 50)
       (callback placeholder_macro)))
;""_ty21.3.22.7.08.18azm4d1s
;))
;.