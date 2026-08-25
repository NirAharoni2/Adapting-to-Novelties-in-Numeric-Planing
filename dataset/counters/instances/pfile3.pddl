;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 4)
	(= (value c1) 10)
	(= (value c2) 9)
	(= (value c3) 7)
	(= (value c4) 4)

        (= (rate_value r0) 2.858146560949311)
	(= (rate_value r1) 1.246901073206482)
	(= (rate_value r2) 2.3943701549808605)
	(= (rate_value r3) 1.7649757495713545)

        (= (factor) 0.6833576438117493)

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

