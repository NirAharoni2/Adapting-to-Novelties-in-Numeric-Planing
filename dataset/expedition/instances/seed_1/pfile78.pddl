;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_78)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 161.26669724240614)

        (= (sled_supplies s0) 2.0128730426500834)

        (= (factor) 2.60306)
		(= (factor) 8.68387)
		(= (factor) 9.49477)
		(= (factor) 16.00943)
		(= (factor) 12.75051)
		(= (factor) 11.48424)
		(= (factor) 12.16764)
		(= (factor) 6.15026)
		(= (factor) 15.22522)
		(= (factor) 10.55578)

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