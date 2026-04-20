;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 8)
	(= (value c1) 12)
	(= (value c2) 6)
	(= (value c3) 9)
	(= (value c4) 2)
	(= (value c5) 2)

        (= (rate_value r0) 3.9368628083359685)
	(= (rate_value r1) 1.6453748496952687)
	(= (rate_value r2) 2.5221704704405488)
	(= (rate_value r3) 2.5110456264409935)

        (= (factor) 0.7854015281644119)

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

