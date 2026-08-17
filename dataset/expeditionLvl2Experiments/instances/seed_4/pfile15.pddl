;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.921474419405254)

        (= (sled_supplies s0) 4.255044962278579)

        (= (factor_value f0) 0.6633087267623343)
		(= (factor_value f1) 0.8133983631795674)
		(= (factor_value f2) 0.9982245842065063)
		(= (factor_value f3) 0.9495088972257467)
		(= (factor_value f4) 0.7001084592427492)

        (= (dummy_1_value d1_0) 0.7003300188836191)
		(= (dummy_1_value d1_1) 0.9087456476432321)

        (= (dummy_2_value d2_0) 3.5539414506004405)
		(= (dummy_2_value d2_1) 4.704079995253756)
		(= (dummy_2_value d2_2) 1.1186498125013054)
		(= (dummy_2_value d2_3) 2.6550307801099535)

        (= (dummy_3_value d3_0) 54.47958225306102)
		(= (dummy_3_value d3_1) 69.635647241416)

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

