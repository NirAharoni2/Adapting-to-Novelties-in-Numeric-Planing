;; Automatically generated sailing problem
;;Setting seed to 89
(define (problem instance_89)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 3.40883)
		(= (x b0) -4.0)
		(= (y b0) 1.0)
		(= (x b1) -3.0)
		(= (y b1) -2.0)

		(= (d p0) -39.0)
		(= (d p1) -92.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)