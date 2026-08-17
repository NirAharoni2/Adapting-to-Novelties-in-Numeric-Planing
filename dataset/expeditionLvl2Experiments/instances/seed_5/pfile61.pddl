;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_61)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.496029023280739)

        (= (sled_supplies s0) 1.9157874040918486)

        (= (factor_value f0) 0.5316634492541634)
		(= (factor_value f1) 0.6613819445629788)
		(= (factor_value f2) 0.5189756054655178)
		(= (factor_value f3) 0.8931135027304669)
		(= (factor_value f4) 0.710520347965119)

        (= (dummy_1_value d1_0) 0.9698566071333712)
		(= (dummy_1_value d1_1) 0.5541097714579084)
		(= (dummy_1_value d1_2) 0.5046709531765862)
		(= (dummy_1_value d1_3) 0.5715715726238892)

        (= (dummy_2_value d2_0) 3.7478287247775395)
		(= (dummy_2_value d2_1) 6.109800629160716)
		(= (dummy_2_value d2_2) 6.307582406689424)
		(= (dummy_2_value d2_3) 7.298330680632001)

        (= (dummy_3_value d3_0) 5.730060694236998)
		(= (dummy_3_value d3_1) 92.30279973941042)

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

