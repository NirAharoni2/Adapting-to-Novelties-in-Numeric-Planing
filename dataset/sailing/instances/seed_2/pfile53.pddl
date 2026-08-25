;; Automatically generated sailing problem
(define (problem instance_53)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 3.0)
		(= (y b0) -5.0)

		(= (d p0) 113.0)

		(= (drift_factor) 3.46585)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)