;; Automatically generated sailing problem
(define (problem instance_58)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 10.0)
		(= (y b0) 4.0)

		(= (d p0) -54.0)

		(= (drift_factor) 2.32885)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)