;; Automatically generated sailing problem
(define (problem instance_69)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 8.0)
		(= (y b0) 7.0)

		(= (d p0) 149.0)

		(= (drift_factor) 3.33979)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)