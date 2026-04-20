;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 1)
	(= (value c1) 4)
	(= (value c2) 2)
	(= (value c3) 6)

        (= (rate_value r0) 1.6174652318695548)
	(= (rate_value r1) 3.368077592743956)
	(= (rate_value r2) 2.7766461910184015)
	(= (rate_value r3) 2.463461289794734)

        (= (factor) 0.9546754349030716)

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

