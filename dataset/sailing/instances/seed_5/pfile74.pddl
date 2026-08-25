;; Automatically generated sailing problem
(define (problem instance_74)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -4.0)
		(= (y b0) -3.0)

		(= (d p0) 116.0)

		(= (drift_factor) 2.72305)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)