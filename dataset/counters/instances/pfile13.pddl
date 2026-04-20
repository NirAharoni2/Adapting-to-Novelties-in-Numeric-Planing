;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 7)
	(= (value c1) 11)
	(= (value c2) 5)
	(= (value c3) 4)
	(= (value c4) 5)

        (= (rate_value r0) 1.9904382356413426)
	(= (rate_value r1) 1.022729711160177)
	(= (rate_value r2) 3.6128029261813324)
	(= (rate_value r3) 1.5087693276436487)

        (= (factor) 0.8364561054981315)

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

