;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 1)
	(= (value c1) 4)
	(= (value c2) 3)
	(= (value c3) 7)
	(= (value c4) 12)
	(= (value c5) 8)

        (= (rate_value r0) 3.7312973970988175)
	(= (rate_value r1) 3.257768273259414)
	(= (rate_value r2) 1.873295670479918)
	(= (rate_value r3) 2.829110972287357)

        (= (factor) 0.24291481295601083)

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

