;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_98)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.019556116406577)

        (= (sled_supplies s0) 3.613693891691397)

        (= (factor_value f0) 0.7045997383738735)
		(= (factor_value f1) 0.9109564040786308)
		(= (factor_value f2) 0.5193399054493015)

        (= (dummy_1_value d1_0) 0.9420914111979868)
		(= (dummy_1_value d1_1) 0.6007812080245729)
		(= (dummy_1_value d1_2) 0.7223779144400566)
		(= (dummy_1_value d1_3) 0.8331794095440008)
		(= (dummy_1_value d1_4) 0.9144437266170257)

        (= (dummy_2_value d2_0) 9.690053644766733)
		(= (dummy_2_value d2_1) 9.704720494034035)
		(= (dummy_2_value d2_2) 1.78588483730145)
		(= (dummy_2_value d2_3) 2.5318313525111087)
		(= (dummy_2_value d2_4) 3.796587049220679)

        (= (dummy_3_value d3_0) 98.72997504224384)
		(= (dummy_3_value d3_1) 35.94444072000464)

        (= (waypoint_supplies w0_0) 1000)
		(= (waypoint_supplies w0_1) 0.0)
		(= (waypoint_supplies w0_2) 0.0)
		(= (waypoint_supplies w0_3) 0.0)
		(= (waypoint_supplies w0_4) 0.0)

		(is_next w0_0 w0_1)
		(is_next w0_1 w0_2)
		(is_next w0_2 w0_3)
		(is_next w0_3 w0_4)
	)
	(:goal
		(and
			(at s0 w0_4)
		)
	)
)

