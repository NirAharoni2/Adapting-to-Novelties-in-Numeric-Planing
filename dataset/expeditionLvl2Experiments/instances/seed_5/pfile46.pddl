;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.648513645441957)

        (= (sled_supplies s0) 3.450021744769834)

        (= (factor_value f0) 0.5725290083656209)
		(= (factor_value f1) 0.6339180676757814)

        (= (dummy_1_value d1_0) 0.7468810137459361)
		(= (dummy_1_value d1_1) 0.7680574243922741)
		(= (dummy_1_value d1_2) 0.950092446866291)
		(= (dummy_1_value d1_3) 0.7776508116714385)

        (= (dummy_2_value d2_0) 6.961435657090983)
		(= (dummy_2_value d2_1) 4.776476904529441)

        (= (dummy_3_value d3_0) 78.6436835145945)
		(= (dummy_3_value d3_1) 83.75706258443898)
		(= (dummy_3_value d3_2) 30.066593014288937)
		(= (dummy_3_value d3_3) 11.674694675294926)
		(= (dummy_3_value d3_4) 26.66106725569887)

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

