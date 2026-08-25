;; Automatically generated sailing problem
(define (problem instance_70)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) 10.0)

		(= (d p0) 124.0)

		(= (drift_factor) 3.31787)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)