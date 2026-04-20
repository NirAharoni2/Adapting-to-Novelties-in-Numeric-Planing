;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 4)
	(= (value c1) 1)
	(= (value c2) 8)
	(= (value c3) 11)

        (= (rate_value r0) 3.3049342402036666)
	(= (rate_value r1) 1.7411782589880602)
	(= (rate_value r2) 1.982079315413832)
	(= (rate_value r3) 2.876282264989012)

        (= (factor) 0.7796701369573904)

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

