;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.6112541635365005)

        (= (sled_supplies s0) 5.41710923037855)

        (= (factor_value f0) 0.7706292931621199)
		(= (factor_value f1) 0.9741710445440039)
		(= (factor_value f2) 0.9578891532895185)
		(= (factor_value f3) 0.9874920955888201)

        (= (dummy_1_value d1_0) 0.7420990682141202)
		(= (dummy_1_value d1_1) 0.7998696408852359)
		(= (dummy_1_value d1_2) 0.5679244844987661)

        (= (dummy_2_value d2_0) 5.4111241948523885)
		(= (dummy_2_value d2_1) 4.465973538715857)

        (= (dummy_3_value d3_0) 48.24186806705199)
		(= (dummy_3_value d3_1) 62.558767395646974)

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

