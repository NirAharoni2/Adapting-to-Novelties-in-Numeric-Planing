;; Automatically generated sailing problem
(define (problem instance_57)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 10.0)
		(= (y b0) 8.0)

		(= (d p0) -62.0)

		(= (drift_factor) 2.03833)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)