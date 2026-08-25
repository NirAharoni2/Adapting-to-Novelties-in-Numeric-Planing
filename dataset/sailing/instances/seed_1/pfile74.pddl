;; Automatically generated sailing problem
(define (problem instance_74)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -9.0)

		(= (d p0) -148.0)

		(= (drift_factor) 2.44321)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)