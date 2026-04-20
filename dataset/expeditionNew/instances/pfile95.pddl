(define (problem instance_95)
  (:domain expedition)

  (:objects
    s0 - sled
    w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
    f0 f1 f2 f3 f4 - factor
  )

  (:init
    (at s0 w0_0)
    (= (sled_capacity s0) 9)
    (= (sled_supplies s0) 0)
    (= (value f0) 0.74756)
    (= (value f1) 0.53268)
    (= (value f2) 0.77566)
    (= (value f3) 0.71889)
    (= (value f4) 0.72795)
    (= (waypoint_supplies w0_0) 1000)
    (= (waypoint_supplies w0_1) 0)
    (= (waypoint_supplies w0_2) 0)
    (= (waypoint_supplies w0_3) 0)
    (= (waypoint_supplies w0_4) 0)
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