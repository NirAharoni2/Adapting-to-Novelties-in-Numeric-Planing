;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 2)
	(= (value c1) 0)
	(= (value c2) 2)
	(= (value c3) 10)

        (= (rate_value r0) 2.8754060764115543)
	(= (rate_value r1) 1.5221493380260072)
	(= (rate_value r2) 3.5524516370382284)
	(= (rate_value r3) 2.3253461982128227)

        (= (factor) 0.21910806858519627)

		(= (max_int) 12)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
	(<= (+ (value c1) 1) (value c2))
	(<= (+ (value c2) 1) (value c3))
		)
	)
)

