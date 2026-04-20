;; Automatically generated sailing problem
;;Setting seed to 40
(define (problem instance_40)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.5776)
		(= (x b0) -7.0)
		(= (y b0) 1.0)
		(= (x b1) -1.0)
		(= (y b1) -5.0)

		(= (d p0) -122.0)
		(= (d p1) 59.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)