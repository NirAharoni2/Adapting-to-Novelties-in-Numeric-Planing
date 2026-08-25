;; Automatically generated sailing problem
(define (problem instance_91)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) 4.0)

		(= (d p0) -89.0)

		(= (drift_factor) 3.04858)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)