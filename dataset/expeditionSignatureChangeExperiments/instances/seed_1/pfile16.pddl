;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.574122259844057)

        (= (sled_supplies s0) 1.2898454623588584)

        (= (factor_value f0) 0.833889369842771)
		(= (factor_value f1) 0.6262932038969418)

        (= (dummy_1_value d1_0) 0.5322070966738306)
		(= (dummy_1_value d1_1) 0.9816929416607878)

        (= (dummy_2_value d2_0) 8.274273655351568)
		(= (dummy_2_value d2_1) 5.943429382532673)
		(= (dummy_2_value d2_2) 5.872398867864826)

        (= (dummy_3_value d3_0) 85.27797396680661)
		(= (dummy_3_value d3_1) 45.87765808459957)
		(= (dummy_3_value d3_2) 40.17533402735598)
		(= (dummy_3_value d3_3) 34.52824534461082)

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

