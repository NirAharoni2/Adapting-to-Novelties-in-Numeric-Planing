;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 6)
	(= (value c1) 1)
	(= (value c2) 9)
	(= (value c3) 0)
	(= (value c4) 2)
	(= (value c5) 2)

        (= (rate_value r0) 2.817644681695028)
	(= (rate_value r1) 2.316898121604376)
	(= (rate_value r2) 3.0115959033842907)
	(= (rate_value r3) 3.0588120321713053)

        (= (factor) 0.5315593540595448)

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

