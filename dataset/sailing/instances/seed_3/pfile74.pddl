;; Automatically generated sailing problem
(define (problem instance_74)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) 4.0)

		(= (d p0) -74.0)

		(= (drift_factor) 3.33488)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)