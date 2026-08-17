;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_69)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.246766260116317)

        (= (sled_supplies s0) 7.148379860996707)

        (= (factor_value f0) 0.5563508816991403)
		(= (factor_value f1) 0.6216058955372374)

        (= (dummy_1_value d1_0) 0.8018432715117141)
		(= (dummy_1_value d1_1) 0.9716986838023944)
		(= (dummy_1_value d1_2) 0.9030657481214541)

        (= (dummy_2_value d2_0) 4.408579006633621)
		(= (dummy_2_value d2_1) 8.272533225402002)
		(= (dummy_2_value d2_2) 1.6053925106055256)
		(= (dummy_2_value d2_3) 4.554508346067497)

        (= (dummy_3_value d3_0) 97.93539915826622)
		(= (dummy_3_value d3_1) 41.19980135589851)
		(= (dummy_3_value d3_2) 89.2631677342199)

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

