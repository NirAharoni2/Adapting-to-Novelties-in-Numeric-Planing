;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 0)
	(= (value c1) 12)
	(= (value c2) 10)
	(= (value c3) 9)

        (= (rate_value r0) 3.3117269439983206)
	(= (rate_value r1) 1.500274541953001)
	(= (rate_value r2) 3.519975494572548)
	(= (rate_value r3) 3.4134521497818837)

        (= (factor) 0.92822213766496)

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

