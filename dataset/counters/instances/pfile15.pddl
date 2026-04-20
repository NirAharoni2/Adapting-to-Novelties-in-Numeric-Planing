;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 11)
	(= (value c1) 0)
	(= (value c2) 3)
	(= (value c3) 7)
	(= (value c4) 11)
	(= (value c5) 9)

        (= (rate_value r0) 2.180942762135512)
	(= (rate_value r1) 1.1446357928191613)
	(= (rate_value r2) 1.9615843828791397)
	(= (rate_value r3) 1.089137346109238)

        (= (factor) 0.7267145490480791)

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

