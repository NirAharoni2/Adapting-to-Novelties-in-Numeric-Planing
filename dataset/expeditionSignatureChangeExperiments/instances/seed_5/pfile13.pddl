;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.408807357587559)

        (= (sled_supplies s0) 3.2443222210511213)

        (= (factor_value f0) 0.9063189796760853)
		(= (factor_value f1) 0.566239804165173)
		(= (factor_value f2) 0.5014180736706515)

        (= (dummy_1_value d1_0) 0.7766141088888561)
		(= (dummy_1_value d1_1) 0.8428664427868025)
		(= (dummy_1_value d1_2) 0.5538003179726771)
		(= (dummy_1_value d1_3) 0.8437103202402304)
		(= (dummy_1_value d1_4) 0.595589652711751)

        (= (dummy_2_value d2_0) 4.8670348003912265)

        (= (dummy_3_value d3_0) 80.9455758731471)
		(= (dummy_3_value d3_1) 59.894316062245785)
		(= (dummy_3_value d3_2) 69.21271649829998)
		(= (dummy_3_value d3_3) 95.37351540171576)

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

