;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_87)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.58381945937721)

        (= (sled_supplies s0) 1.9955303807125266)

        (= (factor_value f0) 0.9856241350517234)
		(= (factor_value f1) 0.8055079772826172)
		(= (factor_value f2) 0.6124862648065318)
		(= (factor_value f3) 0.9054886027556328)
		(= (factor_value f4) 0.6080608177446598)

        (= (dummy_1_value d1_0) 0.726997109687317)
		(= (dummy_1_value d1_1) 0.938588046117713)
		(= (dummy_1_value d1_2) 0.5517013546048182)
		(= (dummy_1_value d1_3) 0.5514758170589948)

        (= (dummy_2_value d2_0) 1.4732463738503883)
		(= (dummy_2_value d2_1) 2.3653316267149815)
		(= (dummy_2_value d2_2) 4.370784677878578)
		(= (dummy_2_value d2_3) 3.894809614409416)
		(= (dummy_2_value d2_4) 3.5211028276551932)

        (= (dummy_3_value d3_0) 2.402113179604208)
		(= (dummy_3_value d3_1) 49.22468236056793)
		(= (dummy_3_value d3_2) 45.091629839435065)
		(= (dummy_3_value d3_3) 74.33903537336684)

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

