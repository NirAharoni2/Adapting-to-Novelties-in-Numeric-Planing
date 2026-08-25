;; Automatically generated sailing problem
(define (problem instance_96)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) -9.0)
		(= (y b0) -9.0)

		(= (d p0) 81.0)

		(= (drift_factor) 3.44829)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)