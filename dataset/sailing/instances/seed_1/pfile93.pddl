;; Automatically generated sailing problem
(define (problem instance_93)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) -8.0)

		(= (d p0) 119.0)

		(= (drift_factor) 2.25854)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)