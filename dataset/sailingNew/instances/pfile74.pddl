;; Automatically generated sailing problem
;;Setting seed to 74
(define (problem instance_74)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.41302)
		(= (x b0) -1.0)
		(= (y b0) -9.0)
		(= (x b1) 1.0)
		(= (y b1) -8.0)

		(= (d p0) 74.0)
		(= (d p1) 92.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)