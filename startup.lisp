(setf sb-impl::*default-external-format* :utf-8)

(ql:quickload :swank) ;; we need this toplevel
(setf swank::*LOOPBACK-INTERFACE* "0.0.0.0")
(swank:create-server :port 4005 :dont-close t)
