;; Automatically generated sailing problem
(define (problem instance_100)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -7.0)

		(= (d p0) -110.0)

		(= (drift_factor) 3.2568)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)