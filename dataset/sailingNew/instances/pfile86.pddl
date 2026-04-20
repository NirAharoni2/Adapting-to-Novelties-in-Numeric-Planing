;; Automatically generated sailing problem
;;Setting seed to 86
(define (problem instance_86)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.86172)
		(= (x b0) -10.0)
		(= (y b0) 6.0)
		(= (x b1) -10.0)
		(= (y b1) 10.0)

		(= (d p0) -98.0)
		(= (d p1) -141.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)