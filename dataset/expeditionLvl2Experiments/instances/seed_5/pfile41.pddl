;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.925796103038019)

        (= (sled_supplies s0) 3.440792166306493)

        (= (factor_value f0) 0.5667992280331349)
		(= (factor_value f1) 0.7405764112808877)

        (= (dummy_1_value d1_0) 0.8528793903287488)
		(= (dummy_1_value d1_1) 0.5040705130070997)
		(= (dummy_1_value d1_2) 0.8855655909006386)
		(= (dummy_1_value d1_3) 0.7094265715495598)
		(= (dummy_1_value d1_4) 0.7520815235234919)

        (= (dummy_2_value d2_0) 6.494541794987507)
		(= (dummy_2_value d2_1) 8.136052509847984)

        (= (dummy_3_value d3_0) 6.54989056017091)
		(= (dummy_3_value d3_1) 50.55429620007901)
		(= (dummy_3_value d3_2) 4.79075786123123)

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

