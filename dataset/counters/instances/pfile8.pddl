;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 5)
	(= (value c1) 5)
	(= (value c2) 9)
	(= (value c3) 5)
	(= (value c4) 6)

        (= (rate_value r0) 2.1332488268774643)
	(= (rate_value r1) 3.3983544511282417)
	(= (rate_value r2) 3.317650828816159)
	(= (rate_value r3) 1.0754080525150989)

        (= (factor) 0.13077011536559602)

		(= (max_int) 12)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
	(<= (+ (value c1) 1) (value c2))
	(<= (+ (value c2) 1) (value c3))
	(<= (+ (value c3) 1) (value c4))
		)
	)
)

