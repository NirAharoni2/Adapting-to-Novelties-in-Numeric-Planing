;; Automatically generated sailing problem
(define (problem instance_75)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) 5.0)

		(= (d p0) 122.0)

		(= (drift_factor) 2.7076)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)