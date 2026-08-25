;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 4)
	(= (value c1) 11)
	(= (value c2) 5)
	(= (value c3) 11)

        (= (rate_value r0) 2.7516647951138804)
	(= (rate_value r1) 3.9590395818431814)
	(= (rate_value r2) 1.9600470330168707)
	(= (rate_value r3) 3.9086511919457156)

        (= (factor) 0.27904263044317035)

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

