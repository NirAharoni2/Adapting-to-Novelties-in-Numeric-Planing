;; Automatically generated sailing problem
(define (problem instance_75)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -4.0)

		(= (d p0) -135.0)

		(= (drift_factor) 2.42698)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)