;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_55)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.9150442293298084)

        (= (sled_supplies s0) 4.562057465218928)

        (= (factor_value f0) 0.7835860408152833)
		(= (factor_value f1) 0.6249163832342317)
		(= (factor_value f2) 0.8488093845139164)

        (= (dummy_1_value d1_0) 0.7812547565775525)

        (= (dummy_2_value d2_0) 4.469753305744599)
		(= (dummy_2_value d2_1) 1.9864357629149816)
		(= (dummy_2_value d2_2) 5.985524233123445)
		(= (dummy_2_value d2_3) 3.8770880567778585)

        (= (dummy_3_value d3_0) 72.76305716564909)
		(= (dummy_3_value d3_1) 18.08105118256905)
		(= (dummy_3_value d3_2) 40.04500220025639)
		(= (dummy_3_value d3_3) 20.425394467245656)
		(= (dummy_3_value d3_4) 41.419078698223096)

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

