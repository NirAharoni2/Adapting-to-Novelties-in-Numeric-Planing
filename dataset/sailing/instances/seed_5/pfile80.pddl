;; Automatically generated sailing problem
(define (problem instance_80)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) 6.0)

		(= (d p0) 51.0)

		(= (drift_factor) 2.52502)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)