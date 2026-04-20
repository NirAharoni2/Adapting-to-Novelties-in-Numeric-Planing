;; Automatically generated sailing problem
;;Setting seed to 6
(define (problem instance_6)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.01845)
		(= (x b0) -8.0)
		(= (y b0) -9.0)
		(= (x b1) -5.0)
		(= (y b1) 7.0)

		(= (d p0) 62.0)
		(= (d p1) -132.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)