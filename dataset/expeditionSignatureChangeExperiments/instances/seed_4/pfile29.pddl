;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_29)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.545944837544232)

        (= (sled_supplies s0) 0.7022336605133311)

        (= (factor_value f0) 0.5235274686849152)
		(= (factor_value f1) 0.9183326386084951)
		(= (factor_value f2) 0.5746045170121576)
		(= (factor_value f3) 0.5880103679863679)
		(= (factor_value f4) 0.8124618495154285)

        (= (dummy_1_value d1_0) 0.6476003321836226)
		(= (dummy_1_value d1_1) 0.9412262993527466)

        (= (dummy_2_value d2_0) 3.5271760738042577)
		(= (dummy_2_value d2_1) 6.783510001393769)
		(= (dummy_2_value d2_2) 7.842650559116056)
		(= (dummy_2_value d2_3) 5.7659439535331165)
		(= (dummy_2_value d2_4) 7.782183286821362)

        (= (dummy_3_value d3_0) 7.181978187836448)

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

