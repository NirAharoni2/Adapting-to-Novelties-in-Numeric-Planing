;; Automatically generated sailing problem
(define (problem instance_69)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) 6.0)

		(= (d p0) 81.0)

		(= (drift_factor) 3.19265)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)