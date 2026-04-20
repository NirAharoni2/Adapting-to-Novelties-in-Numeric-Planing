;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 4)
	(= (value c1) 7)
	(= (value c2) 6)
	(= (value c3) 10)
	(= (value c4) 1)

        (= (rate_value r0) 3.282041348784711)
	(= (rate_value r1) 1.532105501408147)
	(= (rate_value r2) 2.4383243646151267)
	(= (rate_value r3) 3.6386687217861082)

        (= (factor) 0.4062491537778714)

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

