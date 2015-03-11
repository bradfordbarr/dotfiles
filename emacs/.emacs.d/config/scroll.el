;; Fix the scrolling behavior for text based screen scrolling
(setq scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      mouse-wheel-progressive-speed t
      scroll-preserve-screen-position nil)

;; Fix the scrolling behavior for the trackpad
(setq mouse-wheel-follow-mouse t
      mouse-wheel-scroll-amount '(1 ((shift) . 1)) ; shift refers to the modifier
      mouse-wheel-progressive-speed nil)