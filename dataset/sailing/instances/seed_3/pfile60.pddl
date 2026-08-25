;; Automatically generated sailing problem
(define (problem instance_60)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -8.0)
		(= (y b0) 10.0)

		(= (d p0) -76.0)

		(= (drift_factor) 2.87843)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)