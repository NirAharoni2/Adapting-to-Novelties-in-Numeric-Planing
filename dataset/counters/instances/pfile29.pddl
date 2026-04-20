;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 0)
	(= (value c1) 8)
	(= (value c2) 7)
	(= (value c3) 3)

        (= (rate_value r0) 1.6718309663846411)
	(= (rate_value r1) 1.2723771637292787)
	(= (rate_value r2) 2.448317723409709)
	(= (rate_value r3) 2.7686861247794994)

        (= (factor) 0.3909795648076665)

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

