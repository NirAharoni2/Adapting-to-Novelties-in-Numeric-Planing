;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_55)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.439963696246874)

        (= (sled_supplies s0) 1.1087951371123204)

        (= (factor_value f0) 0.5757431956360215)
		(= (factor_value f1) 0.7834371599535952)

        (= (dummy_1_value d1_0) 0.9224217056302626)
		(= (dummy_1_value d1_1) 0.8902805362677505)
		(= (dummy_1_value d1_2) 0.811020132465897)
		(= (dummy_1_value d1_3) 0.8655190034230187)

        (= (dummy_2_value d2_0) 4.0250311967377606)
		(= (dummy_2_value d2_1) 2.2844030955896986)
		(= (dummy_2_value d2_2) 3.295086944628264)
		(= (dummy_2_value d2_3) 4.144182797211121)

        (= (dummy_3_value d3_0) 28.634243339161497)
		(= (dummy_3_value d3_1) 47.30837908635549)

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

