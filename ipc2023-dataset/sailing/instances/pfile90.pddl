;; Automatically generated sailing problem
;;Setting seed to 90
(define (problem instance_90)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.00361)
		(= (x b0) -4.0)
		(= (y b0) 5.0)

		(= (d p0) -95.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)