;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 4)
	(= (value c1) 8)
	(= (value c2) 11)
	(= (value c3) 2)
	(= (value c4) 7)

        (= (rate_value r0) 2.26617386846958)
	(= (rate_value r1) 3.9268180999814404)
	(= (rate_value r2) 3.1907928439077775)
	(= (rate_value r3) 2.5841612472577182)

        (= (factor) 0.1910894891269272)

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

