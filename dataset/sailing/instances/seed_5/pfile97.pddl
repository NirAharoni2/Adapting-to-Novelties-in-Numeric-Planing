;; Automatically generated sailing problem
(define (problem instance_97)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) -10.0)

		(= (d p0) 48.0)

		(= (drift_factor) 2.89402)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)