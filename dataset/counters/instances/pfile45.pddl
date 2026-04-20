;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 6)
	(= (value c1) 0)
	(= (value c2) 3)
	(= (value c3) 0)
	(= (value c4) 1)
	(= (value c5) 5)

        (= (rate_value r0) 3.0642925906895497)
	(= (rate_value r1) 2.1745849544354896)
	(= (rate_value r2) 3.3818417221246144)
	(= (rate_value r3) 1.8450903038296769)

        (= (factor) 0.35301418957875763)

		(= (max_int) 12)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
	(<= (+ (value c1) 1) (value c2))
	(<= (+ (value c2) 1) (value c3))
	(<= (+ (value c3) 1) (value c4))
	(<= (+ (value c4) 1) (value c5))
		)
	)
)

