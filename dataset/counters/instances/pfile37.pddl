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
	(= (value c2) 0)
	(= (value c3) 1)

        (= (rate_value r0) 1.1071412423598006)
	(= (rate_value r1) 1.7640714238088275)
	(= (rate_value r2) 2.1417437372680244)
	(= (rate_value r3) 2.9727668201772293)

        (= (factor) 0.8171518890137439)

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

