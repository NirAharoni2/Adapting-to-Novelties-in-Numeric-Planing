;; Automatically generated sailing problem
(define (problem instance_72)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) -9.0)

		(= (d p0) -110.0)

		(= (drift_factor) 2.64297)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)