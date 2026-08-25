;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 7)
	(= (value c1) 5)
	(= (value c2) 0)
	(= (value c3) 2)
	(= (value c4) 3)
	(= (value c5) 9)

        (= (rate_value r0) 2.830090378887108)
	(= (rate_value r1) 1.374786615980916)
	(= (rate_value r2) 3.4944824889995827)
	(= (rate_value r3) 3.5195135647887112)

        (= (factor) 0.505789666165435)

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

