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
	(= (value c2) 10)
	(= (value c3) 6)
	(= (value c4) 12)
	(= (value c5) 0)

        (= (rate_value r0) 1.6589640494340943)
	(= (rate_value r1) 3.5945733559088495)
	(= (rate_value r2) 3.0815240503793486)
	(= (rate_value r3) 2.6039229863773476)

        (= (factor) 0.1502086112170155)

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

