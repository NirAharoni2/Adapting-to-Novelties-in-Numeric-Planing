;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 8)
	(= (value c1) 7)
	(= (value c2) 1)
	(= (value c3) 12)

        (= (rate_value r0) 2.111265600652625)
	(= (rate_value r1) 3.457137980998308)
	(= (rate_value r2) 3.268598217385716)
	(= (rate_value r3) 3.5801426506701115)

        (= (factor) 0.3730980265651428)

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

