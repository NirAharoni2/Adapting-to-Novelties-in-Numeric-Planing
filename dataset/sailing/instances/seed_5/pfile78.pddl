;; Automatically generated sailing problem
(define (problem instance_78)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 10.0)
		(= (y b0) 6.0)

		(= (d p0) 46.0)

		(= (drift_factor) 2.3608)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)