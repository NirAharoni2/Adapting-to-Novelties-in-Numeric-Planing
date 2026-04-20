;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 12)
	(= (value c1) 0)
	(= (value c2) 5)
	(= (value c3) 5)
	(= (value c4) 8)
	(= (value c5) 9)

        (= (rate_value r0) 1.0205849811811118)
	(= (rate_value r1) 2.427909684094241)
	(= (rate_value r2) 3.2463614850218585)
	(= (rate_value r3) 1.0236522595211979)

        (= (factor) 0.9339934858736576)

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

