;; Automatically generated sailing problem
(define (problem instance_94)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) 5.0)

		(= (d p0) -70.0)

		(= (drift_factor) 3.26569)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)