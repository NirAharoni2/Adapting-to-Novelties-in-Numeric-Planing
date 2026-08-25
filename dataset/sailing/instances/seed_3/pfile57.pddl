;; Automatically generated sailing problem
(define (problem instance_57)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -5.0)

		(= (d p0) 116.0)

		(= (drift_factor) 3.45958)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)