;; Automatically generated sailing problem
(define (problem instance_94)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) 4.0)

		(= (d p0) 63.0)

		(= (drift_factor) 2.01867)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)