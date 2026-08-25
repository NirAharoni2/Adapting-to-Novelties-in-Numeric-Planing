;; Automatically generated sailing problem
(define (problem instance_90)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 7.0)

		(= (d p0) -82.0)

		(= (drift_factor) 2.30045)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)