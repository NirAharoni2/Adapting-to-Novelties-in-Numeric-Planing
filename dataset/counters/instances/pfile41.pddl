;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 0)
	(= (value c1) 2)
	(= (value c2) 9)
	(= (value c3) 12)
	(= (value c4) 5)
	(= (value c5) 3)

        (= (rate_value r0) 1.7562312865586174)
	(= (rate_value r1) 2.6134936209414916)
	(= (rate_value r2) 2.9283173389030663)
	(= (rate_value r3) 3.1483524808351913)

        (= (factor) 0.16213403978028407)

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

