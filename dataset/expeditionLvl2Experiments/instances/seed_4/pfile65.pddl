;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_65)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.10218165595742)

        (= (sled_supplies s0) 6.960702636444787)

        (= (factor_value f0) 0.8711121371630034)
		(= (factor_value f1) 0.9370053529704419)
		(= (factor_value f2) 0.8791523712715272)

        (= (dummy_1_value d1_0) 0.808419063095507)

        (= (dummy_2_value d2_0) 9.302542775546513)
		(= (dummy_2_value d2_1) 4.409997230459488)
		(= (dummy_2_value d2_2) 3.7327266523638207)
		(= (dummy_2_value d2_3) 2.2723718952060374)
		(= (dummy_2_value d2_4) 9.548294597425222)

        (= (dummy_3_value d3_0) 1.3482664379844869)
		(= (dummy_3_value d3_1) 39.11760983650953)
		(= (dummy_3_value d3_2) 14.639131710713656)
		(= (dummy_3_value d3_3) 82.46962442903045)

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

