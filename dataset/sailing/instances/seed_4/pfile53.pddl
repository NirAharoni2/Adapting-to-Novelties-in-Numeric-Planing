;; Automatically generated sailing problem
(define (problem instance_53)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -4.0)

		(= (d p0) -107.0)

		(= (drift_factor) 3.49467)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)