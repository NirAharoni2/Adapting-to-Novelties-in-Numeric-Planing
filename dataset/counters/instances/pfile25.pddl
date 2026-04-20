;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 10)
	(= (value c1) 2)
	(= (value c2) 11)
	(= (value c3) 1)
	(= (value c4) 5)

        (= (rate_value r0) 1.4795620109915621)
	(= (rate_value r1) 2.0267187933769932)
	(= (rate_value r2) 3.707819361040915)
	(= (rate_value r3) 1.669242414855162)

        (= (factor) 0.5864062076036143)

		(= (max_int) 12)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
	(<= (+ (value c1) 1) (value c2))
	(<= (+ (value c2) 1) (value c3))
	(<= (+ (value c3) 1) (value c4))
		)
	)
)

