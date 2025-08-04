;; Automatically generated sailing problem
;;Setting seed to 98
(define (problem instance_98)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.16724)
		(= (x b0) -3.0)
		(= (y b0) 4.0)

		(= (d p0) -106.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)