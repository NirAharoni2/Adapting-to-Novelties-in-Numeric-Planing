;; Automatically generated sailing problem
(define (problem instance_84)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -3.0)
		(= (y b0) 8.0)

		(= (d p0) 51.0)

		(= (drift_factor) 2.25781)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)