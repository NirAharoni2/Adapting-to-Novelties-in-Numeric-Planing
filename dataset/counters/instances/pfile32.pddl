;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 4)
	(= (value c1) 0)
	(= (value c2) 9)
	(= (value c3) 3)

        (= (rate_value r0) 1.121867964687743)
	(= (rate_value r1) 2.183166349206197)
	(= (rate_value r2) 2.5062140261608037)
	(= (rate_value r3) 3.013953416873072)

        (= (factor) 0.11933068744277935)

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

