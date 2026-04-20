;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 12)
	(= (value c1) 8)
	(= (value c2) 8)
	(= (value c3) 3)
	(= (value c4) 10)

        (= (rate_value r0) 2.611805852582039)
	(= (rate_value r1) 3.9884401633455666)
	(= (rate_value r2) 2.6674749306102994)
	(= (rate_value r3) 2.2121811331374475)

        (= (factor) 0.6945915943958934)

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

