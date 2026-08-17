;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_87)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.219776998303702)

        (= (sled_supplies s0) 4.9422503236585635)

        (= (factor_value f0) 0.7023270130781667)
		(= (factor_value f1) 0.8045499026373608)
		(= (factor_value f2) 0.7545883515420355)

        (= (dummy_1_value d1_0) 0.7240651813147633)
		(= (dummy_1_value d1_1) 0.8848929652689054)
		(= (dummy_1_value d1_2) 0.7266153544822318)
		(= (dummy_1_value d1_3) 0.8455238449607922)
		(= (dummy_1_value d1_4) 0.7779204875886103)

        (= (dummy_2_value d2_0) 9.54792724600858)
		(= (dummy_2_value d2_1) 3.996054034099434)
		(= (dummy_2_value d2_2) 4.977976231645625)

        (= (dummy_3_value d3_0) 77.01091070272982)
		(= (dummy_3_value d3_1) 30.299522875066888)

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

