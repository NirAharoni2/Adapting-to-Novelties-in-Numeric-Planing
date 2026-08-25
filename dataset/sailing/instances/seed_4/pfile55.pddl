;; Automatically generated sailing problem
(define (problem instance_55)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) 10.0)

		(= (d p0) 108.0)

		(= (drift_factor) 2.93484)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)