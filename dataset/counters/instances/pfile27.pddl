;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 9)
	(= (value c1) 6)
	(= (value c2) 12)
	(= (value c3) 3)
	(= (value c4) 7)
	(= (value c5) 6)

        (= (rate_value r0) 1.808014498816621)
	(= (rate_value r1) 1.9291898486679506)
	(= (rate_value r2) 1.5589243787068687)
	(= (rate_value r3) 2.6209920295117337)

        (= (factor) 0.2953032699079417)

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

