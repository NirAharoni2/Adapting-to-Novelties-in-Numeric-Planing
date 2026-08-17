;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.733111899789129)

        (= (sled_supplies s0) 4.222558504776973)

        (= (factor_value f0) 0.5908896959853072)
		(= (factor_value f1) 0.5131471987097251)
		(= (factor_value f2) 0.5522396681134154)
		(= (factor_value f3) 0.5575473202215615)
		(= (factor_value f4) 0.6475157183666054)

        (= (dummy_1_value d1_0) 0.6917935511187413)
		(= (dummy_1_value d1_1) 0.9689456891825947)

        (= (dummy_2_value d2_0) 6.433074203824049)
		(= (dummy_2_value d2_1) 9.410944333134585)
		(= (dummy_2_value d2_2) 1.0668218020630889)
		(= (dummy_2_value d2_3) 4.338046535641626)
		(= (dummy_2_value d2_4) 2.2825579853304676)

        (= (dummy_3_value d3_0) 48.36027759573434)
		(= (dummy_3_value d3_1) 7.36494501741813)

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

