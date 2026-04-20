;; Automatically generated sailing problem
;;Setting seed to 98
(define (problem instance_98)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.03566)
		(= (x b0) -7.0)
		(= (y b0) 2.0)
		(= (x b1) 6.0)
		(= (y b1) 5.0)

		(= (d p0) 112.0)
		(= (d p1) -55.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)