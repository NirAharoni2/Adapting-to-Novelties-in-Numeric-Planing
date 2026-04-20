;; Automatically generated sailing problem
;;Setting seed to 27
(define (problem instance_27)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.56164)
		(= (x b0) 6.0)
		(= (y b0) 2.0)
		(= (x b1) -4.0)
		(= (y b1) 4.0)

		(= (d p0) -146.0)
		(= (d p1) -106.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)