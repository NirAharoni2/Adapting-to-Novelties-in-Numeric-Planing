;; Automatically generated sailing problem
(define (problem instance_94)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) -8.0)

		(= (d p0) -117.0)

		(= (drift_factor) 3.20047)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)