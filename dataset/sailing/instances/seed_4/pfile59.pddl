;; Automatically generated sailing problem
(define (problem instance_59)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) 5.0)

		(= (d p0) 119.0)

		(= (drift_factor) 2.47478)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)