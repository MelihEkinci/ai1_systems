
(define (problem simple_escape)
    (:domain wumpus_world)
    (:objects
        p1_0 p2_0 p4_0 p5_0 p6_0 p8_0 p9_0 p11_0 p2_1 p5_1 p9_1 p10_1 p11_1 p1_2 p2_2 p3_2 p4_2 p5_2 p6_2 p7_2 p9_2 p10_2 p11_2 p3_3 p4_3 p6_3 p7_3 p8_3 p1_4 p2_4 p3_4 p4_4 p7_4 p9_4 p11_4 p0_5 p5_5 p6_5 p7_5 p8_5 p10_5 p0_6 p1_6 p3_6 p4_6 p5_6 p6_6 p7_6 p8_6 p10_6 p11_6 p0_7 p3_7 p4_7 p6_7 p9_7 p10_7 p0_8 p1_-1 p2_-1 p3_8 p4_-1 p4_8 p5_-1 p6_-1 p6_8 p8_-1 p9_-1 p9_8 p10_8 p11_-1 p12_0 p12_1 p12_2 p12_4 p-1_5 p-1_6 p12_6 p-1_7 - pos
         - crate
        wumpus1 wumpus2 wumpus3 wumpus4 wumpus5 wumpus6 wumpus7 wumpus8 wumpus9 wumpus10 wumpus11 wumpus12 wumpus13 wumpus14 wumpus15 wumpus16 wumpus17 wumpus18 wumpus19 - wumpus
         - arrow
        firework1 firework2 firework3 firework4 firework5 firework6 firework7 firework8 firework9 firework10 firework11 firework12 firework13 firework14 firework15 firework16 firework17 - firework
         - halfcrate
         - pit

    )
    (:init
        (agent-at p4_2)
        (firework-count-0);
        
        (path p1_0 p2_0) (path p2_0 p1_0) (path p2_0 p2_1) (path p2_1 p2_0) (path p4_0 p5_0) (path p5_0 p4_0) (path p5_0 p6_0) (path p6_0 p5_0) (path p5_0 p5_1) (path p5_1 p5_0) (path p8_0 p9_0) (path p9_0 p8_0) (path p9_0 p9_1) (path p9_1 p9_0) (path p11_0 p11_1) (path p11_1 p11_0) (path p2_1 p2_2) (path p2_2 p2_1) (path p5_1 p5_2) (path p5_2 p5_1) (path p9_1 p10_1) (path p10_1 p9_1) (path p9_1 p9_2) (path p9_2 p9_1) (path p10_1 p11_1) (path p11_1 p10_1) (path p10_1 p10_2) (path p10_2 p10_1) (path p11_1 p11_2) (path p11_2 p11_1) (path p1_2 p2_2) (path p2_2 p1_2) (path p2_2 p3_2) (path p3_2 p2_2) (path p3_2 p4_2) (path p4_2 p3_2) (path p3_2 p3_3) (path p3_3 p3_2) (path p4_2 p5_2) (path p5_2 p4_2) (path p4_2 p4_3) (path p4_3 p4_2) (path p5_2 p6_2) (path p6_2 p5_2) (path p6_2 p7_2) (path p7_2 p6_2) (path p6_2 p6_3) (path p6_3 p6_2) (path p7_2 p7_3) (path p7_3 p7_2) (path p9_2 p10_2) (path p10_2 p9_2) (path p10_2 p11_2) (path p11_2 p10_2) (path p3_3 p4_3) (path p4_3 p3_3) (path p3_3 p3_4) (path p3_4 p3_3) (path p4_3 p4_4) (path p4_4 p4_3) (path p6_3 p7_3) (path p7_3 p6_3) (path p7_3 p8_3) (path p8_3 p7_3) (path p7_3 p7_4) (path p7_4 p7_3) (path p1_4 p2_4) (path p2_4 p1_4) (path p2_4 p3_4) (path p3_4 p2_4) (path p3_4 p4_4) (path p4_4 p3_4) (path p7_4 p7_5) (path p7_5 p7_4) (path p0_5 p0_6) (path p0_6 p0_5) (path p5_5 p6_5) (path p6_5 p5_5) (path p5_5 p5_6) (path p5_6 p5_5) (path p6_5 p7_5) (path p7_5 p6_5) (path p6_5 p6_6) (path p6_6 p6_5) (path p7_5 p8_5) (path p8_5 p7_5) (path p7_5 p7_6) (path p7_6 p7_5) (path p8_5 p8_6) (path p8_6 p8_5) (path p10_5 p10_6) (path p10_6 p10_5) (path p0_6 p1_6) (path p1_6 p0_6) (path p0_6 p0_7) (path p0_7 p0_6) (path p3_6 p4_6) (path p4_6 p3_6) (path p3_6 p3_7) (path p3_7 p3_6) (path p4_6 p5_6) (path p5_6 p4_6) (path p4_6 p4_7) (path p4_7 p4_6) (path p5_6 p6_6) (path p6_6 p5_6) (path p6_6 p7_6) (path p7_6 p6_6) (path p6_6 p6_7) (path p6_7 p6_6) (path p7_6 p8_6) (path p8_6 p7_6) (path p10_6 p11_6) (path p11_6 p10_6) (path p10_6 p10_7) (path p10_7 p10_6) (path p3_7 p4_7) (path p4_7 p3_7) (path p9_7 p10_7) (path p10_7 p9_7) (path p0_7 p0_8) (path p1_0 p1_-1) (path p2_0 p2_-1) (path p3_7 p3_8) (path p4_0 p4_-1) (path p4_7 p4_8) (path p5_0 p5_-1) (path p6_0 p6_-1) (path p6_7 p6_8) (path p8_0 p8_-1) (path p9_0 p9_-1) (path p9_7 p9_8) (path p10_7 p10_8) (path p11_0 p11_-1) (path p11_0 p12_0) (path p11_1 p12_1) (path p11_2 p12_2) (path p11_4 p12_4) (path p0_5 p-1_5) (path p0_6 p-1_6) (path p11_6 p12_6) (path p0_7 p-1_7)
        
        (wumpus-at wumpus1 p2_0) (wumpus-at wumpus2 p5_0) (wumpus-at wumpus3 p6_0) (wumpus-at wumpus4 p8_0) (wumpus-at wumpus5 p5_1) (wumpus-at wumpus6 p10_1) (wumpus-at wumpus7 p1_2) (wumpus-at wumpus8 p5_2) (wumpus-at wumpus9 p10_2) (wumpus-at wumpus10 p11_2) (wumpus-at wumpus11 p3_3) (wumpus-at wumpus12 p7_4) (wumpus-at wumpus13 p9_4) (wumpus-at wumpus14 p3_6) (wumpus-at wumpus15 p6_6) (wumpus-at wumpus16 p11_6) (wumpus-at wumpus17 p3_7) (wumpus-at wumpus18 p6_7) (wumpus-at wumpus19 p9_7)
        
        (firework-at firework1 p1_0) (firework-at firework2 p9_0) (firework-at firework3 p11_0) (firework-at firework4 p2_1) (firework-at firework5 p7_2) (firework-at firework6 p9_2) (firework-at firework7 p4_3) (firework-at firework8 p1_4) (firework-at firework9 p4_4) (firework-at firework10 p6_5) (firework-at firework11 p7_5) (firework-at firework12 p10_5) (firework-at firework13 p1_6) (firework-at firework14 p10_6) (firework-at firework15 p0_7) (firework-at firework16 p4_7) (firework-at firework17 p10_7)
        (empty p4_0) (empty p9_1) (empty p11_1) (empty p2_2) (empty p3_2) (empty p6_2) (empty p6_3) (empty p7_3) (empty p8_3) (empty p2_4) (empty p3_4) (empty p11_4) (empty p0_5) (empty p5_5) (empty p8_5) (empty p0_6) (empty p4_6) (empty p5_6) (empty p7_6) (empty p8_6)
        (empty p0_8) (empty p1_-1) (empty p2_-1) (empty p3_8) (empty p4_-1) (empty p4_8) (empty p5_-1) (empty p6_-1) (empty p6_8) (empty p8_-1) (empty p9_-1) (empty p9_8) (empty p10_8) (empty p11_-1) (empty p12_0) (empty p12_1) (empty p12_2) (empty p12_4) (empty p-1_5) (empty p-1_6) (empty p12_6) (empty p-1_7)
        (outside p0_8) (outside p1_-1) (outside p2_-1) (outside p3_8) (outside p4_-1) (outside p4_8) (outside p5_-1) (outside p6_-1) (outside p6_8) (outside p8_-1) (outside p9_-1) (outside p9_8) (outside p10_8) (outside p11_-1) (outside p12_0) (outside p12_1) (outside p12_2) (outside p12_4) (outside p-1_5) (outside p-1_6) (outside p12_6) (outside p-1_7)
        (walkable p4_0) (walkable p9_1) (walkable p11_1) (walkable p2_2) (walkable p3_2) (walkable p6_2) (walkable p6_3) (walkable p7_3) (walkable p8_3) (walkable p2_4) (walkable p3_4) (walkable p11_4) (walkable p0_5) (walkable p5_5) (walkable p8_5) (walkable p0_6) (walkable p4_6) (walkable p5_6) (walkable p7_6) (walkable p8_6)
        (walkable p0_8) (walkable p1_-1) (walkable p2_-1) (walkable p3_8) (walkable p4_-1) (walkable p4_8) (walkable p5_-1) (walkable p6_-1) (walkable p6_8) (walkable p8_-1) (walkable p9_-1) (walkable p9_8) (walkable p10_8) (walkable p11_-1) (walkable p12_0) (walkable p12_1) (walkable p12_2) (walkable p12_4) (walkable p-1_5) (walkable p-1_6) (walkable p12_6) (walkable p-1_7)
        
        (walkable p1_0) (walkable p9_0) (walkable p11_0) (walkable p2_1) (walkable p7_2) (walkable p9_2) (walkable p4_3) (walkable p1_4) (walkable p4_4) (walkable p6_5) (walkable p7_5) (walkable p10_5) (walkable p1_6) (walkable p10_6) (walkable p0_7) (walkable p4_7) (walkable p10_7)
        
        
        (is_same_line p1_0 p2_0) (is_same_line p1_0 p4_0) (is_same_line p1_0 p5_0) (is_same_line p1_0 p6_0) (is_same_line p1_0 p8_0) (is_same_line p1_0 p9_0) (is_same_line p1_0 p11_0) (is_same_line p1_0 p1_2) (is_same_line p1_0 p1_4) (is_same_line p1_0 p1_6) (is_same_line p1_0 p1_-1) (is_same_line p1_0 p12_0) (is_same_line p2_0 p1_0) (is_same_line p2_0 p4_0) (is_same_line p2_0 p5_0) (is_same_line p2_0 p6_0) (is_same_line p2_0 p8_0) (is_same_line p2_0 p9_0) (is_same_line p2_0 p11_0) (is_same_line p2_0 p2_1) (is_same_line p2_0 p2_2) (is_same_line p2_0 p2_4) (is_same_line p2_0 p2_-1) (is_same_line p2_0 p12_0) (is_same_line p4_0 p1_0) (is_same_line p4_0 p2_0) (is_same_line p4_0 p5_0) (is_same_line p4_0 p6_0) (is_same_line p4_0 p8_0) (is_same_line p4_0 p9_0) (is_same_line p4_0 p11_0) (is_same_line p4_0 p4_2) (is_same_line p4_0 p4_3) (is_same_line p4_0 p4_4) (is_same_line p4_0 p4_6) (is_same_line p4_0 p4_7) (is_same_line p4_0 p4_-1) (is_same_line p4_0 p4_8) (is_same_line p4_0 p12_0) (is_same_line p5_0 p1_0) (is_same_line p5_0 p2_0) (is_same_line p5_0 p4_0) (is_same_line p5_0 p6_0) (is_same_line p5_0 p8_0) (is_same_line p5_0 p9_0) (is_same_line p5_0 p11_0) (is_same_line p5_0 p5_1) (is_same_line p5_0 p5_2) (is_same_line p5_0 p5_5) (is_same_line p5_0 p5_6) (is_same_line p5_0 p5_-1) (is_same_line p5_0 p12_0) (is_same_line p6_0 p1_0) (is_same_line p6_0 p2_0) (is_same_line p6_0 p4_0) (is_same_line p6_0 p5_0) (is_same_line p6_0 p8_0) (is_same_line p6_0 p9_0) (is_same_line p6_0 p11_0) (is_same_line p6_0 p6_2) (is_same_line p6_0 p6_3) (is_same_line p6_0 p6_5) (is_same_line p6_0 p6_6) (is_same_line p6_0 p6_7) (is_same_line p6_0 p6_-1) (is_same_line p6_0 p6_8) (is_same_line p6_0 p12_0) (is_same_line p8_0 p1_0) (is_same_line p8_0 p2_0) (is_same_line p8_0 p4_0) (is_same_line p8_0 p5_0) (is_same_line p8_0 p6_0) (is_same_line p8_0 p9_0) (is_same_line p8_0 p11_0) (is_same_line p8_0 p8_3) (is_same_line p8_0 p8_5) (is_same_line p8_0 p8_6) (is_same_line p8_0 p8_-1) (is_same_line p8_0 p12_0) (is_same_line p9_0 p1_0) (is_same_line p9_0 p2_0) (is_same_line p9_0 p4_0) (is_same_line p9_0 p5_0) (is_same_line p9_0 p6_0) (is_same_line p9_0 p8_0) (is_same_line p9_0 p11_0) (is_same_line p9_0 p9_1) (is_same_line p9_0 p9_2) (is_same_line p9_0 p9_4) (is_same_line p9_0 p9_7) (is_same_line p9_0 p9_-1) (is_same_line p9_0 p9_8) (is_same_line p9_0 p12_0) (is_same_line p11_0 p1_0) (is_same_line p11_0 p2_0) (is_same_line p11_0 p4_0) (is_same_line p11_0 p5_0) (is_same_line p11_0 p6_0) (is_same_line p11_0 p8_0) (is_same_line p11_0 p9_0) (is_same_line p11_0 p11_1) (is_same_line p11_0 p11_2) (is_same_line p11_0 p11_4) (is_same_line p11_0 p11_6) (is_same_line p11_0 p11_-1) (is_same_line p11_0 p12_0) (is_same_line p2_1 p2_0) (is_same_line p2_1 p5_1) (is_same_line p2_1 p9_1) (is_same_line p2_1 p10_1) (is_same_line p2_1 p11_1) (is_same_line p2_1 p2_2) (is_same_line p2_1 p2_4) (is_same_line p2_1 p2_-1) (is_same_line p2_1 p12_1) (is_same_line p5_1 p5_0) (is_same_line p5_1 p2_1) (is_same_line p5_1 p9_1) (is_same_line p5_1 p10_1) (is_same_line p5_1 p11_1) (is_same_line p5_1 p5_2) (is_same_line p5_1 p5_5) (is_same_line p5_1 p5_6) (is_same_line p5_1 p5_-1) (is_same_line p5_1 p12_1) (is_same_line p9_1 p9_0) (is_same_line p9_1 p2_1) (is_same_line p9_1 p5_1) (is_same_line p9_1 p10_1) (is_same_line p9_1 p11_1) (is_same_line p9_1 p9_2) (is_same_line p9_1 p9_4) (is_same_line p9_1 p9_7) (is_same_line p9_1 p9_-1) (is_same_line p9_1 p9_8) (is_same_line p9_1 p12_1) (is_same_line p10_1 p2_1) (is_same_line p10_1 p5_1) (is_same_line p10_1 p9_1) (is_same_line p10_1 p11_1) (is_same_line p10_1 p10_2) (is_same_line p10_1 p10_5) (is_same_line p10_1 p10_6) (is_same_line p10_1 p10_7) (is_same_line p10_1 p10_8) (is_same_line p10_1 p12_1) (is_same_line p11_1 p11_0) (is_same_line p11_1 p2_1) (is_same_line p11_1 p5_1) (is_same_line p11_1 p9_1) (is_same_line p11_1 p10_1) (is_same_line p11_1 p11_2) (is_same_line p11_1 p11_4) (is_same_line p11_1 p11_6) (is_same_line p11_1 p11_-1) (is_same_line p11_1 p12_1) (is_same_line p1_2 p1_0) (is_same_line p1_2 p2_2) (is_same_line p1_2 p3_2) (is_same_line p1_2 p4_2) (is_same_line p1_2 p5_2) (is_same_line p1_2 p6_2) (is_same_line p1_2 p7_2) (is_same_line p1_2 p9_2) (is_same_line p1_2 p10_2) (is_same_line p1_2 p11_2) (is_same_line p1_2 p1_4) (is_same_line p1_2 p1_6) (is_same_line p1_2 p1_-1) (is_same_line p1_2 p12_2) (is_same_line p2_2 p2_0) (is_same_line p2_2 p2_1) (is_same_line p2_2 p1_2) (is_same_line p2_2 p3_2) (is_same_line p2_2 p4_2) (is_same_line p2_2 p5_2) (is_same_line p2_2 p6_2) (is_same_line p2_2 p7_2) (is_same_line p2_2 p9_2) (is_same_line p2_2 p10_2) (is_same_line p2_2 p11_2) (is_same_line p2_2 p2_4) (is_same_line p2_2 p2_-1) (is_same_line p2_2 p12_2) (is_same_line p3_2 p1_2) (is_same_line p3_2 p2_2) (is_same_line p3_2 p4_2) (is_same_line p3_2 p5_2) (is_same_line p3_2 p6_2) (is_same_line p3_2 p7_2) (is_same_line p3_2 p9_2) (is_same_line p3_2 p10_2) (is_same_line p3_2 p11_2) (is_same_line p3_2 p3_3) (is_same_line p3_2 p3_4) (is_same_line p3_2 p3_6) (is_same_line p3_2 p3_7) (is_same_line p3_2 p3_8) (is_same_line p3_2 p12_2) (is_same_line p4_2 p4_0) (is_same_line p4_2 p1_2) (is_same_line p4_2 p2_2) (is_same_line p4_2 p3_2) (is_same_line p4_2 p5_2) (is_same_line p4_2 p6_2) (is_same_line p4_2 p7_2) (is_same_line p4_2 p9_2) (is_same_line p4_2 p10_2) (is_same_line p4_2 p11_2) (is_same_line p4_2 p4_3) (is_same_line p4_2 p4_4) (is_same_line p4_2 p4_6) (is_same_line p4_2 p4_7) (is_same_line p4_2 p4_-1) (is_same_line p4_2 p4_8) (is_same_line p4_2 p12_2) (is_same_line p5_2 p5_0) (is_same_line p5_2 p5_1) (is_same_line p5_2 p1_2) (is_same_line p5_2 p2_2) (is_same_line p5_2 p3_2) (is_same_line p5_2 p4_2) (is_same_line p5_2 p6_2) (is_same_line p5_2 p7_2) (is_same_line p5_2 p9_2) (is_same_line p5_2 p10_2) (is_same_line p5_2 p11_2) (is_same_line p5_2 p5_5) (is_same_line p5_2 p5_6) (is_same_line p5_2 p5_-1) (is_same_line p5_2 p12_2) (is_same_line p6_2 p6_0) (is_same_line p6_2 p1_2) (is_same_line p6_2 p2_2) (is_same_line p6_2 p3_2) (is_same_line p6_2 p4_2) (is_same_line p6_2 p5_2) (is_same_line p6_2 p7_2) (is_same_line p6_2 p9_2) (is_same_line p6_2 p10_2) (is_same_line p6_2 p11_2) (is_same_line p6_2 p6_3) (is_same_line p6_2 p6_5) (is_same_line p6_2 p6_6) (is_same_line p6_2 p6_7) (is_same_line p6_2 p6_-1) (is_same_line p6_2 p6_8) (is_same_line p6_2 p12_2) (is_same_line p7_2 p1_2) (is_same_line p7_2 p2_2) (is_same_line p7_2 p3_2) (is_same_line p7_2 p4_2) (is_same_line p7_2 p5_2) (is_same_line p7_2 p6_2) (is_same_line p7_2 p9_2) (is_same_line p7_2 p10_2) (is_same_line p7_2 p11_2) (is_same_line p7_2 p7_3) (is_same_line p7_2 p7_4) (is_same_line p7_2 p7_5) (is_same_line p7_2 p7_6) (is_same_line p7_2 p12_2) (is_same_line p9_2 p9_0) (is_same_line p9_2 p9_1) (is_same_line p9_2 p1_2) (is_same_line p9_2 p2_2) (is_same_line p9_2 p3_2) (is_same_line p9_2 p4_2) (is_same_line p9_2 p5_2) (is_same_line p9_2 p6_2) (is_same_line p9_2 p7_2) (is_same_line p9_2 p10_2) (is_same_line p9_2 p11_2) (is_same_line p9_2 p9_4) (is_same_line p9_2 p9_7) (is_same_line p9_2 p9_-1) (is_same_line p9_2 p9_8) (is_same_line p9_2 p12_2) (is_same_line p10_2 p10_1) (is_same_line p10_2 p1_2) (is_same_line p10_2 p2_2) (is_same_line p10_2 p3_2) (is_same_line p10_2 p4_2) (is_same_line p10_2 p5_2) (is_same_line p10_2 p6_2) (is_same_line p10_2 p7_2) (is_same_line p10_2 p9_2) (is_same_line p10_2 p11_2) (is_same_line p10_2 p10_5) (is_same_line p10_2 p10_6) (is_same_line p10_2 p10_7) (is_same_line p10_2 p10_8) (is_same_line p10_2 p12_2) (is_same_line p11_2 p11_0) (is_same_line p11_2 p11_1) (is_same_line p11_2 p1_2) (is_same_line p11_2 p2_2) (is_same_line p11_2 p3_2) (is_same_line p11_2 p4_2) (is_same_line p11_2 p5_2) (is_same_line p11_2 p6_2) (is_same_line p11_2 p7_2) (is_same_line p11_2 p9_2) (is_same_line p11_2 p10_2) (is_same_line p11_2 p11_4) (is_same_line p11_2 p11_6) (is_same_line p11_2 p11_-1) (is_same_line p11_2 p12_2) (is_same_line p3_3 p3_2) (is_same_line p3_3 p4_3) (is_same_line p3_3 p6_3) (is_same_line p3_3 p7_3) (is_same_line p3_3 p8_3) (is_same_line p3_3 p3_4) (is_same_line p3_3 p3_6) (is_same_line p3_3 p3_7) (is_same_line p3_3 p3_8) (is_same_line p4_3 p4_0) (is_same_line p4_3 p4_2) (is_same_line p4_3 p3_3) (is_same_line p4_3 p6_3) (is_same_line p4_3 p7_3) (is_same_line p4_3 p8_3) (is_same_line p4_3 p4_4) (is_same_line p4_3 p4_6) (is_same_line p4_3 p4_7) (is_same_line p4_3 p4_-1) (is_same_line p4_3 p4_8) (is_same_line p6_3 p6_0) (is_same_line p6_3 p6_2) (is_same_line p6_3 p3_3) (is_same_line p6_3 p4_3) (is_same_line p6_3 p7_3) (is_same_line p6_3 p8_3) (is_same_line p6_3 p6_5) (is_same_line p6_3 p6_6) (is_same_line p6_3 p6_7) (is_same_line p6_3 p6_-1) (is_same_line p6_3 p6_8) (is_same_line p7_3 p7_2) (is_same_line p7_3 p3_3) (is_same_line p7_3 p4_3) (is_same_line p7_3 p6_3) (is_same_line p7_3 p8_3) (is_same_line p7_3 p7_4) (is_same_line p7_3 p7_5) (is_same_line p7_3 p7_6) (is_same_line p8_3 p8_0) (is_same_line p8_3 p3_3) (is_same_line p8_3 p4_3) (is_same_line p8_3 p6_3) (is_same_line p8_3 p7_3) (is_same_line p8_3 p8_5) (is_same_line p8_3 p8_6) (is_same_line p8_3 p8_-1) (is_same_line p1_4 p1_0) (is_same_line p1_4 p1_2) (is_same_line p1_4 p2_4) (is_same_line p1_4 p3_4) (is_same_line p1_4 p4_4) (is_same_line p1_4 p7_4) (is_same_line p1_4 p9_4) (is_same_line p1_4 p11_4) (is_same_line p1_4 p1_6) (is_same_line p1_4 p1_-1) (is_same_line p1_4 p12_4) (is_same_line p2_4 p2_0) (is_same_line p2_4 p2_1) (is_same_line p2_4 p2_2) (is_same_line p2_4 p1_4) (is_same_line p2_4 p3_4) (is_same_line p2_4 p4_4) (is_same_line p2_4 p7_4) (is_same_line p2_4 p9_4) (is_same_line p2_4 p11_4) (is_same_line p2_4 p2_-1) (is_same_line p2_4 p12_4) (is_same_line p3_4 p3_2) (is_same_line p3_4 p3_3) (is_same_line p3_4 p1_4) (is_same_line p3_4 p2_4) (is_same_line p3_4 p4_4) (is_same_line p3_4 p7_4) (is_same_line p3_4 p9_4) (is_same_line p3_4 p11_4) (is_same_line p3_4 p3_6) (is_same_line p3_4 p3_7) (is_same_line p3_4 p3_8) (is_same_line p3_4 p12_4) (is_same_line p4_4 p4_0) (is_same_line p4_4 p4_2) (is_same_line p4_4 p4_3) (is_same_line p4_4 p1_4) (is_same_line p4_4 p2_4) (is_same_line p4_4 p3_4) (is_same_line p4_4 p7_4) (is_same_line p4_4 p9_4) (is_same_line p4_4 p11_4) (is_same_line p4_4 p4_6) (is_same_line p4_4 p4_7) (is_same_line p4_4 p4_-1) (is_same_line p4_4 p4_8) (is_same_line p4_4 p12_4) (is_same_line p7_4 p7_2) (is_same_line p7_4 p7_3) (is_same_line p7_4 p1_4) (is_same_line p7_4 p2_4) (is_same_line p7_4 p3_4) (is_same_line p7_4 p4_4) (is_same_line p7_4 p9_4) (is_same_line p7_4 p11_4) (is_same_line p7_4 p7_5) (is_same_line p7_4 p7_6) (is_same_line p7_4 p12_4) (is_same_line p9_4 p9_0) (is_same_line p9_4 p9_1) (is_same_line p9_4 p9_2) (is_same_line p9_4 p1_4) (is_same_line p9_4 p2_4) (is_same_line p9_4 p3_4) (is_same_line p9_4 p4_4) (is_same_line p9_4 p7_4) (is_same_line p9_4 p11_4) (is_same_line p9_4 p9_7) (is_same_line p9_4 p9_-1) (is_same_line p9_4 p9_8) (is_same_line p9_4 p12_4) (is_same_line p11_4 p11_0) (is_same_line p11_4 p11_1) (is_same_line p11_4 p11_2) (is_same_line p11_4 p1_4) (is_same_line p11_4 p2_4) (is_same_line p11_4 p3_4) (is_same_line p11_4 p4_4) (is_same_line p11_4 p7_4) (is_same_line p11_4 p9_4) (is_same_line p11_4 p11_6) (is_same_line p11_4 p11_-1) (is_same_line p11_4 p12_4) (is_same_line p0_5 p5_5) (is_same_line p0_5 p6_5) (is_same_line p0_5 p7_5) (is_same_line p0_5 p8_5) (is_same_line p0_5 p10_5) (is_same_line p0_5 p0_6) (is_same_line p0_5 p0_7) (is_same_line p0_5 p0_8) (is_same_line p0_5 p-1_5) (is_same_line p5_5 p5_0) (is_same_line p5_5 p5_1) (is_same_line p5_5 p5_2) (is_same_line p5_5 p0_5) (is_same_line p5_5 p6_5) (is_same_line p5_5 p7_5) (is_same_line p5_5 p8_5) (is_same_line p5_5 p10_5) (is_same_line p5_5 p5_6) (is_same_line p5_5 p5_-1) (is_same_line p5_5 p-1_5) (is_same_line p6_5 p6_0) (is_same_line p6_5 p6_2) (is_same_line p6_5 p6_3) (is_same_line p6_5 p0_5) (is_same_line p6_5 p5_5) (is_same_line p6_5 p7_5) (is_same_line p6_5 p8_5) (is_same_line p6_5 p10_5) (is_same_line p6_5 p6_6) (is_same_line p6_5 p6_7) (is_same_line p6_5 p6_-1) (is_same_line p6_5 p6_8) (is_same_line p6_5 p-1_5) (is_same_line p7_5 p7_2) (is_same_line p7_5 p7_3) (is_same_line p7_5 p7_4) (is_same_line p7_5 p0_5) (is_same_line p7_5 p5_5) (is_same_line p7_5 p6_5) (is_same_line p7_5 p8_5) (is_same_line p7_5 p10_5) (is_same_line p7_5 p7_6) (is_same_line p7_5 p-1_5) (is_same_line p8_5 p8_0) (is_same_line p8_5 p8_3) (is_same_line p8_5 p0_5) (is_same_line p8_5 p5_5) (is_same_line p8_5 p6_5) (is_same_line p8_5 p7_5) (is_same_line p8_5 p10_5) (is_same_line p8_5 p8_6) (is_same_line p8_5 p8_-1) (is_same_line p8_5 p-1_5) (is_same_line p10_5 p10_1) (is_same_line p10_5 p10_2) (is_same_line p10_5 p0_5) (is_same_line p10_5 p5_5) (is_same_line p10_5 p6_5) (is_same_line p10_5 p7_5) (is_same_line p10_5 p8_5) (is_same_line p10_5 p10_6) (is_same_line p10_5 p10_7) (is_same_line p10_5 p10_8) (is_same_line p10_5 p-1_5) (is_same_line p0_6 p0_5) (is_same_line p0_6 p1_6) (is_same_line p0_6 p3_6) (is_same_line p0_6 p4_6) (is_same_line p0_6 p5_6) (is_same_line p0_6 p6_6) (is_same_line p0_6 p7_6) (is_same_line p0_6 p8_6) (is_same_line p0_6 p10_6) (is_same_line p0_6 p11_6) (is_same_line p0_6 p0_7) (is_same_line p0_6 p0_8) (is_same_line p0_6 p-1_6) (is_same_line p0_6 p12_6) (is_same_line p1_6 p1_0) (is_same_line p1_6 p1_2) (is_same_line p1_6 p1_4) (is_same_line p1_6 p0_6) (is_same_line p1_6 p3_6) (is_same_line p1_6 p4_6) (is_same_line p1_6 p5_6) (is_same_line p1_6 p6_6) (is_same_line p1_6 p7_6) (is_same_line p1_6 p8_6) (is_same_line p1_6 p10_6) (is_same_line p1_6 p11_6) (is_same_line p1_6 p1_-1) (is_same_line p1_6 p-1_6) (is_same_line p1_6 p12_6) (is_same_line p3_6 p3_2) (is_same_line p3_6 p3_3) (is_same_line p3_6 p3_4) (is_same_line p3_6 p0_6) (is_same_line p3_6 p1_6) (is_same_line p3_6 p4_6) (is_same_line p3_6 p5_6) (is_same_line p3_6 p6_6) (is_same_line p3_6 p7_6) (is_same_line p3_6 p8_6) (is_same_line p3_6 p10_6) (is_same_line p3_6 p11_6) (is_same_line p3_6 p3_7) (is_same_line p3_6 p3_8) (is_same_line p3_6 p-1_6) (is_same_line p3_6 p12_6) (is_same_line p4_6 p4_0) (is_same_line p4_6 p4_2) (is_same_line p4_6 p4_3) (is_same_line p4_6 p4_4) (is_same_line p4_6 p0_6) (is_same_line p4_6 p1_6) (is_same_line p4_6 p3_6) (is_same_line p4_6 p5_6) (is_same_line p4_6 p6_6) (is_same_line p4_6 p7_6) (is_same_line p4_6 p8_6) (is_same_line p4_6 p10_6) (is_same_line p4_6 p11_6) (is_same_line p4_6 p4_7) (is_same_line p4_6 p4_-1) (is_same_line p4_6 p4_8) (is_same_line p4_6 p-1_6) (is_same_line p4_6 p12_6) (is_same_line p5_6 p5_0) (is_same_line p5_6 p5_1) (is_same_line p5_6 p5_2) (is_same_line p5_6 p5_5) (is_same_line p5_6 p0_6) (is_same_line p5_6 p1_6) (is_same_line p5_6 p3_6) (is_same_line p5_6 p4_6) (is_same_line p5_6 p6_6) (is_same_line p5_6 p7_6) (is_same_line p5_6 p8_6) (is_same_line p5_6 p10_6) (is_same_line p5_6 p11_6) (is_same_line p5_6 p5_-1) (is_same_line p5_6 p-1_6) (is_same_line p5_6 p12_6) (is_same_line p6_6 p6_0) (is_same_line p6_6 p6_2) (is_same_line p6_6 p6_3) (is_same_line p6_6 p6_5) (is_same_line p6_6 p0_6) (is_same_line p6_6 p1_6) (is_same_line p6_6 p3_6) (is_same_line p6_6 p4_6) (is_same_line p6_6 p5_6) (is_same_line p6_6 p7_6) (is_same_line p6_6 p8_6) (is_same_line p6_6 p10_6) (is_same_line p6_6 p11_6) (is_same_line p6_6 p6_7) (is_same_line p6_6 p6_-1) (is_same_line p6_6 p6_8) (is_same_line p6_6 p-1_6) (is_same_line p6_6 p12_6) (is_same_line p7_6 p7_2) (is_same_line p7_6 p7_3) (is_same_line p7_6 p7_4) (is_same_line p7_6 p7_5) (is_same_line p7_6 p0_6) (is_same_line p7_6 p1_6) (is_same_line p7_6 p3_6) (is_same_line p7_6 p4_6) (is_same_line p7_6 p5_6) (is_same_line p7_6 p6_6) (is_same_line p7_6 p8_6) (is_same_line p7_6 p10_6) (is_same_line p7_6 p11_6) (is_same_line p7_6 p-1_6) (is_same_line p7_6 p12_6) (is_same_line p8_6 p8_0) (is_same_line p8_6 p8_3) (is_same_line p8_6 p8_5) (is_same_line p8_6 p0_6) (is_same_line p8_6 p1_6) (is_same_line p8_6 p3_6) (is_same_line p8_6 p4_6) (is_same_line p8_6 p5_6) (is_same_line p8_6 p6_6) (is_same_line p8_6 p7_6) (is_same_line p8_6 p10_6) (is_same_line p8_6 p11_6) (is_same_line p8_6 p8_-1) (is_same_line p8_6 p-1_6) (is_same_line p8_6 p12_6) (is_same_line p10_6 p10_1) (is_same_line p10_6 p10_2) (is_same_line p10_6 p10_5) (is_same_line p10_6 p0_6) (is_same_line p10_6 p1_6) (is_same_line p10_6 p3_6) (is_same_line p10_6 p4_6) (is_same_line p10_6 p5_6) (is_same_line p10_6 p6_6) (is_same_line p10_6 p7_6) (is_same_line p10_6 p8_6) (is_same_line p10_6 p11_6) (is_same_line p10_6 p10_7) (is_same_line p10_6 p10_8) (is_same_line p10_6 p-1_6) (is_same_line p10_6 p12_6) (is_same_line p11_6 p11_0) (is_same_line p11_6 p11_1) (is_same_line p11_6 p11_2) (is_same_line p11_6 p11_4) (is_same_line p11_6 p0_6) (is_same_line p11_6 p1_6) (is_same_line p11_6 p3_6) (is_same_line p11_6 p4_6) (is_same_line p11_6 p5_6) (is_same_line p11_6 p6_6) (is_same_line p11_6 p7_6) (is_same_line p11_6 p8_6) (is_same_line p11_6 p10_6) (is_same_line p11_6 p11_-1) (is_same_line p11_6 p-1_6) (is_same_line p11_6 p12_6) (is_same_line p0_7 p0_5) (is_same_line p0_7 p0_6) (is_same_line p0_7 p3_7) (is_same_line p0_7 p4_7) (is_same_line p0_7 p6_7) (is_same_line p0_7 p9_7) (is_same_line p0_7 p10_7) (is_same_line p0_7 p0_8) (is_same_line p0_7 p-1_7) (is_same_line p3_7 p3_2) (is_same_line p3_7 p3_3) (is_same_line p3_7 p3_4) (is_same_line p3_7 p3_6) (is_same_line p3_7 p0_7) (is_same_line p3_7 p4_7) (is_same_line p3_7 p6_7) (is_same_line p3_7 p9_7) (is_same_line p3_7 p10_7) (is_same_line p3_7 p3_8) (is_same_line p3_7 p-1_7) (is_same_line p4_7 p4_0) (is_same_line p4_7 p4_2) (is_same_line p4_7 p4_3) (is_same_line p4_7 p4_4) (is_same_line p4_7 p4_6) (is_same_line p4_7 p0_7) (is_same_line p4_7 p3_7) (is_same_line p4_7 p6_7) (is_same_line p4_7 p9_7) (is_same_line p4_7 p10_7) (is_same_line p4_7 p4_-1) (is_same_line p4_7 p4_8) (is_same_line p4_7 p-1_7) (is_same_line p6_7 p6_0) (is_same_line p6_7 p6_2) (is_same_line p6_7 p6_3) (is_same_line p6_7 p6_5) (is_same_line p6_7 p6_6) (is_same_line p6_7 p0_7) (is_same_line p6_7 p3_7) (is_same_line p6_7 p4_7) (is_same_line p6_7 p9_7) (is_same_line p6_7 p10_7) (is_same_line p6_7 p6_-1) (is_same_line p6_7 p6_8) (is_same_line p6_7 p-1_7) (is_same_line p9_7 p9_0) (is_same_line p9_7 p9_1) (is_same_line p9_7 p9_2) (is_same_line p9_7 p9_4) (is_same_line p9_7 p0_7) (is_same_line p9_7 p3_7) (is_same_line p9_7 p4_7) (is_same_line p9_7 p6_7) (is_same_line p9_7 p10_7) (is_same_line p9_7 p9_-1) (is_same_line p9_7 p9_8) (is_same_line p9_7 p-1_7) (is_same_line p10_7 p10_1) (is_same_line p10_7 p10_2) (is_same_line p10_7 p10_5) (is_same_line p10_7 p10_6) (is_same_line p10_7 p0_7) (is_same_line p10_7 p3_7) (is_same_line p10_7 p4_7) (is_same_line p10_7 p6_7) (is_same_line p10_7 p9_7) (is_same_line p10_7 p10_8) (is_same_line p10_7 p-1_7) (is_same_line p0_8 p0_5) (is_same_line p0_8 p0_6) (is_same_line p0_8 p0_7) (is_same_line p0_8 p3_8) (is_same_line p0_8 p4_8) (is_same_line p0_8 p6_8) (is_same_line p0_8 p9_8) (is_same_line p0_8 p10_8) (is_same_line p1_-1 p1_0) (is_same_line p1_-1 p1_2) (is_same_line p1_-1 p1_4) (is_same_line p1_-1 p1_6) (is_same_line p1_-1 p2_-1) (is_same_line p1_-1 p4_-1) (is_same_line p1_-1 p5_-1) (is_same_line p1_-1 p6_-1) (is_same_line p1_-1 p8_-1) (is_same_line p1_-1 p9_-1) (is_same_line p1_-1 p11_-1) (is_same_line p2_-1 p2_0) (is_same_line p2_-1 p2_1) (is_same_line p2_-1 p2_2) (is_same_line p2_-1 p2_4) (is_same_line p2_-1 p1_-1) (is_same_line p2_-1 p4_-1) (is_same_line p2_-1 p5_-1) (is_same_line p2_-1 p6_-1) (is_same_line p2_-1 p8_-1) (is_same_line p2_-1 p9_-1) (is_same_line p2_-1 p11_-1) (is_same_line p3_8 p3_2) (is_same_line p3_8 p3_3) (is_same_line p3_8 p3_4) (is_same_line p3_8 p3_6) (is_same_line p3_8 p3_7) (is_same_line p3_8 p0_8) (is_same_line p3_8 p4_8) (is_same_line p3_8 p6_8) (is_same_line p3_8 p9_8) (is_same_line p3_8 p10_8) (is_same_line p4_-1 p4_0) (is_same_line p4_-1 p4_2) (is_same_line p4_-1 p4_3) (is_same_line p4_-1 p4_4) (is_same_line p4_-1 p4_6) (is_same_line p4_-1 p4_7) (is_same_line p4_-1 p1_-1) (is_same_line p4_-1 p2_-1) (is_same_line p4_-1 p4_8) (is_same_line p4_-1 p5_-1) (is_same_line p4_-1 p6_-1) (is_same_line p4_-1 p8_-1) (is_same_line p4_-1 p9_-1) (is_same_line p4_-1 p11_-1) (is_same_line p4_8 p4_0) (is_same_line p4_8 p4_2) (is_same_line p4_8 p4_3) (is_same_line p4_8 p4_4) (is_same_line p4_8 p4_6) (is_same_line p4_8 p4_7) (is_same_line p4_8 p0_8) (is_same_line p4_8 p3_8) (is_same_line p4_8 p4_-1) (is_same_line p4_8 p6_8) (is_same_line p4_8 p9_8) (is_same_line p4_8 p10_8) (is_same_line p5_-1 p5_0) (is_same_line p5_-1 p5_1) (is_same_line p5_-1 p5_2) (is_same_line p5_-1 p5_5) (is_same_line p5_-1 p5_6) (is_same_line p5_-1 p1_-1) (is_same_line p5_-1 p2_-1) (is_same_line p5_-1 p4_-1) (is_same_line p5_-1 p6_-1) (is_same_line p5_-1 p8_-1) (is_same_line p5_-1 p9_-1) (is_same_line p5_-1 p11_-1) (is_same_line p6_-1 p6_0) (is_same_line p6_-1 p6_2) (is_same_line p6_-1 p6_3) (is_same_line p6_-1 p6_5) (is_same_line p6_-1 p6_6) (is_same_line p6_-1 p6_7) (is_same_line p6_-1 p1_-1) (is_same_line p6_-1 p2_-1) (is_same_line p6_-1 p4_-1) (is_same_line p6_-1 p5_-1) (is_same_line p6_-1 p6_8) (is_same_line p6_-1 p8_-1) (is_same_line p6_-1 p9_-1) (is_same_line p6_-1 p11_-1) (is_same_line p6_8 p6_0) (is_same_line p6_8 p6_2) (is_same_line p6_8 p6_3) (is_same_line p6_8 p6_5) (is_same_line p6_8 p6_6) (is_same_line p6_8 p6_7) (is_same_line p6_8 p0_8) (is_same_line p6_8 p3_8) (is_same_line p6_8 p4_8) (is_same_line p6_8 p6_-1) (is_same_line p6_8 p9_8) (is_same_line p6_8 p10_8) (is_same_line p8_-1 p8_0) (is_same_line p8_-1 p8_3) (is_same_line p8_-1 p8_5) (is_same_line p8_-1 p8_6) (is_same_line p8_-1 p1_-1) (is_same_line p8_-1 p2_-1) (is_same_line p8_-1 p4_-1) (is_same_line p8_-1 p5_-1) (is_same_line p8_-1 p6_-1) (is_same_line p8_-1 p9_-1) (is_same_line p8_-1 p11_-1) (is_same_line p9_-1 p9_0) (is_same_line p9_-1 p9_1) (is_same_line p9_-1 p9_2) (is_same_line p9_-1 p9_4) (is_same_line p9_-1 p9_7) (is_same_line p9_-1 p1_-1) (is_same_line p9_-1 p2_-1) (is_same_line p9_-1 p4_-1) (is_same_line p9_-1 p5_-1) (is_same_line p9_-1 p6_-1) (is_same_line p9_-1 p8_-1) (is_same_line p9_-1 p9_8) (is_same_line p9_-1 p11_-1) (is_same_line p9_8 p9_0) (is_same_line p9_8 p9_1) (is_same_line p9_8 p9_2) (is_same_line p9_8 p9_4) (is_same_line p9_8 p9_7) (is_same_line p9_8 p0_8) (is_same_line p9_8 p3_8) (is_same_line p9_8 p4_8) (is_same_line p9_8 p6_8) (is_same_line p9_8 p9_-1) (is_same_line p9_8 p10_8) (is_same_line p10_8 p10_1) (is_same_line p10_8 p10_2) (is_same_line p10_8 p10_5) (is_same_line p10_8 p10_6) (is_same_line p10_8 p10_7) (is_same_line p10_8 p0_8) (is_same_line p10_8 p3_8) (is_same_line p10_8 p4_8) (is_same_line p10_8 p6_8) (is_same_line p10_8 p9_8) (is_same_line p11_-1 p11_0) (is_same_line p11_-1 p11_1) (is_same_line p11_-1 p11_2) (is_same_line p11_-1 p11_4) (is_same_line p11_-1 p11_6) (is_same_line p11_-1 p1_-1) (is_same_line p11_-1 p2_-1) (is_same_line p11_-1 p4_-1) (is_same_line p11_-1 p5_-1) (is_same_line p11_-1 p6_-1) (is_same_line p11_-1 p8_-1) (is_same_line p11_-1 p9_-1) (is_same_line p12_0 p1_0) (is_same_line p12_0 p2_0) (is_same_line p12_0 p4_0) (is_same_line p12_0 p5_0) (is_same_line p12_0 p6_0) (is_same_line p12_0 p8_0) (is_same_line p12_0 p9_0) (is_same_line p12_0 p11_0) (is_same_line p12_0 p12_1) (is_same_line p12_0 p12_2) (is_same_line p12_0 p12_4) (is_same_line p12_0 p12_6) (is_same_line p12_1 p2_1) (is_same_line p12_1 p5_1) (is_same_line p12_1 p9_1) (is_same_line p12_1 p10_1) (is_same_line p12_1 p11_1) (is_same_line p12_1 p12_0) (is_same_line p12_1 p12_2) (is_same_line p12_1 p12_4) (is_same_line p12_1 p12_6) (is_same_line p12_2 p1_2) (is_same_line p12_2 p2_2) (is_same_line p12_2 p3_2) (is_same_line p12_2 p4_2) (is_same_line p12_2 p5_2) (is_same_line p12_2 p6_2) (is_same_line p12_2 p7_2) (is_same_line p12_2 p9_2) (is_same_line p12_2 p10_2) (is_same_line p12_2 p11_2) (is_same_line p12_2 p12_0) (is_same_line p12_2 p12_1) (is_same_line p12_2 p12_4) (is_same_line p12_2 p12_6) (is_same_line p12_4 p1_4) (is_same_line p12_4 p2_4) (is_same_line p12_4 p3_4) (is_same_line p12_4 p4_4) (is_same_line p12_4 p7_4) (is_same_line p12_4 p9_4) (is_same_line p12_4 p11_4) (is_same_line p12_4 p12_0) (is_same_line p12_4 p12_1) (is_same_line p12_4 p12_2) (is_same_line p12_4 p12_6) (is_same_line p-1_5 p0_5) (is_same_line p-1_5 p5_5) (is_same_line p-1_5 p6_5) (is_same_line p-1_5 p7_5) (is_same_line p-1_5 p8_5) (is_same_line p-1_5 p10_5) (is_same_line p-1_5 p-1_6) (is_same_line p-1_5 p-1_7) (is_same_line p-1_6 p0_6) (is_same_line p-1_6 p1_6) (is_same_line p-1_6 p3_6) (is_same_line p-1_6 p4_6) (is_same_line p-1_6 p5_6) (is_same_line p-1_6 p6_6) (is_same_line p-1_6 p7_6) (is_same_line p-1_6 p8_6) (is_same_line p-1_6 p10_6) (is_same_line p-1_6 p11_6) (is_same_line p-1_6 p-1_5) (is_same_line p-1_6 p12_6) (is_same_line p-1_6 p-1_7) (is_same_line p12_6 p0_6) (is_same_line p12_6 p1_6) (is_same_line p12_6 p3_6) (is_same_line p12_6 p4_6) (is_same_line p12_6 p5_6) (is_same_line p12_6 p6_6) (is_same_line p12_6 p7_6) (is_same_line p12_6 p8_6) (is_same_line p12_6 p10_6) (is_same_line p12_6 p11_6) (is_same_line p12_6 p12_0) (is_same_line p12_6 p12_1) (is_same_line p12_6 p12_2) (is_same_line p12_6 p12_4) (is_same_line p12_6 p-1_6) (is_same_line p-1_7 p0_7) (is_same_line p-1_7 p3_7) (is_same_line p-1_7 p4_7) (is_same_line p-1_7 p6_7) (is_same_line p-1_7 p9_7) (is_same_line p-1_7 p10_7) (is_same_line p-1_7 p-1_5) (is_same_line p-1_7 p-1_6)
    )
    (:goal
        (or (agent-at p0_8) (agent-at p1_-1) (agent-at p2_-1) (agent-at p3_8) (agent-at p4_-1) (agent-at p4_8) (agent-at p5_-1) (agent-at p6_-1) (agent-at p6_8) (agent-at p8_-1) (agent-at p9_-1) (agent-at p9_8) (agent-at p10_8) (agent-at p11_-1) (agent-at p12_0) (agent-at p12_1) (agent-at p12_2) (agent-at p12_4) (agent-at p-1_5) (agent-at p-1_6) (agent-at p12_6) (agent-at p-1_7))
    )
)
