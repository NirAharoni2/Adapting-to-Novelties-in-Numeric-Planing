(define (problem instance_27)
  (:domain expedition)

  (:objects
    s0 s1 - sled
    w0_0 w0_1 w0_2 w0_3 w0_4 w0_5 - waypoint
  )

  (:init
    (at s0 w0_0)
    (= (sled_capacity s0) 12)
    (= (sled_supplies s0) 12)
    (at s1 w0_0)
    (= (sled_capacity s1) 10)
    (= (sled_supplies s1) 8)
    (= (waypoint_supplies w0_0) 1000)
    (= (waypoint_supplies w0_1) 0)
    (= (waypoint_supplies w0_2) 0)
    (= (waypoint_supplies w0_3) 0)
    (= (waypoint_supplies w0_4) 0)
    (= (waypoint_supplies w0_5) 0)
    (is_next w0_0 w0_1)
    (is_next w0_1 w0_2)
    (is_next w0_2 w0_3)
    (is_next w0_3 w0_4)
    (is_next w0_4 w0_5)
  )

  (:goal
    (and
      (at s0 w0_5)
      (at s1 w0_5)
    )
  )
)