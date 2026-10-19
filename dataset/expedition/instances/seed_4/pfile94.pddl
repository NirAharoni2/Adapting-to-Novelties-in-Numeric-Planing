;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_94)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 25.03887712991159)

        (= (sled_supplies s0) 1.3998790690631702)

        (= (factor) 2.03608)
		(= (factor) 0.79678)
		(= (factor) 1.74905)
		(= (factor) 1.52968)
		(= (factor) 2.04672)
		(= (factor) 0.62595)
		(= (factor) 1.84571)
		(= (factor) 2.1573)
		(= (factor) 0.57778)
		(= (factor) 1.86988)

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