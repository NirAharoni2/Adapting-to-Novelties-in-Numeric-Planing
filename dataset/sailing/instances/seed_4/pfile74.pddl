;; Automatically generated sailing problem
(define (problem instance_74)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 3.0)

		(= (d p0) -48.0)

		(= (drift_factor) 3.22388)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)