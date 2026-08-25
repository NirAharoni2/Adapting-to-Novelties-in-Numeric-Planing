;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 2)
	(= (value c1) 4)
	(= (value c2) 5)
	(= (value c3) 12)

        (= (rate_value r0) 3.6952874565092033)
	(= (rate_value r1) 1.7428479771682017)
	(= (rate_value r2) 3.3123534682135087)
	(= (rate_value r3) 2.4197864979389623)

        (= (factor) 0.1869261243491348)

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

