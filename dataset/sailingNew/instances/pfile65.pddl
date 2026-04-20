;; Automatically generated sailing problem
;;Setting seed to 65
(define (problem instance_65)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 2.40432)
		(= (x b0) -1.0)
		(= (y b0) 4.0)
		(= (x b1) 6.0)
		(= (y b1) 6.0)

		(= (d p0) -20.0)
		(= (d p1) -114.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)