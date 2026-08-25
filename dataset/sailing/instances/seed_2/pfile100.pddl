;; Automatically generated sailing problem
(define (problem instance_100)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -6.0)
		(= (y b0) 5.0)

		(= (d p0) 114.0)

		(= (drift_factor) 2.46419)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)