;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 9)
	(= (value c1) 9)
	(= (value c2) 0)
	(= (value c3) 6)
	(= (value c4) 1)
	(= (value c5) 1)

        (= (rate_value r0) 2.38802973134153)
	(= (rate_value r1) 1.4725227767929971)
	(= (rate_value r2) 3.3924686866066684)
	(= (rate_value r3) 2.707583409789277)

        (= (factor) 0.8712078793382793)

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

