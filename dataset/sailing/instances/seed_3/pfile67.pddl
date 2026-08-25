;; Automatically generated sailing problem
(define (problem instance_67)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -9.0)

		(= (d p0) 76.0)

		(= (drift_factor) 2.47013)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)