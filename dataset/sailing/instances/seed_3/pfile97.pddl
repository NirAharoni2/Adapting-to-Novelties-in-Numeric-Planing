;; Automatically generated sailing problem
(define (problem instance_97)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -4.0)

		(= (d p0) -52.0)

		(= (drift_factor) 2.18592)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)