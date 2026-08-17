;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_56)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.668593031839906)

        (= (sled_supplies s0) 8.12426892486471)

        (= (factor_value f0) 0.8965210237074794)
		(= (factor_value f1) 0.7080461935101443)
		(= (factor_value f2) 0.8298787992437764)
		(= (factor_value f3) 0.8291282227661594)

        (= (dummy_1_value d1_0) 0.9413610280515314)
		(= (dummy_1_value d1_1) 0.8568004657890608)
		(= (dummy_1_value d1_2) 0.7217045826190271)
		(= (dummy_1_value d1_3) 0.595376596609559)
		(= (dummy_1_value d1_4) 0.6637315920816536)

        (= (dummy_2_value d2_0) 3.2531613666156014)
		(= (dummy_2_value d2_1) 7.137195965666434)

        (= (dummy_3_value d3_0) 77.1699155909609)
		(= (dummy_3_value d3_1) 20.015998648818172)
		(= (dummy_3_value d3_2) 53.81383951023637)

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

