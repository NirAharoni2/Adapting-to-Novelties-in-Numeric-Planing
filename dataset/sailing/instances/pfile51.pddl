;; Automatically generated sailing problem
;;Setting seed to 51
(define (problem instance_51)

	(:domain sailing)

	(:objects
		b0  - boat
		p0  - person
	)

	(:init
		(= (drift_factor) 3.52917)
		(= (x b0) 4.0)
		(= (y b0) 3.0)

		(= (d p0) 47.0)

	)

	(:goal
		(and
			(saved p0)
		)
	)
)