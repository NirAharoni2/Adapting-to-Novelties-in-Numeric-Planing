;; Automatically generated sailing problem
(define (problem instance_96)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 5.0)
		(= (y b0) 4.0)

		(= (d p0) -75.0)

		(= (drift_factor) 3.09237)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)