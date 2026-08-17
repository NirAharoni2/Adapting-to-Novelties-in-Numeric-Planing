;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_73)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.726073123244321)

        (= (sled_supplies s0) 5.949376987587063)

        (= (factor_value f0) 0.9480649663935461)

        (= (dummy_1_value d1_0) 0.6806318404855727)
		(= (dummy_1_value d1_1) 0.8792932196834975)
		(= (dummy_1_value d1_2) 0.7418867167744625)
		(= (dummy_1_value d1_3) 0.7923472345593444)
		(= (dummy_1_value d1_4) 0.7102495529271431)

        (= (dummy_2_value d2_0) 4.592318032688759)
		(= (dummy_2_value d2_1) 1.327555266370869)
		(= (dummy_2_value d2_2) 4.829362171575442)
		(= (dummy_2_value d2_3) 5.278113424193564)

        (= (dummy_3_value d3_0) 48.843631849913166)
		(= (dummy_3_value d3_1) 99.97685164347061)
		(= (dummy_3_value d3_2) 18.979539701436767)

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

