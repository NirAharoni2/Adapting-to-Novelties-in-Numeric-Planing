;; Automatically generated sailing problem
(define (problem instance_51)

	(:domain sailing)

	(:objects
		b0 - boat
		p0 - person
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) 5.0)

		(= (d p0) 88.0)

		(= (drift_factor) 3.01309)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)