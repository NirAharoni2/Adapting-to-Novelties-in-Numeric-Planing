;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 2)
	(= (value c1) 8)
	(= (value c2) 7)
	(= (value c3) 9)

        (= (rate_value r0) 2.7340728888409633)
	(= (rate_value r1) 3.622340582146161)
	(= (rate_value r2) 1.429299954142241)
	(= (rate_value r3) 3.8366197116201626)

        (= (factor) 0.9464317272115685)

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

