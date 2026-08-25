;; Automatically generated sailing problem
(define (problem instance_61)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -4.0)

		(= (d p0) -143.0)

		(= (drift_factor) 3.08556)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)