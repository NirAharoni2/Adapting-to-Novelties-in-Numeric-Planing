;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 3)
	(= (value c1) 6)
	(= (value c2) 2)
	(= (value c3) 9)
	(= (value c4) 7)
	(= (value c5) 2)

        (= (rate_value r0) 1.412122774732324)
	(= (rate_value r1) 2.637333694522454)
	(= (rate_value r2) 3.2329156155260277)
	(= (rate_value r3) 3.4775315069475004)

        (= (factor) 0.8415662333475047)

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

