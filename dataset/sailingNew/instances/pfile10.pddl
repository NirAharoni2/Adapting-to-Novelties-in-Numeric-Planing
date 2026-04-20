;; Automatically generated sailing problem
;;Setting seed to 10
(define (problem instance_10)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.12651)
		(= (x b0) -0.0)
		(= (y b0) 9.0)
		(= (x b1) 7.0)
		(= (y b1) -10.0)

		(= (d p0) 31.0)
		(= (d p1) -129.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)