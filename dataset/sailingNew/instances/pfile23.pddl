;; Automatically generated sailing problem
;;Setting seed to 23
(define (problem instance_23)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.07228)
		(= (x b0) 7.0)
		(= (y b0) -8.0)
		(= (x b1) -6.0)
		(= (y b1) 3.0)

		(= (d p0) -148.0)
		(= (d p1) 17.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)