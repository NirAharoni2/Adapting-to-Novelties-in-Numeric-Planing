;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 1)
	(= (value c1) 9)
	(= (value c2) 5)
	(= (value c3) 1)
	(= (value c4) 4)
	(= (value c5) 8)

        (= (rate_value r0) 1.449501509852332)
	(= (rate_value r1) 2.2430756529207843)
	(= (rate_value r2) 2.260516545476647)
	(= (rate_value r3) 2.248914437631427)

        (= (factor) 0.9308489441385261)

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

