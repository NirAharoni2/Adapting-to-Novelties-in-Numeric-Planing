;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 8)
	(= (value c1) 11)
	(= (value c2) 11)
	(= (value c3) 6)
	(= (value c4) 2)
	(= (value c5) 12)

        (= (rate_value r0) 1.5254643225048738)
	(= (rate_value r1) 3.4350174386419536)
	(= (rate_value r2) 3.963861130654406)
	(= (rate_value r3) 3.8619996653317687)

        (= (factor) 0.8142934450821103)

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

