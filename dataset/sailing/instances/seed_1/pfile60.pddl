;; Automatically generated sailing problem
(define (problem instance_60)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) 7.0)

		(= (d p0) 93.0)

		(= (drift_factor) 2.09662)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)