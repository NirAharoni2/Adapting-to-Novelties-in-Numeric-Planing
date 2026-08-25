;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.554144170781628)

        (= (sled_supplies s0) 1.8700546026475955)

        (= (factor_value f0) 0.9839902564195813)

        (= (dummy_1_value d1_0) 0.7413309335461262)
		(= (dummy_1_value d1_1) 0.7741603703635094)
		(= (dummy_1_value d1_2) 0.7077448869695148)
		(= (dummy_1_value d1_3) 0.6755499183397697)

        (= (dummy_2_value d2_0) 6.9627159722607255)
		(= (dummy_2_value d2_1) 1.6477928780874576)

        (= (dummy_3_value d3_0) 21.23225910623963)
		(= (dummy_3_value d3_1) 72.08350781660563)

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

