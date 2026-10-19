;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_57)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 104.53337583709022)

        (= (sled_supplies s0) 0.5922630405941759)

        (= (factor) 7.11576)
		(= (factor) 5.43397)
		(= (factor) 4.49423)
		(= (factor) 7.38322)
		(= (factor) 2.18612)
		(= (factor) 4.34195)
		(= (factor) 5.00534)
		(= (factor) 9.2475)
		(= (factor) 4.99225)
		(= (factor) 6.3858)

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