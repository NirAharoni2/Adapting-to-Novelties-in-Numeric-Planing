;; Automatically generated sailing problem
(define (problem instance_89)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -6.0)

		(= (d p0) 117.0)

		(= (drift_factor) 2.6339)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)