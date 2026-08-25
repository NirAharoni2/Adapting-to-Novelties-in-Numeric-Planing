;; Automatically generated sailing problem
(define (problem instance_91)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -9.0)

		(= (d p0) 121.0)

		(= (drift_factor) 2.45697)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)