;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_100)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 39.87322404771418)

        (= (sled_supplies s0) 1.685684599374745)

        (= (factor) 3.20767)
		(= (factor) 2.39388)
		(= (factor) 1.10057)
		(= (factor) 1.66717)
		(= (factor) 3.17075)
		(= (factor) 0.8482)
		(= (factor) 3.4914)
		(= (factor) 3.57748)
		(= (factor) 1.5878)
		(= (factor) 1.52064)

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