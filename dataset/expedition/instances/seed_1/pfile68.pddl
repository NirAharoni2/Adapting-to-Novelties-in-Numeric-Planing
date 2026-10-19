;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_68)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 26.634398604556736)

        (= (sled_supplies s0) 4.121119445508738)

        (= (factor) 0.96265)
		(= (factor) 0.67059)
		(= (factor) 0.53334)
		(= (factor) 0.51131)
		(= (factor) 1.53931)
		(= (factor) 2.42293)
		(= (factor) 2.33441)
		(= (factor) 1.12137)
		(= (factor) 0.92378)
		(= (factor) 0.8463)

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