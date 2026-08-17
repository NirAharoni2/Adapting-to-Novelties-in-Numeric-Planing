;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.306697476887926)

        (= (sled_supplies s0) 1.5410156596564617)

        (= (factor_value f0) 0.7065183958652905)
		(= (factor_value f1) 0.5927186653936234)

        (= (dummy_1_value d1_0) 0.8279364744673997)
		(= (dummy_1_value d1_1) 0.784960249684351)
		(= (dummy_1_value d1_2) 0.8132344105477256)

        (= (dummy_2_value d2_0) 6.759377925897112)
		(= (dummy_2_value d2_1) 5.913281653466207)
		(= (dummy_2_value d2_2) 4.663176564511961)

        (= (dummy_3_value d3_0) 23.845491901888543)
		(= (dummy_3_value d3_1) 48.84027365854532)
		(= (dummy_3_value d3_2) 60.026075128977)

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

