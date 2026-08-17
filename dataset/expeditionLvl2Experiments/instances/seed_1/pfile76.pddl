;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_76)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.667723848154662)

        (= (sled_supplies s0) 0.7162708160757265)

        (= (factor_value f0) 0.8224473469976492)
		(= (factor_value f1) 0.576118618753519)
		(= (factor_value f2) 0.5805573876190515)

        (= (dummy_1_value d1_0) 0.9063275851757762)
		(= (dummy_1_value d1_1) 0.6269415215977593)

        (= (dummy_2_value d2_0) 4.2035733595901466)
		(= (dummy_2_value d2_1) 3.836914349674344)
		(= (dummy_2_value d2_2) 3.495541875832874)

        (= (dummy_3_value d3_0) 47.833496083798195)
		(= (dummy_3_value d3_1) 8.649011264797453)
		(= (dummy_3_value d3_2) 16.247909988810555)
		(= (dummy_3_value d3_3) 35.972918717179056)
		(= (dummy_3_value d3_4) 45.51828016133133)

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

