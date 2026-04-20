;; Automatically generated sailing problem
;;Setting seed to 87
(define (problem instance_87)

	(:domain sailing)

	(:objects
		b0 b1  - boat
		p0 p1  - person
	)

	(:init
		(= (drift_factor) 4.57679)
		(= (x b0) 9.0)
		(= (y b0) 4.0)
		(= (x b1) 2.0)
		(= (y b1) -6.0)

		(= (d p0) 113.0)
		(= (d p1) -98.0)

	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)