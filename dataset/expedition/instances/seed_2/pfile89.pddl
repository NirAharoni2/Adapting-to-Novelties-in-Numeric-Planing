;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_89)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 73.43195489674422)

        (= (sled_supplies s0) 4.050888714246862)

        (= (factor) 2.59866)
		(= (factor) 5.28549)
		(= (factor) 1.23978)
		(= (factor) 1.80302)
		(= (factor) 6.0706)
		(= (factor) 2.02156)
		(= (factor) 2.71163)
		(= (factor) 2.36638)
		(= (factor) 3.05257)
		(= (factor) 0.99031)

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