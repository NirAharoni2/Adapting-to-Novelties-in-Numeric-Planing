;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 5)
	(= (value c1) 8)
	(= (value c2) 6)
	(= (value c3) 0)

        (= (rate_value r0) 3.146192297028153)
	(= (rate_value r1) 2.9625045749450036)
	(= (rate_value r2) 1.202669211527307)
	(= (rate_value r3) 2.6287500856802453)

        (= (factor) 0.32173046848509645)

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

