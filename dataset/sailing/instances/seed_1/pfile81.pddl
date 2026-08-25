;; Automatically generated sailing problem
(define (problem instance_81)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 6.0)
		(= (y b0) -10.0)

		(= (d p0) -87.0)

		(= (drift_factor) 2.73845)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)