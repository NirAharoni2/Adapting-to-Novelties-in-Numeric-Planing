;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 12)
	(= (value c1) 10)
	(= (value c2) 12)
	(= (value c3) 4)
	(= (value c4) 3)

        (= (rate_value r0) 3.2458008453153284)
	(= (rate_value r1) 1.3145149020889804)
	(= (rate_value r2) 1.5240029812510172)
	(= (rate_value r3) 1.870070862108514)

        (= (factor) 0.3881793505896759)

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

