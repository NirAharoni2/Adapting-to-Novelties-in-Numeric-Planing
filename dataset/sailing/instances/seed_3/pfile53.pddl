;; Automatically generated sailing problem
(define (problem instance_53)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 10.0)
		(= (y b0) 9.0)

		(= (d p0) -69.0)

		(= (drift_factor) 3.0103)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)