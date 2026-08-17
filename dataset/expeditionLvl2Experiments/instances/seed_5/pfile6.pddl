;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.1640904685879)

        (= (sled_supplies s0) 4.75708821259493)

        (= (factor_value f0) 0.7018947076121735)
		(= (factor_value f1) 0.5732531812509907)
		(= (factor_value f2) 0.6885003738926909)
		(= (factor_value f3) 0.9941938502034241)
		(= (factor_value f4) 0.9799079417414822)

        (= (dummy_1_value d1_0) 0.8134824854774195)
		(= (dummy_1_value d1_1) 0.7496612253330608)
		(= (dummy_1_value d1_2) 0.6692393801365804)
		(= (dummy_1_value d1_3) 0.5445687081361636)

        (= (dummy_2_value d2_0) 3.4507912072286735)
		(= (dummy_2_value d2_1) 8.038170739508455)
		(= (dummy_2_value d2_2) 8.806481260995719)
		(= (dummy_2_value d2_3) 4.2519360972045295)

        (= (dummy_3_value d3_0) 78.8162353837492)
		(= (dummy_3_value d3_1) 77.71491111974552)
		(= (dummy_3_value d3_2) 69.76507819563855)

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

