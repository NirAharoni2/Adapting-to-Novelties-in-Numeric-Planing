;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_89)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.904213547296537)

        (= (sled_supplies s0) 3.6090173449168974)

        (= (factor_value f0) 0.8171263733044363)
		(= (factor_value f1) 0.9764675238928902)
		(= (factor_value f2) 0.8755130955081968)

        (= (dummy_1_value d1_0) 0.9869278691257518)
		(= (dummy_1_value d1_1) 0.7080534757175754)
		(= (dummy_1_value d1_2) 0.6030729052503605)

        (= (dummy_2_value d2_0) 2.8109960086066947)

        (= (dummy_3_value d3_0) 46.17273930169582)
		(= (dummy_3_value d3_1) 56.09311397549613)
		(= (dummy_3_value d3_2) 69.24014232933546)
		(= (dummy_3_value d3_3) 47.040148360101895)
		(= (dummy_3_value d3_4) 96.51094429853123)

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

