;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 8)
	(= (value c1) 7)
	(= (value c2) 7)
	(= (value c3) 3)
	(= (value c4) 1)
	(= (value c5) 2)

        (= (rate_value r0) 1.6958647848250585)
	(= (rate_value r1) 2.438830749788229)
	(= (rate_value r2) 2.558161233803606)
	(= (rate_value r3) 1.4133191828275675)

        (= (factor) 0.996238543790066)

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

