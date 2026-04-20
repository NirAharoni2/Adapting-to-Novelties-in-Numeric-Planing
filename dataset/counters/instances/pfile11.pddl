;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 7)
	(= (value c1) 0)
	(= (value c2) 1)
	(= (value c3) 2)
	(= (value c4) 2)
	(= (value c5) 2)

        (= (rate_value r0) 3.7112868369894425)
	(= (rate_value r1) 3.277935610589778)
	(= (rate_value r2) 3.5672346098466834)
	(= (rate_value r3) 1.2112857763268479)

        (= (factor) 0.44103596887554863)

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

