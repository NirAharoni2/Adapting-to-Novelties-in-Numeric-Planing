;; Automatically generated sailing problem
;;Setting seed to 28
(define (problem instance_28)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.71081)
		(= (x b0) 6.0)
		(= (y b0) -9.0)
		(= (x b1) -9.0)
		(= (y b1) 1.0)

		(= (d p0) 53.0)
		(= (d p1) -73.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)