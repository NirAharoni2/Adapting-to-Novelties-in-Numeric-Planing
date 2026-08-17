;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.338097051722726)

        (= (sled_supplies s0) 3.7717698577454697)

        (= (factor_value f0) 0.8943227487612548)
		(= (factor_value f1) 0.5879412777220121)
		(= (factor_value f2) 0.8101614062803961)

        (= (dummy_1_value d1_0) 0.7605687619803673)
		(= (dummy_1_value d1_1) 0.9972833418019129)
		(= (dummy_1_value d1_2) 0.5257862324613285)
		(= (dummy_1_value d1_3) 0.7087180146034043)

        (= (dummy_2_value d2_0) 5.948788543249019)
		(= (dummy_2_value d2_1) 6.494887433921423)
		(= (dummy_2_value d2_2) 3.6208730677826315)

        (= (dummy_3_value d3_0) 24.40119241620391)
		(= (dummy_3_value d3_1) 38.78849001242542)
		(= (dummy_3_value d3_2) 21.91137854863677)
		(= (dummy_3_value d3_3) 8.406862059942991)

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

