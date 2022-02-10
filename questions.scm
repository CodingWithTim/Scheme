(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Problem 15
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 15

  ;THIS WORKS
  ;(define lst (list (list 0 (car s))))

  ;((1 2) (3 4) (5 6))
  ;(list (list 1 2), (list (list 3 4), (list (list 5 6), nil)))
  (define (helper i s)
    (if (null? s) nil (cons (list i (car s)) (helper (+ i 1) (cdr s))))
  )
  
  (helper 0 s)
)

;; Problem 16

;; Merge two lists LIST1 and LIST2 according to INORDER? and return
;; the merged lists.
(define (merge inorder? list1 list2)
  ; BEGIN PROBLEM 16
    (define (inner1 list1 list2)
      (cond ((and (null? list1) (null? list2)) nil)
            ((null? list1) (cons (car list2) (inner1 list1 (cdr list2))))
            ((null? list2) (cons (car list1) (inner1 (cdr list1) list2)))
            ((< (car list2) (car list1)) (cons (car list2) (cons (car list1) (inner1 (cdr list1) (cdr list2)))))
            (else (cons (car list1) (cons (car list2) (inner1 (cdr list1) (cdr list2)))))
            )
    )

    (define (inner2 list1 list2)
      (cond ((and (null? list1) (null? list2)) nil)
            ((null? list1) (cons (car list2) (inner2 list1 (cdr list2))))
            ((null? list2) (cons (car list1) (inner2 (cdr list1) list2)))
            ((> (car list2) (car list1)) (cons (car list2) (cons (car list1) (inner2 (cdr list1) (cdr list2)))))
            (else (cons (car list1) (cons (car list2) (inner2 (cdr list1) (cdr list2)))))
            )
    )

    (cond ((and (null? list1) (null? list2)) nil)
      ((and (null? (cdr list1)) (null? (cdr list2))) (inner1 list1 list2))
      ((or (null? list1) (null? (cdr list1))) 
        (if (< (car list2) (cadr list2)) (inner1 list1 list2) (inner2 list1 list2))
      )
      ((or (null? list2) (null? (cdr list2))) 
        (if (< (car list1) (cadr list1)) (inner2 list1 list2) (inner1 list1 list2))
      )
      ((and (< (car list1) (cadr list1)) (< (car list2) (cadr list2)))
      (inner1 list1 list2))
      ((and (> (car list1) (cadr list1)) (> (car list2) (cadr list2)))
      (inner2 list1 list2))
      (else #f)
    )
  )
  ; END PROBLEM 16


;; Optional Problem 1

;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         ; BEGIN PROBLEM 17
         'replace-this-line
         ; END PROBLEM 17
         )
        ((quoted? expr)
         ; BEGIN PROBLEM 17
         'replace-this-line
         ; END PROBLEM 17
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 17
           'replace-this-line
           ; END PROBLEM 17
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 17
           'replace-this-line
           ; END PROBLEM 17
           ))
        (else
         ; BEGIN PROBLEM 17
         'replace-this-line
         ; END PROBLEM 17
         )))



;; Problem 21 (optional)
;; Draw the hax image using turtle graphics.
(define (hax d k)
  ; BEGIN Question 21
  'replace-this-line
  )
  ; END Question 21