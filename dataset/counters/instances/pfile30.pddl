;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 6)
	(= (value c1) 1)
	(= (value c2) 3)
	(= (value c3) 2)

        (= (rate_value r0) 2.1368605257215463)
	(= (rate_value r1) 2.7938756280317785)
	(= (rate_value r2) 1.9009543414374146)
	(= (rate_value r3) 3.0873083665165666)

        (= (factor) 0.6670315095007424)

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

