;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 11)
	(= (value c1) 6)
	(= (value c2) 5)
	(= (value c3) 3)
	(= (value c4) 3)
	(= (value c5) 0)

        (= (rate_value r0) 2.9863567238010313)
	(= (rate_value r1) 2.1342431765949605)
	(= (rate_value r2) 2.137812496763121)
	(= (rate_value r3) 3.269265794107463)

        (= (factor) 0.557902863269161)

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

